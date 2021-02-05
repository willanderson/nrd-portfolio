-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 05, 2021 at 06:35 PM
-- Server version: 5.7.32
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `craftmamp`
--

-- --------------------------------------------------------

--
-- Table structure for table `assetindexdata`
--

CREATE TABLE `assetindexdata` (
  `id` int(11) NOT NULL,
  `sessionId` varchar(36) NOT NULL DEFAULT '',
  `volumeId` int(11) NOT NULL,
  `uri` text,
  `size` bigint(20) UNSIGNED DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `recordId` int(11) DEFAULT NULL,
  `inProgress` tinyint(1) DEFAULT '0',
  `completed` tinyint(1) DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `assets`
--

CREATE TABLE `assets` (
  `id` int(11) NOT NULL,
  `volumeId` int(11) DEFAULT NULL,
  `folderId` int(11) NOT NULL,
  `uploaderId` int(11) DEFAULT NULL,
  `filename` varchar(255) NOT NULL,
  `kind` varchar(50) NOT NULL DEFAULT 'unknown',
  `width` int(11) UNSIGNED DEFAULT NULL,
  `height` int(11) UNSIGNED DEFAULT NULL,
  `size` bigint(20) UNSIGNED DEFAULT NULL,
  `focalPoint` varchar(13) DEFAULT NULL,
  `deletedWithVolume` tinyint(1) DEFAULT NULL,
  `keptFile` tinyint(1) DEFAULT NULL,
  `dateModified` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `assets`
--

INSERT INTO `assets` (`id`, `volumeId`, `folderId`, `uploaderId`, `filename`, `kind`, `width`, `height`, `size`, `focalPoint`, `deletedWithVolume`, `keptFile`, `dateModified`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(9, 3, 3, 5, 'dr-clark-glaviano-21.jpg', 'image', 400, 267, 26268, NULL, NULL, NULL, '2021-01-31 19:25:07', '2021-01-31 19:25:07', '2021-01-31 19:25:07', '7825d846-d300-466a-8cdb-3bc21088c34f'),
(14, 3, 3, 5, '158b1ca0-d50b-4a3d-8d3f-f8840d516167-current.jpg', 'image', 415, 502, 65465, NULL, NULL, NULL, '2021-01-31 19:26:52', '2021-01-31 19:26:52', '2021-01-31 19:26:52', '324588f4-dee1-432a-9678-ac6bbe559db7'),
(24, 3, 3, 5, '979747899-1.webp', 'image', 1920, 1080, 20762, NULL, NULL, NULL, '2021-02-01 15:51:33', '2021-02-01 15:51:33', '2021-02-01 15:51:33', '1b8fc05f-3a7f-4b67-a52a-dca62a151d43'),
(30, 3, 3, 5, 'FungBrosThumbnail.jpg', 'image', 1200, 1500, 714214, NULL, NULL, NULL, '2021-02-01 21:12:05', '2021-02-01 21:12:05', '2021-02-01 21:12:05', 'c294e43c-483b-4fc9-9a93-8f158a69630a'),
(31, 3, 3, 5, 'BuddyThumbnail.jpg', 'image', 1200, 1500, 745219, NULL, NULL, NULL, '2021-02-01 21:12:08', '2021-02-01 21:12:09', '2021-02-01 21:12:09', 'eaa1b27e-275c-4438-a63c-0b9ac5395344'),
(32, 3, 3, 5, 'BDThumbNail.jpg', 'image', 1200, 1500, 572036, NULL, NULL, NULL, '2021-02-01 21:12:12', '2021-02-01 21:12:12', '2021-02-01 21:12:12', '36fed503-1874-4613-87cc-9556cef3b905'),
(33, 3, 3, 5, 'LaurenThumbnail.jpg', 'image', 1200, 1500, 632240, NULL, NULL, NULL, '2021-02-01 21:12:15', '2021-02-01 21:12:15', '2021-02-01 21:12:15', '9df089e3-4039-4e10-95ad-c1cb908484ef'),
(54, 3, 3, NULL, 'ATT-Lauren-Halsey-60.json', 'json', NULL, NULL, 2456, NULL, NULL, NULL, '2021-02-02 16:43:26', '2021-02-02 16:43:26', '2021-02-02 16:43:26', 'f500d7f7-6416-4809-9c32-170b4fc95207'),
(84, 3, 3, NULL, 'SAFE-AND-WELL.json', 'json', NULL, NULL, 2757, NULL, NULL, NULL, '2021-02-02 20:01:04', '2021-02-02 20:01:04', '2021-02-02 20:01:04', '4ec11306-8665-4376-9a13-ebd731ccb3d1'),
(86, 3, 3, 5, 'BuddyThumbnail_2021-02-02-210007.jpg', 'image', 1200, 1500, 745219, NULL, NULL, NULL, '2021-02-02 21:00:10', '2021-02-02 21:00:10', '2021-02-02 21:00:10', '2cb28fb6-da40-4d69-9cbb-24e82712d91d'),
(87, 3, 3, 5, 'BDThumbNail_2021-02-02-210015.jpg', 'image', 1200, 1500, 572036, NULL, NULL, NULL, '2021-02-02 21:00:17', '2021-02-02 21:00:17', '2021-02-02 21:00:17', '9ed2fb6a-5d5a-4abd-b9a6-a330f244a81e'),
(88, 3, 3, 5, 'LaurenThumbnail_2021-02-02-210027.jpg', 'image', 1200, 1500, 632240, NULL, NULL, NULL, '2021-02-02 21:00:29', '2021-02-02 21:00:30', '2021-02-02 21:00:30', '5a23fa9b-50c2-4bdf-8759-b84be641db97'),
(89, 3, 3, 5, 'FungBrosThumbnail_2021-02-02-210034.jpg', 'image', 1200, 1500, 714214, NULL, NULL, NULL, '2021-02-02 21:00:36', '2021-02-02 21:00:36', '2021-02-02 21:00:36', 'b2b19a92-cca5-4285-8d0e-81869e998eea'),
(111, 3, 3, NULL, 'Lauren_Halsey_213.json', 'json', NULL, NULL, 2397, NULL, NULL, NULL, '2021-02-02 22:14:46', '2021-02-02 22:14:46', '2021-02-02 22:14:46', '69898a5e-7a3d-46b3-89bf-4bad3bfbb6fc'),
(118, 3, 3, NULL, 'Bella_Dona_323.json', 'json', NULL, NULL, 2388, NULL, NULL, NULL, '2021-02-02 22:28:24', '2021-02-02 22:28:24', '2021-02-02 22:28:24', 'cd399c74-61bc-4d2d-a870-55d76e1e6eac'),
(119, 3, 3, NULL, 'Fung_Brothers_626.json', 'json', NULL, NULL, 2397, NULL, NULL, NULL, '2021-02-02 22:31:30', '2021-02-02 22:31:31', '2021-02-02 22:31:31', '57f29f7a-7ee7-436b-8e55-05cd0c19d991'),
(120, 3, 3, NULL, 'FUNG-BROTHERS-on-Instagram-“When-it-comes-to-conte.json', 'json', NULL, NULL, 4539, NULL, NULL, NULL, '2021-02-02 22:32:56', '2021-02-02 22:32:56', '2021-02-02 22:32:56', '0bf004a8-cbb8-4eaa-a505-e606a8aabf27'),
(281, 3, 3, NULL, 'My-Shoes-My-Way-Fall-2018.json', 'json', NULL, NULL, 2967, NULL, NULL, NULL, '2021-02-03 21:56:34', '2021-02-03 21:56:34', '2021-02-03 21:56:34', '445419e7-ac9c-42a3-ac67-6adefed7ac13'),
(319, 3, 3, NULL, 'SAFE-AND-WELL_2021-02-04-155626.json', 'json', NULL, NULL, 2757, NULL, NULL, NULL, '2021-02-04 15:56:26', '2021-02-04 15:56:26', '2021-02-04 15:56:26', '126a9003-55d4-4352-89cd-f9caee45c0b0'),
(332, 3, 3, 5, 'fc3f7892697313.5e5312d65880a-3.jpg', 'image', 1920, 1080, 1306676, NULL, NULL, NULL, '2021-02-04 17:31:41', '2021-02-04 17:31:41', '2021-02-04 17:31:41', '4a4a9300-0998-4fcc-8aec-1ab53d204007'),
(340, 3, 3, 5, '979747899-copy.jpg', 'image', 1440, 1077, 421623, NULL, NULL, NULL, '2021-02-04 18:23:04', '2021-02-04 18:23:04', '2021-02-04 18:23:04', '11b2f7a5-3d37-4c69-ba82-308d6fd169a1'),
(343, 3, 3, 5, 'maxresdefault.jpg', 'image', 1280, 720, 110466, NULL, NULL, NULL, '2021-02-04 18:24:36', '2021-02-04 18:24:36', '2021-02-04 18:24:36', 'c1005161-00df-4042-90c7-3e1b0ab17425');

-- --------------------------------------------------------

--
-- Table structure for table `assettransformindex`
--

CREATE TABLE `assettransformindex` (
  `id` int(11) NOT NULL,
  `assetId` int(11) NOT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `format` varchar(255) DEFAULT NULL,
  `location` varchar(255) NOT NULL,
  `volumeId` int(11) DEFAULT NULL,
  `fileExists` tinyint(1) NOT NULL DEFAULT '0',
  `inProgress` tinyint(1) NOT NULL DEFAULT '0',
  `error` tinyint(1) NOT NULL DEFAULT '0',
  `dateIndexed` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `assettransforms`
--

CREATE TABLE `assettransforms` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `mode` enum('stretch','fit','crop') NOT NULL DEFAULT 'crop',
  `position` enum('top-left','top-center','top-right','center-left','center-center','center-right','bottom-left','bottom-center','bottom-right') NOT NULL DEFAULT 'center-center',
  `width` int(11) UNSIGNED DEFAULT NULL,
  `height` int(11) UNSIGNED DEFAULT NULL,
  `format` varchar(255) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `interlace` enum('none','line','plane','partition') NOT NULL DEFAULT 'none',
  `dimensionChangeTime` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `parentId` int(11) DEFAULT NULL,
  `deletedWithGroup` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `groupId`, `parentId`, `deletedWithGroup`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(8, 1, NULL, 0, '2021-01-31 19:24:44', '2021-01-31 19:24:44', 'a8429e40-9d73-4ec5-a250-d7805d299b97'),
(13, 1, NULL, 0, '2021-01-31 19:26:18', '2021-01-31 19:26:18', '504c2a3b-f99d-47d5-8e96-fecfd4406db7'),
(47, 1, NULL, 1, '2021-02-01 21:31:13', '2021-02-01 21:31:13', '0d92a3ed-4de8-46c9-b055-934b970c3482'),
(48, 1, NULL, 1, '2021-02-01 21:31:21', '2021-02-01 21:31:21', '07df14e4-fffb-43f8-aa37-964da67bd4d1'),
(49, 1, NULL, 1, '2021-02-01 21:31:28', '2021-02-01 21:31:28', 'edc9d0be-30e8-45c1-abfd-a1076b267a21'),
(291, 2, NULL, NULL, '2021-02-04 15:42:35', '2021-02-04 15:42:35', '83a77a7f-36a8-4598-a3c0-abef1a02b894'),
(300, 2, NULL, NULL, '2021-02-04 15:43:11', '2021-02-04 15:43:11', 'c16ca56e-c23c-45df-b1b8-b4d44fd79b5d'),
(301, 2, NULL, NULL, '2021-02-04 15:43:20', '2021-02-04 15:43:20', 'e971ac0a-c5c9-4caf-8e0d-ccbe5a497436');

-- --------------------------------------------------------

--
-- Table structure for table `categorygroups`
--

CREATE TABLE `categorygroups` (
  `id` int(11) NOT NULL,
  `structureId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categorygroups`
--

INSERT INTO `categorygroups` (`id`, `structureId`, `fieldLayoutId`, `name`, `handle`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 1, 4, 'Medium', 'medium', '2021-01-30 17:04:53', '2021-02-01 21:36:49', '2021-02-02 15:34:28', '246403c9-d2b5-4039-a1e7-7d8bc803affe'),
(2, 2, 18, 'Role', 'role', '2021-02-04 15:39:59', '2021-02-04 15:39:59', NULL, 'c40b2bfd-2b3c-4d7a-8973-92eca28355a3');

-- --------------------------------------------------------

--
-- Table structure for table `categorygroups_sites`
--

CREATE TABLE `categorygroups_sites` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `hasUrls` tinyint(1) NOT NULL DEFAULT '1',
  `uriFormat` text,
  `template` varchar(500) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categorygroups_sites`
--

INSERT INTO `categorygroups_sites` (`id`, `groupId`, `siteId`, `hasUrls`, `uriFormat`, `template`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 1, 1, '{parent.uri}/{slug}', 'editorial/_publication', '2021-01-30 17:04:53', '2021-01-30 17:04:53', '5aded8ea-c400-4c6a-adf4-66599c588274'),
(2, 2, 1, 1, 'work/{slug}', 'work/_entry', '2021-02-04 15:39:59', '2021-02-04 21:25:46', 'eae118b0-81bd-4082-9574-494776854381');

-- --------------------------------------------------------

--
-- Table structure for table `changedattributes`
--

CREATE TABLE `changedattributes` (
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `attribute` varchar(255) NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `propagated` tinyint(1) NOT NULL,
  `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `changedattributes`
--

INSERT INTO `changedattributes` (`elementId`, `siteId`, `attribute`, `dateUpdated`, `propagated`, `userId`) VALUES
(10, 1, 'uri', '2021-02-02 15:29:10', 0, 5),
(15, 1, 'uri', '2021-02-02 15:29:10', 0, 5),
(27, 1, 'title', '2021-02-02 22:11:02', 0, 5),
(27, 1, 'uri', '2021-02-04 21:41:13', 0, 5),
(283, 1, 'uri', '2021-02-04 21:41:13', 0, 5),
(321, 1, 'uri', '2021-02-04 21:41:12', 0, 5),
(328, 1, 'uri', '2021-02-04 21:41:12', 0, 5);

-- --------------------------------------------------------

--
-- Table structure for table `changedfields`
--

CREATE TABLE `changedfields` (
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `propagated` tinyint(1) NOT NULL,
  `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `changedfields`
--

INSERT INTO `changedfields` (`elementId`, `siteId`, `fieldId`, `dateUpdated`, `propagated`, `userId`) VALUES
(1, 1, 3, '2021-02-01 15:14:33', 0, 5),
(3, 1, 14, '2021-02-04 20:30:05', 0, 5),
(10, 1, 21, '2021-02-02 15:29:10', 0, 5),
(10, 1, 25, '2021-02-02 15:29:10', 0, 5),
(15, 1, 21, '2021-02-02 15:29:10', 0, 5),
(15, 1, 25, '2021-02-02 15:29:10', 0, 5),
(27, 1, 21, '2021-02-04 21:41:13', 0, 5),
(27, 1, 25, '2021-02-04 21:41:13', 0, 5),
(27, 1, 32, '2021-02-04 21:41:13', 0, 5),
(27, 1, 44, '2021-02-04 21:41:13', 0, 5),
(27, 1, 45, '2021-02-04 21:41:13', 0, 5),
(27, 1, 46, '2021-02-04 21:41:13', 0, 5),
(27, 1, 47, '2021-02-04 21:41:13', 0, 5),
(27, 1, 48, '2021-02-04 21:41:13', 0, 5),
(283, 1, 21, '2021-02-04 21:41:13', 0, 5),
(283, 1, 25, '2021-02-04 21:41:13', 0, 5),
(283, 1, 32, '2021-02-04 21:41:13', 0, 5),
(283, 1, 44, '2021-02-04 21:41:13', 0, 5),
(283, 1, 45, '2021-02-04 21:41:13', 0, 5),
(283, 1, 46, '2021-02-04 21:41:13', 0, 5),
(283, 1, 47, '2021-02-04 21:41:13', 0, 5),
(283, 1, 48, '2021-02-04 21:41:13', 0, 5),
(321, 1, 21, '2021-02-04 21:41:12', 0, 5),
(321, 1, 25, '2021-02-04 21:41:12', 0, 5),
(321, 1, 32, '2021-02-04 21:41:12', 0, 5),
(321, 1, 44, '2021-02-04 21:41:12', 0, 5),
(321, 1, 45, '2021-02-04 21:41:12', 0, 5),
(321, 1, 46, '2021-02-04 21:41:12', 0, 5),
(321, 1, 47, '2021-02-04 21:41:12', 0, 5),
(321, 1, 48, '2021-02-04 21:41:12', 0, 5),
(328, 1, 21, '2021-02-04 21:41:12', 0, 5),
(328, 1, 25, '2021-02-04 21:41:12', 0, 5),
(328, 1, 32, '2021-02-04 21:41:12', 0, 5),
(328, 1, 44, '2021-02-04 21:41:12', 0, 5),
(328, 1, 45, '2021-02-04 21:41:12', 0, 5),
(328, 1, 46, '2021-02-04 21:41:12', 0, 5),
(328, 1, 47, '2021-02-04 21:41:12', 0, 5),
(328, 1, 48, '2021-02-04 21:41:12', 0, 5);

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `id` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  `field_siteIntro` text,
  `field_siteTitle` varchar(120) DEFAULT NULL,
  `field_paragraph` text,
  `field_credits` text,
  `field_client` text,
  `field_date` datetime DEFAULT NULL,
  `field_description` text,
  `field_externalLink` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`id`, `elementId`, `siteId`, `title`, `dateCreated`, `dateUpdated`, `uid`, `field_siteIntro`, `field_siteTitle`, `field_paragraph`, `field_credits`, `field_client`, `field_date`, `field_description`, `field_externalLink`) VALUES
(1, 1, 1, 'Home', '2021-01-30 17:04:54', '2021-02-01 15:14:32', '4c293c66-754c-410a-8f65-d16b26877e7a', 'Writing/Directing in Brooklyn, NY.', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 2, 1, 'Home', '2021-01-30 17:04:54', '2021-01-30 17:04:54', '4d43bc80-fc3c-49e0-9106-fefbc46d5e14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 3, 1, 'Contact', '2021-01-30 17:04:54', '2021-02-04 20:30:05', '9103ba49-592d-4ed3-b704-483aa0aeb389', NULL, NULL, '<p>Hello my name is Nora Deligter!</p>', NULL, NULL, NULL, NULL, NULL),
(4, 4, 1, 'Contact', '2021-01-30 17:04:54', '2021-01-30 17:04:54', '1cd33e36-d6b1-465c-a9ad-cbe15a85cfc6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 5, 1, NULL, '2021-01-30 17:04:55', '2021-02-01 15:12:43', '621166f7-bc04-4042-b6e5-cdee193acc92', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 6, 1, 'Contact', '2021-01-30 17:07:27', '2021-01-30 17:07:27', '54e259de-5589-4961-aab2-d4cf1e3f0309', NULL, NULL, '<p>Hello my name is Nora Deligter</p>', NULL, NULL, NULL, NULL, NULL),
(8, 8, 1, 'Vogue', '2021-01-31 19:24:44', '2021-01-31 19:24:44', '05baf0ed-b4f9-429d-a4a4-5c881acbc01e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 9, 1, 'Dr clark glaviano 21', '2021-01-31 19:25:07', '2021-01-31 19:25:07', 'd1c2ec13-dda8-432a-a639-6c3fefb0a835', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 10, 1, 'A First Look Inside Dr. Clark, the New Chinatown Restaurant With Interiors from Green River Project and Uniforms by Bode', '2021-01-31 19:25:13', '2021-02-02 15:36:51', 'df9f8d61-ea55-41dc-9cb9-780ebcabc0dc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 11, 1, 'A First Look Inside Dr. Clark, the New Chinatown Restaurant With Interiors from Green River Project and Uniforms by Bode', '2021-01-31 19:25:13', '2021-01-31 19:25:13', '87ddd5f0-b63f-45c5-825b-a733a907b2fd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 13, 1, 'Mic', '2021-01-31 19:26:18', '2021-01-31 19:26:18', 'a2df4ab1-0b73-40b3-8c0a-9297154c7711', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 14, 1, '158b1ca0 d50b 4a3d 8d3f f8840d516167 current', '2021-01-31 19:26:52', '2021-01-31 19:26:52', 'd9b1f643-c1eb-45f1-ba6d-ffdd2f994eb4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 15, 1, 'The Danish political drama \'Borgen\' is a welcome contrast to Trumpism', '2021-01-31 19:26:55', '2021-02-02 15:36:44', '37a1359c-be32-4820-91d1-79d43c487998', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 16, 1, 'The Danish political drama \'Borgen\' is a welcome contrast to Trumpism', '2021-01-31 19:26:55', '2021-01-31 19:26:55', 'e236bae4-4dbd-4e7b-b34a-125b92eb2409', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 17, 1, 'Home', '2021-01-31 19:29:26', '2021-01-31 19:29:26', 'c773afd3-a94c-47c8-adaf-5bd40a61f5b3', '<p>Writing/Directing in Brooklyn, NY.</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 18, 1, 'Home', '2021-02-01 15:13:12', '2021-02-01 15:13:12', '3c1b7d1c-f090-45ac-a808-d9636e3eea99', '<p>Writing/Directing in Brooklyn, NY.</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 19, 1, 'Home', '2021-02-01 15:14:33', '2021-02-01 15:14:33', '1eae86b9-b387-4e21-ae63-be575e3310f3', 'Writing/Directing in Brooklyn, NY.', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 21, 1, 'SAFE AND WELL', '2021-02-01 15:47:20', '2021-02-02 20:01:19', 'de75b0d8-9c44-4d99-9c21-a64f6a365ab3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 22, 1, 'SAFE AND WELL', '2021-02-01 15:47:20', '2021-02-01 15:47:20', 'a7336a01-727e-42e7-9a87-8112e4ac4de5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 23, 1, 'SAFE AND WELL', '2021-02-01 15:47:44', '2021-02-01 15:47:44', 'd17b9832-b43c-448a-937f-292d27b49743', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 24, 1, '979747899 1', '2021-02-01 15:51:29', '2021-02-01 15:51:29', 'ac8df907-ec42-4891-8adf-7c34f38cfec2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 25, 1, 'SAFE AND WELL', '2021-02-01 15:51:39', '2021-02-01 15:51:39', 'fb1940b7-0acd-4416-9d33-3f537846651b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 27, 1, 'Codes of Culture Campaign', '2021-02-01 17:45:41', '2021-02-04 21:41:13', '3a8431f9-eff4-4e6a-9104-4ebf90cd273b', NULL, NULL, NULL, NULL, 'AT&T', NULL, NULL, ''),
(28, 28, 1, 'AT&T: Codes of Culture Campaign', '2021-02-01 17:45:41', '2021-02-01 17:45:41', 'b8e290b8-2bf5-49fb-85bd-82f420111923', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 29, 1, NULL, '2021-02-01 20:00:23', '2021-02-01 20:00:23', '7e4025e5-a787-4ee0-8f28-896e64d19ca5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 30, 1, 'Fung Bros Thumbnail', '2021-02-01 21:12:02', '2021-02-01 21:12:02', '6732a70c-343b-441e-b813-19390f45c45c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 31, 1, 'Buddy Thumbnail', '2021-02-01 21:12:06', '2021-02-01 21:12:06', '86f8b74e-2a3c-4e84-a037-2154de496d25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 32, 1, 'BD Thumb Nail', '2021-02-01 21:12:10', '2021-02-01 21:12:10', '7f5e7a6c-8db2-43e4-99f3-40743eec77bd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 33, 1, 'Lauren Thumbnail', '2021-02-01 21:12:13', '2021-02-01 21:12:13', '07cbe1d2-0827-4627-bb73-cd6b2547a431', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 39, 1, 'AT&T: Codes of Culture Campaign', '2021-02-01 21:14:54', '2021-02-01 21:14:54', 'cdf6355e-02a4-4bc8-844a-3e9535f147eb', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 45, 1, NULL, '2021-02-01 21:24:16', '2021-02-01 21:24:16', '8f4e1b36-2fa7-45e0-8fd2-354bbd7e6c09', NULL, NULL, NULL, '[{\"col1\":\"\",\"col2\":\"\"}]', NULL, NULL, NULL, NULL),
(36, 46, 1, NULL, '2021-02-01 21:30:21', '2021-02-01 21:30:21', 'fe21d71f-69a3-4743-9f2b-c8fe58066c07', NULL, NULL, NULL, '[{\"col1\":\"\",\"col2\":\"\"}]', NULL, NULL, NULL, NULL),
(37, 47, 1, 'Director', '2021-02-01 21:31:13', '2021-02-01 21:31:13', '8c4cc3bd-877c-4057-80bd-0728fb0e26bf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 48, 1, 'Editorial', '2021-02-01 21:31:21', '2021-02-01 21:31:21', '3756fafa-b91e-4fe0-8145-3ddee2435de0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, 49, 1, 'Agency', '2021-02-01 21:31:28', '2021-02-01 21:31:28', 'a3b8df1a-d9c0-4eee-b489-55f11f8d3499', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, 50, 1, NULL, '2021-02-01 21:38:57', '2021-02-01 21:38:57', '1cb415f5-b329-4516-bf46-0e5d992db2df', NULL, NULL, NULL, '[{\"col1\":\"\",\"col2\":\"\"}]', NULL, NULL, NULL, NULL),
(41, 51, 1, NULL, '2021-02-02 15:30:13', '2021-02-02 15:30:13', 'cea8de68-104a-4c95-8abc-d83361b45ad2', NULL, NULL, NULL, '[{\"col1\":\"\",\"col2\":\"\"}]', NULL, NULL, NULL, NULL),
(42, 52, 1, 'The Danish political drama \'Borgen\' is a welcome contrast to Trumpism', '2021-02-02 15:36:44', '2021-02-02 15:36:44', '3465d871-7c9b-410b-b71d-d92642870203', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, 53, 1, 'A First Look Inside Dr. Clark, the New Chinatown Restaurant With Interiors from Green River Project and Uniforms by Bode', '2021-02-02 15:36:51', '2021-02-02 15:36:51', 'd8bf2e00-33d4-48f8-8380-0281f8b23bf4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, 54, 1, 'AT&T \"Lauren Halsey\" :60', '2021-02-02 16:43:26', '2021-02-02 16:43:26', '16e20c78-5af3-44de-a345-7e4e257ce11c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, 56, 1, 'AT&T: Codes of Culture Campaign', '2021-02-02 16:44:05', '2021-02-02 16:44:05', '7fe21ab5-151a-4cc8-9aef-184a9b3c49bc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, 63, 1, 'AT&T: Codes of Culture Campaign', '2021-02-02 18:31:01', '2021-02-02 18:31:01', '4694f6b7-d672-4add-b456-5a90f5c3d5f4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, 69, 1, 'AT&T: Codes of Culture Campaign', '2021-02-02 18:31:21', '2021-02-02 18:31:21', '88ebe04e-75e3-4832-8ad5-9677396f94ec', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, 72, 1, 'AT&T: Codes of Culture Campaign', '2021-02-02 18:33:20', '2021-02-02 18:33:20', '3be2b6d0-b8ca-4c85-9c91-9a778621c33e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, 76, 1, 'AT&T: Codes of Culture Campaign', '2021-02-02 18:39:02', '2021-02-02 18:39:02', '283ccad4-b506-4b17-bdef-c573a3e9f0a2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, 80, 1, 'AT&T: Codes of Culture Campaign', '2021-02-02 19:59:34', '2021-02-02 19:59:34', '14745e43-0420-4ac1-947a-67cb172dde51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, 84, 1, 'SAFE AND WELL', '2021-02-02 20:01:04', '2021-02-02 20:01:04', 'd688581d-cb2b-44a5-8f72-9325beb90ae6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, 85, 1, 'SAFE AND WELL', '2021-02-02 20:01:19', '2021-02-02 20:01:19', '42cbe403-42c0-480e-aa29-3efd127db7f3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, 86, 1, 'Buddy Thumbnail', '2021-02-02 21:00:07', '2021-02-02 21:00:07', '66b46b0e-a0c5-4b4b-a179-65d254d8674b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, 87, 1, 'BD Thumb Nail', '2021-02-02 21:00:15', '2021-02-02 21:00:15', 'c41bf4fb-5fe6-4d93-a8b6-157822dff42e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(55, 88, 1, 'Lauren Thumbnail', '2021-02-02 21:00:27', '2021-02-02 21:00:27', '74387496-93d0-4e9d-a42e-39d39e369834', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, 89, 1, 'Fung Bros Thumbnail', '2021-02-02 21:00:34', '2021-02-02 21:00:34', '1680c9f2-e5af-416c-bf0a-0bc313ff5a89', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, 91, 1, 'AT&T: Codes of Culture Campaign', '2021-02-02 21:02:09', '2021-02-02 21:02:09', 'cc05b823-7d19-4451-b026-a6f983955ad4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, 95, 1, 'AT&T: Codes of Culture Campaign', '2021-02-02 22:07:18', '2021-02-02 22:07:18', '30d25bf1-203e-47c1-988b-16a415870cac', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, 99, 1, 'AT&T: Codes of Culture Campaign', '2021-02-02 22:09:34', '2021-02-02 22:09:34', '2b4568e3-de3d-4b31-b526-4e849818ddd1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, 103, 1, 'Codes of Culture Campaign', '2021-02-02 22:11:01', '2021-02-02 22:11:01', 'a8238d29-1b82-46ea-be27-82de9842b0ca', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, 107, 1, 'Codes of Culture Campaign', '2021-02-02 22:12:05', '2021-02-02 22:12:05', '151dce5e-4df1-4d08-bf86-2ad50a4c23b0', NULL, NULL, NULL, NULL, 'AT&T', NULL, NULL, NULL),
(62, 111, 1, 'Lauren_Halsey_213', '2021-02-02 22:14:46', '2021-02-02 22:14:46', '83b150d9-bfda-43a3-9778-cf385668915c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, 113, 1, 'Codes of Culture Campaign', '2021-02-02 22:14:57', '2021-02-02 22:14:57', '2693a306-3110-4d25-ac4e-0aba84e78314', NULL, NULL, NULL, NULL, 'AT&T', NULL, NULL, NULL),
(64, 118, 1, 'Bella_Dona_323', '2021-02-02 22:28:24', '2021-02-02 22:28:24', '89517875-1000-437e-921f-e5010380a8ea', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(65, 119, 1, 'Fung_Brothers_626', '2021-02-02 22:31:31', '2021-02-02 22:31:31', '3daf083f-7461-475e-8b7b-6ca1ca6bd98b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(66, 120, 1, 'FUNG BROTHERS on Instagram: “When it comes to', '2021-02-02 22:32:56', '2021-02-02 22:32:56', '5e72d8ab-8227-4677-8262-9c5866ba70d9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(67, 123, 1, 'Codes of Culture Campaign', '2021-02-02 22:33:05', '2021-02-02 22:33:05', '6412838b-5d3d-46da-a9dc-67f2635d8a86', NULL, NULL, NULL, NULL, 'AT&T', NULL, NULL, NULL),
(68, 129, 1, 'Codes of Culture Campaign', '2021-02-02 22:38:49', '2021-02-02 22:38:49', '985f5f22-56a8-448e-ac73-462d32325ec1', NULL, NULL, NULL, NULL, 'AT&T', NULL, NULL, NULL),
(69, 135, 1, 'Codes of Culture Campaign', '2021-02-02 22:45:48', '2021-02-02 22:45:48', 'e882b783-b548-4151-9dcd-30780859b9b0', NULL, NULL, NULL, NULL, 'AT&T', NULL, NULL, NULL),
(70, 142, 1, 'Codes of Culture Campaign', '2021-02-03 15:35:06', '2021-02-03 15:35:06', '7f986a51-6998-4108-b3fa-471e582b2018', NULL, NULL, NULL, NULL, 'AT&T', NULL, NULL, NULL),
(71, 150, 1, 'Codes of Culture Campaign', '2021-02-03 17:14:27', '2021-02-03 17:14:27', 'dcf8783e-971c-4a8d-8f48-714e5618758a', NULL, NULL, NULL, NULL, 'AT&T', NULL, NULL, NULL),
(72, 153, 1, 'Codes of Culture Campaign', '2021-02-03 17:33:23', '2021-02-03 17:33:23', '76276cbc-6d79-43e4-bda6-2677bbd28005', NULL, NULL, NULL, NULL, 'AT&T', NULL, NULL, NULL),
(73, 157, 1, 'Codes of Culture Campaign', '2021-02-03 17:43:07', '2021-02-03 17:43:07', '1572e8fd-bad5-42dd-b566-7adb7653b004', NULL, NULL, NULL, NULL, 'AT&T', NULL, NULL, NULL),
(74, 162, 1, 'Codes of Culture Campaign', '2021-02-03 17:44:12', '2021-02-03 17:44:12', '667b56b4-57a1-460c-9e17-dc011e7fc946', NULL, NULL, NULL, NULL, 'AT&T', NULL, NULL, NULL),
(75, 167, 1, 'Codes of Culture Campaign', '2021-02-03 17:45:24', '2021-02-03 17:45:24', 'f6dcdf2c-e886-4ca4-86d4-cb44fd5fa625', NULL, NULL, NULL, NULL, 'AT&T', NULL, NULL, NULL),
(76, 172, 1, 'Codes of Culture Campaign', '2021-02-03 18:14:21', '2021-02-03 18:14:21', '92f26dd2-13cd-4dd9-a1ba-f9aadb7e03d4', NULL, NULL, NULL, NULL, 'AT&T', NULL, NULL, NULL),
(77, 178, 1, 'Codes of Culture Campaign', '2021-02-03 18:20:26', '2021-02-03 18:20:26', 'd667d063-bfc4-4bc2-8ca7-a686cc9fd786', NULL, NULL, NULL, NULL, 'AT&T', NULL, NULL, NULL),
(78, 184, 1, 'Codes of Culture Campaign', '2021-02-03 19:01:22', '2021-02-03 19:01:22', '8762d177-a81e-4fec-a242-a06d60520abf', NULL, NULL, NULL, NULL, 'AT&T', NULL, NULL, NULL),
(79, 192, 1, 'Codes of Culture Campaign', '2021-02-03 19:03:20', '2021-02-03 19:03:20', 'e2ebba2a-4062-4d3d-925a-d3c0270cee9d', NULL, NULL, NULL, NULL, 'AT&T', NULL, NULL, NULL),
(80, 197, 1, 'Codes of Culture Campaign', '2021-02-03 19:08:10', '2021-02-03 19:08:10', 'e76bfc1d-5e0d-47e9-bd66-64df43a5263d', NULL, NULL, NULL, NULL, 'AT&T', NULL, NULL, NULL),
(81, 203, 1, 'Codes of Culture Campaign', '2021-02-03 19:10:09', '2021-02-03 19:10:09', 'cb2995f2-3266-4036-8166-03ad715fe769', NULL, NULL, NULL, NULL, 'AT&T', NULL, NULL, NULL),
(82, 210, 1, 'Codes of Culture Campaign', '2021-02-03 19:10:53', '2021-02-03 19:10:53', '31b515a3-844c-41e5-a2fd-8a2fde79fef4', NULL, NULL, NULL, NULL, 'AT&T', NULL, NULL, NULL),
(83, 217, 1, 'Codes of Culture Campaign', '2021-02-03 19:11:39', '2021-02-03 19:11:39', '6b329f99-31a9-424c-81d6-bc5daf2a9288', NULL, NULL, NULL, NULL, 'AT&T', NULL, NULL, NULL),
(84, 225, 1, 'Codes of Culture Campaign', '2021-02-03 19:15:29', '2021-02-03 19:15:29', '82de598f-96cd-4a53-959b-d86a6a234447', NULL, NULL, NULL, NULL, 'AT&T', NULL, NULL, NULL),
(85, 233, 1, 'Codes of Culture Campaign', '2021-02-03 19:49:45', '2021-02-03 19:49:45', '88653573-95db-4129-84a3-73abb522ef9f', NULL, NULL, NULL, NULL, 'AT&T', NULL, NULL, NULL),
(86, 241, 1, 'Codes of Culture Campaign', '2021-02-03 19:57:19', '2021-02-03 19:57:19', '253ac794-364e-4df7-929d-0682f38ec73e', NULL, NULL, NULL, NULL, 'AT&T', NULL, NULL, NULL),
(87, 249, 1, 'Codes of Culture Campaign', '2021-02-03 19:57:57', '2021-02-03 19:57:57', 'df30bde6-344f-4066-b478-7fca0233e1c7', NULL, NULL, NULL, NULL, 'AT&T', NULL, NULL, NULL),
(88, 258, 1, 'Codes of Culture Campaign', '2021-02-03 20:41:48', '2021-02-03 20:41:48', 'ed0e0e86-aea6-41d4-8429-ae56f8eb61e6', NULL, NULL, NULL, NULL, 'AT&T', NULL, NULL, NULL),
(89, 267, 1, 'Codes of Culture Campaign', '2021-02-03 20:42:20', '2021-02-03 20:42:20', '7a5ad49b-b76c-429e-b7d7-be27ef41c600', NULL, NULL, NULL, NULL, 'AT&T', NULL, NULL, NULL),
(90, 273, 1, 'Codes of Culture Campaign', '2021-02-03 20:43:23', '2021-02-03 20:43:23', 'e838df67-d655-4710-b606-64c2f9d762ac', NULL, NULL, NULL, NULL, 'AT&T', NULL, NULL, NULL),
(92, 281, 1, 'My Shoes. My Way. Fall 2018', '2021-02-03 21:56:34', '2021-02-03 21:56:34', '5d5d7ca6-ddde-479b-bb93-687bfea8f965', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(93, 283, 1, 'My Shoes. My Way.', '2021-02-03 21:56:44', '2021-02-04 21:41:13', 'e15f2236-7e3c-4c0e-aa36-2fc43d3756bf', NULL, NULL, NULL, '[{\"col1\":\"Agency\",\"col2\":\"Translation\"},{\"col1\":\"Creative Officer\",\"col2\":\"John Norman\"},{\"col1\":\"GCD\",\"col2\":\"Louis-Philippe Tremblay\"},{\"col1\":\"Director\",\"col2\":\"Randy Krallman\"},{\"col1\":\"Art Director\",\"col2\":\"Jack Graham\"},{\"col1\":\"Copywriter\",\"col2\":\"Nora Deligter\"}]', 'DSW', '2019-06-01 07:00:00', NULL, ''),
(94, 285, 1, 'My Shoes. My Way.', '2021-02-03 21:56:44', '2021-02-03 21:56:44', '5a63ebd8-6ec0-4998-917b-ff680cadade8', NULL, NULL, NULL, '[{\"col1\":\"\",\"col2\":\"\"}]', 'JBL', NULL, NULL, NULL),
(95, 287, 1, 'My Shoes. My Way.', '2021-02-04 14:51:36', '2021-02-04 14:51:36', 'ee7b6464-b194-44d1-830f-6bacf315df67', NULL, NULL, NULL, '[{\"col1\":\"Agency\",\"col2\":\"Translation\"},{\"col1\":\"Creative Officer\",\"col2\":\"John Norman\"},{\"col1\":\"GCD\",\"col2\":\"Louis-Philippe Tremblay\"},{\"col1\":\"Director\",\"col2\":\"Randy Krallman\"},{\"col1\":\"Art Director\",\"col2\":\"Jack Graham\"},{\"col1\":\"Copywriter\",\"col2\":\"Nora Deligter\"}]', 'JBL', NULL, NULL, NULL),
(96, 289, 1, 'My Shoes. My Way.', '2021-02-04 15:15:01', '2021-02-04 15:15:01', '651a2edd-2376-4092-b1fb-540243a88d52', NULL, NULL, NULL, '[{\"col1\":\"Agency\",\"col2\":\"Translation\"},{\"col1\":\"Creative Officer\",\"col2\":\"John Norman\"},{\"col1\":\"GCD\",\"col2\":\"Louis-Philippe Tremblay\"},{\"col1\":\"Director\",\"col2\":\"Randy Krallman\"},{\"col1\":\"Art Director\",\"col2\":\"Jack Graham\"},{\"col1\":\"Copywriter\",\"col2\":\"Nora Deligter\"}]', 'JBL', '2019-06-01 07:00:00', NULL, NULL),
(97, 291, 1, 'Copywriter', '2021-02-04 15:42:35', '2021-02-04 15:42:35', '8f682156-9dc4-4a92-b8a6-8b2c4c13bff9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(98, 292, 1, 'My Shoes. My Way.', '2021-02-04 15:42:40', '2021-02-04 15:42:40', 'a7b196a4-597b-452f-80ce-c5ab2dcea2ca', NULL, NULL, NULL, '[{\"col1\":\"Agency\",\"col2\":\"Translation\"},{\"col1\":\"Creative Officer\",\"col2\":\"John Norman\"},{\"col1\":\"GCD\",\"col2\":\"Louis-Philippe Tremblay\"},{\"col1\":\"Director\",\"col2\":\"Randy Krallman\"},{\"col1\":\"Art Director\",\"col2\":\"Jack Graham\"},{\"col1\":\"Copywriter\",\"col2\":\"Nora Deligter\"}]', 'JBL', '2019-06-01 07:00:00', NULL, NULL),
(99, 294, 1, 'Codes of Culture Campaign', '2021-02-04 15:42:59', '2021-02-04 15:42:59', '5fe3be88-a2df-4f74-8fea-e53cf755a2cd', NULL, NULL, NULL, NULL, 'AT&T', NULL, NULL, NULL),
(100, 300, 1, 'Author', '2021-02-04 15:43:11', '2021-02-04 15:43:11', '2bfdaf73-efb4-4c21-a51e-506e9233a23b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(101, 301, 1, 'Director', '2021-02-04 15:43:20', '2021-02-04 15:43:20', '233a25fd-1e6b-421a-a243-1cd46e783a95', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(102, 303, 1, 'Codes of Culture Campaign', '2021-02-04 15:45:14', '2021-02-04 15:45:14', '0e355ef9-3deb-4c76-b096-5394a97c345a', NULL, NULL, NULL, NULL, 'AT&T', NULL, NULL, NULL),
(103, 310, 1, 'Codes of Culture Campaign', '2021-02-04 15:49:23', '2021-02-04 15:49:23', 'b17337c6-42ea-4b08-b02d-7ac7b19526dd', NULL, NULL, NULL, NULL, 'AT&T', NULL, NULL, NULL),
(105, 319, 1, 'SAFE AND WELL', '2021-02-04 15:56:26', '2021-02-04 15:56:26', '2b36ad41-8ef5-45ad-ab33-f0ae16cf8ed1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(106, 321, 1, 'Safe and Well', '2021-02-04 15:57:13', '2021-02-04 21:41:12', '691d6c28-cbcf-4747-923d-864a76e01300', NULL, NULL, NULL, '[{\"col1\":\"\",\"col2\":\"\"}]', NULL, '2020-12-15 08:00:00', '<p>Shot on 16mm film, “SAFE AND WELL” is a satirical exploration of the language of wellness set within the context of our “stay at home” confinement. The film invites the viewer to follow along on a seemingly familiar and mundane exercise journey that swiftly devolves into a more paranoid and anxious reflection of the present moment.</p>', ''),
(107, 323, 1, 'Safe and Well', '2021-02-04 15:57:13', '2021-02-04 15:57:13', '5677e9bc-225e-4131-99fd-2c67e5c1bf1c', NULL, NULL, NULL, '[{\"col1\":\"\",\"col2\":\"\"}]', NULL, NULL, NULL, NULL),
(108, 325, 1, 'Safe and Well', '2021-02-04 16:09:13', '2021-02-04 16:09:13', '4ca1efbd-9642-4195-9f6b-821e3b79e461', NULL, NULL, NULL, '[{\"col1\":\"\",\"col2\":\"\"}]', NULL, NULL, '<p>Shot on 16mm film, “SAFE AND WELL” is a satirical exploration of the language of wellness set within the context of our “stay at home” confinement. The film invites the viewer to follow along on a seemingly familiar and mundane exercise journey that swiftly devolves into a more paranoid and anxious reflection of the present moment.</p>', NULL),
(110, 328, 1, 'The Danish political drama \'Borgen\' is a welcome contrast to Trumpism', '2021-02-04 16:21:50', '2021-02-04 21:41:12', '3a0da0e9-f165-45d2-b0b8-40074bca6216', NULL, NULL, NULL, '[{\"col1\":\"Agency\",\"col2\":\"\"}]', 'Mic', '2020-12-15 08:00:00', NULL, 'https://www.mic.com/p/the-danish-political-drama-borgen-is-a-welcome-contrast-to-trumpism-50489804'),
(111, 329, 1, 'The Danish political drama \'Borgen\' is a welcome contrast to Trumpism', '2021-02-04 16:21:50', '2021-02-04 16:21:50', 'ad8e6ea4-7da1-4a30-84d7-9dab172a7035', NULL, NULL, NULL, '[{\"col1\":\"Agency\",\"col2\":\"\"}]', 'Mic', '2020-12-15 08:00:00', NULL, ''),
(112, 330, 1, 'The Danish political drama \'Borgen\' is a welcome contrast to Trumpism', '2021-02-04 16:39:45', '2021-02-04 16:39:45', 'a47381d4-dc20-4ad9-8e1d-f7bcca313684', NULL, NULL, NULL, '[{\"col1\":\"Agency\",\"col2\":\"\"}]', 'Mic', '2020-12-15 08:00:00', NULL, ''),
(113, 331, 1, 'The Danish political drama \'Borgen\' is a welcome contrast to Trumpism', '2021-02-04 16:41:49', '2021-02-04 16:41:49', '58072328-48ad-4278-b5fb-d2818b1f8126', NULL, NULL, NULL, '[{\"col1\":\"Agency\",\"col2\":\"\"}]', 'Mic', '2020-12-15 08:00:00', NULL, 'https://www.mic.com/p/the-danish-political-drama-borgen-is-a-welcome-contrast-to-trumpism-50489804'),
(114, 332, 1, 'Fc3f7892697313 5e5312d65880a 3', '2021-02-04 17:31:38', '2021-02-04 17:31:38', 'b4fc26c8-308e-485f-b779-47aa70480a25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(115, 333, 1, 'Codes of Culture Campaign', '2021-02-04 17:31:46', '2021-02-04 17:31:46', 'f58592ba-4b68-4bfd-bbcf-c818ddbc4176', NULL, NULL, NULL, NULL, 'AT&T', NULL, NULL, ''),
(116, 340, 1, '979747899 copy', '2021-02-04 18:23:02', '2021-02-04 18:23:02', 'd16346f9-9a95-4d42-bc21-159da3d66e91', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(117, 341, 1, 'Safe and Well', '2021-02-04 18:23:17', '2021-02-04 18:23:17', 'fa6c740a-5ed3-44aa-8d8e-7ceb34a28c87', NULL, NULL, NULL, '[{\"col1\":\"\",\"col2\":\"\"}]', NULL, '2020-12-15 08:00:00', '<p>Shot on 16mm film, “SAFE AND WELL” is a satirical exploration of the language of wellness set within the context of our “stay at home” confinement. The film invites the viewer to follow along on a seemingly familiar and mundane exercise journey that swiftly devolves into a more paranoid and anxious reflection of the present moment.</p>', ''),
(118, 343, 1, 'Maxresdefault', '2021-02-04 18:24:35', '2021-02-04 18:24:35', '05e08549-7299-4b42-ab92-f6f6b8550d36', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(119, 344, 1, 'My Shoes. My Way.', '2021-02-04 18:24:38', '2021-02-04 18:24:38', 'e8c3c4e7-189f-454f-ad24-4fd6a8d4c13c', NULL, NULL, NULL, '[{\"col1\":\"Agency\",\"col2\":\"Translation\"},{\"col1\":\"Creative Officer\",\"col2\":\"John Norman\"},{\"col1\":\"GCD\",\"col2\":\"Louis-Philippe Tremblay\"},{\"col1\":\"Director\",\"col2\":\"Randy Krallman\"},{\"col1\":\"Art Director\",\"col2\":\"Jack Graham\"},{\"col1\":\"Copywriter\",\"col2\":\"Nora Deligter\"}]', 'DSW', '2019-06-01 07:00:00', NULL, ''),
(120, 346, 1, 'Contact', '2021-02-04 20:30:05', '2021-02-04 20:30:05', 'dbe7381f-2bf4-4327-b161-6387602da99f', NULL, NULL, '<p>Hello my name is Nora Deligter!</p>', NULL, NULL, NULL, NULL, NULL),
(122, 350, 1, 'Safe and Well', '2021-02-04 21:46:53', '2021-02-04 21:46:53', 'b20d91b7-c872-4f0f-9e15-7d1cb9b410c5', NULL, NULL, NULL, '[{\"col1\":\"Agency\",\"col2\":\"\"}]', NULL, '2020-12-16 08:00:00', '<p>Shot on 16mm film, “SAFE AND WELL” is a satirical exploration of the language of wellness set within the context of our “stay at home” confinement. The film invites the viewer to follow along on a seemingly familiar and mundane exercise journey that swiftly devolves into a more paranoid and anxious reflection of the present moment.</p>', NULL),
(123, 352, 1, 'Safe and Well', '2021-02-04 21:46:53', '2021-02-04 21:46:53', 'd3ab9693-4f2f-4d44-a32f-7f1c2e0c9fdb', NULL, NULL, NULL, '[{\"col1\":\"Agency\",\"col2\":\"\"}]', NULL, '2020-12-16 08:00:00', '<p>Shot on 16mm film, “SAFE AND WELL” is a satirical exploration of the language of wellness set within the context of our “stay at home” confinement. The film invites the viewer to follow along on a seemingly familiar and mundane exercise journey that swiftly devolves into a more paranoid and anxious reflection of the present moment.</p>', NULL),
(125, 355, 1, 'The Danish political drama \'Borgen\' is a welcome contrast to Trumpism', '2021-02-04 21:47:53', '2021-02-04 21:47:53', '7cb58423-4e67-48b4-bda3-c5a52b9be097', NULL, NULL, NULL, NULL, 'Mic', '2020-12-15 08:00:00', NULL, 'https://www.mic.com/p/the-danish-political-drama-borgen-is-a-welcome-contrast-to-trumpism-50489804'),
(126, 356, 1, 'The Danish political drama \'Borgen\' is a welcome contrast to Trumpism', '2021-02-04 21:47:53', '2021-02-04 21:47:53', 'ebb493fc-ac17-4ba0-88f3-206f09b0052f', NULL, NULL, NULL, NULL, 'Mic', '2020-12-15 08:00:00', NULL, 'https://www.mic.com/p/the-danish-political-drama-borgen-is-a-welcome-contrast-to-trumpism-50489804'),
(127, 357, 1, NULL, '2021-02-04 22:52:33', '2021-02-04 22:52:38', '89a268a5-4567-4acc-ab28-c3b42c947c7f', NULL, NULL, NULL, '[{\"col1\":\"Agency\",\"col2\":\"\"},{\"col1\":\"\",\"col2\":\"\"}]', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `craftidtokens`
--

CREATE TABLE `craftidtokens` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `accessToken` text NOT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `deprecationerrors`
--

CREATE TABLE `deprecationerrors` (
  `id` int(11) NOT NULL,
  `key` varchar(255) NOT NULL,
  `fingerprint` varchar(255) NOT NULL,
  `lastOccurrence` datetime NOT NULL,
  `file` varchar(255) NOT NULL,
  `line` smallint(6) UNSIGNED DEFAULT NULL,
  `message` text,
  `traces` text,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `deprecationerrors`
--

INSERT INTO `deprecationerrors` (`id`, `key`, `fingerprint`, `lastOccurrence`, `file`, `line`, `message`, `traces`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'ElementQuery::getIterator()', '/Users/will/Projects/craft/templates/agency/_entry.twig:13', '2021-02-03 17:45:31', '/Users/will/Projects/craft/templates/agency/_entry.twig', 13, 'Looping through element queries directly has been deprecated. Use the `all()` function to fetch the query results before looping over them.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/elements/db/ElementQuery.php\",\"line\":569,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::getIterator()\\\", \\\"Looping through element queries directly has been deprecated. Us...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\MatrixBlockQuery\",\"file\":\"/Users/will/Projects/craft/storage/runtime/compiled_templates/82/82e3d6b931518fc3ad950941ae567beb0b44e9c7692e7b23a9f87dad671f06e2.php\",\"line\":69,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"getIterator\",\"args\":null},{\"objectClass\":\"__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":184,\"class\":\"__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f\",\"method\":\"block_content\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"title\\\" => [__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa, \\\"block_title\\\"], \\\"content\\\" => [__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"file\":\"/Users/will/Projects/craft/storage/runtime/compiled_templates/57/57eff97a457520a1613086f22b809808a08f340b33021340fe4dccea538aec0d.php\",\"line\":73,\"class\":\"Twig\\\\Template\",\"method\":\"displayBlock\",\"args\":\"\\\"content\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"title\\\" => [__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa, \\\"block_title\\\"], \\\"content\\\" => [__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"title\\\" => [__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa, \\\"block_title\\\"], \\\"content\\\" => [__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"title\\\" => [__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa, \\\"block_title\\\"], \\\"content\\\" => [__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"file\":\"/Users/will/Projects/craft/storage/runtime/compiled_templates/82/82e3d6b931518fc3ad950941ae567beb0b44e9c7692e7b23a9f87dad671f06e2.php\",\"line\":43,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":392,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/View.php\",\"line\":389,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"agency/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/View.php\",\"line\":450,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"agency/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/Controller.php\",\"line\":241,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"agency/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], \\\"site\\\"\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/controllers/TemplatesController.php\",\"line\":100,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"agency/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"agency/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":null,\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/base/InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"agency/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/base/Controller.php\",\"line\":180,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"agency/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"agency/at-t-codes-of-culture-campaign\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/Controller.php\",\"line\":190,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"agency/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"agency/at-t-codes-of-culture-campaign\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/base/Module.php\",\"line\":528,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"agency/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"agency/at-t-codes-of-culture-campaign\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/Application.php\",\"line\":274,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"agency/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"agency/at-t-codes-of-culture-campaign\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/web/Application.php\",\"line\":103,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"agency/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"agency/at-t-codes-of-culture-campaign\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/Application.php\",\"line\":259,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/base/Application.php\",\"line\":386,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/web/index.php\",\"line\":22,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2021-02-03 17:45:31', '2021-02-03 17:45:31', '54215e6f-b6b0-47ef-90c1-f77547d4444b'),
(51, 'ElementQuery::getIterator()', '/Users/will/Projects/craft/templates/agency/_entry.twig:38', '2021-02-02 22:45:53', '/Users/will/Projects/craft/templates/agency/_entry.twig', 38, 'Looping through element queries directly has been deprecated. Use the `all()` function to fetch the query results before looping over them.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/elements/db/ElementQuery.php\",\"line\":569,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::getIterator()\\\", \\\"Looping through element queries directly has been deprecated. Us...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\AssetQuery\",\"file\":\"/Users/will/Projects/craft/storage/runtime/compiled_templates/82/82e3d6b931518fc3ad950941ae567beb0b44e9c7692e7b23a9f87dad671f06e2.php\",\"line\":136,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"getIterator\",\"args\":null},{\"objectClass\":\"__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":184,\"class\":\"__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f\",\"method\":\"block_content\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"title\\\" => [__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa, \\\"block_title\\\"], \\\"content\\\" => [__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"file\":\"/Users/will/Projects/craft/storage/runtime/compiled_templates/57/57eff97a457520a1613086f22b809808a08f340b33021340fe4dccea538aec0d.php\",\"line\":73,\"class\":\"Twig\\\\Template\",\"method\":\"displayBlock\",\"args\":\"\\\"content\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"title\\\" => [__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa, \\\"block_title\\\"], \\\"content\\\" => [__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"title\\\" => [__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa, \\\"block_title\\\"], \\\"content\\\" => [__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"title\\\" => [__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa, \\\"block_title\\\"], \\\"content\\\" => [__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"file\":\"/Users/will/Projects/craft/storage/runtime/compiled_templates/82/82e3d6b931518fc3ad950941ae567beb0b44e9c7692e7b23a9f87dad671f06e2.php\",\"line\":43,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":392,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/View.php\",\"line\":389,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"agency/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/View.php\",\"line\":450,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"agency/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/Controller.php\",\"line\":241,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"agency/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], \\\"site\\\"\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/controllers/TemplatesController.php\",\"line\":100,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"agency/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"agency/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":null,\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/base/InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"agency/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/base/Controller.php\",\"line\":180,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"agency/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"agency/at-t-codes-of-culture-campaign\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/Controller.php\",\"line\":190,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"agency/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"agency/at-t-codes-of-culture-campaign\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/base/Module.php\",\"line\":528,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"agency/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"agency/at-t-codes-of-culture-campaign\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/Application.php\",\"line\":274,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"agency/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"agency/at-t-codes-of-culture-campaign\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/web/Application.php\",\"line\":103,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"agency/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"agency/at-t-codes-of-culture-campaign\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/Application.php\",\"line\":259,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/base/Application.php\",\"line\":386,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/web/index.php\",\"line\":22,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2021-02-02 22:45:53', '2021-02-02 22:45:53', '03ae556b-88b2-4108-b723-3fce82005333'),
(55, 'ElementQuery::getIterator()', '/Users/will/Projects/craft/templates/agency/_entry.twig:39', '2021-02-02 21:23:26', '/Users/will/Projects/craft/templates/agency/_entry.twig', 39, 'Looping through element queries directly has been deprecated. Use the `all()` function to fetch the query results before looping over them.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/elements/db/ElementQuery.php\",\"line\":569,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::getIterator()\\\", \\\"Looping through element queries directly has been deprecated. Us...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\AssetQuery\",\"file\":\"/Users/will/Projects/craft/storage/runtime/compiled_templates/82/82e3d6b931518fc3ad950941ae567beb0b44e9c7692e7b23a9f87dad671f06e2.php\",\"line\":137,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"getIterator\",\"args\":null},{\"objectClass\":\"__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":184,\"class\":\"__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f\",\"method\":\"block_content\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"title\\\" => [__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa, \\\"block_title\\\"], \\\"content\\\" => [__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"file\":\"/Users/will/Projects/craft/storage/runtime/compiled_templates/57/57eff97a457520a1613086f22b809808a08f340b33021340fe4dccea538aec0d.php\",\"line\":73,\"class\":\"Twig\\\\Template\",\"method\":\"displayBlock\",\"args\":\"\\\"content\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"title\\\" => [__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa, \\\"block_title\\\"], \\\"content\\\" => [__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"title\\\" => [__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa, \\\"block_title\\\"], \\\"content\\\" => [__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"title\\\" => [__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa, \\\"block_title\\\"], \\\"content\\\" => [__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"file\":\"/Users/will/Projects/craft/storage/runtime/compiled_templates/82/82e3d6b931518fc3ad950941ae567beb0b44e9c7692e7b23a9f87dad671f06e2.php\",\"line\":43,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":392,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/View.php\",\"line\":389,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"agency/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/View.php\",\"line\":450,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"agency/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/Controller.php\",\"line\":241,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"agency/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], \\\"site\\\"\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/controllers/TemplatesController.php\",\"line\":100,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"agency/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"agency/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":null,\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/base/InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"agency/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/base/Controller.php\",\"line\":180,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"agency/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"agency/at-t-codes-of-culture-campaign\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/Controller.php\",\"line\":190,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"agency/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"agency/at-t-codes-of-culture-campaign\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/base/Module.php\",\"line\":528,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"agency/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"agency/at-t-codes-of-culture-campaign\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/Application.php\",\"line\":274,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"agency/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"agency/at-t-codes-of-culture-campaign\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/web/Application.php\",\"line\":103,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"agency/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"agency/at-t-codes-of-culture-campaign\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/Application.php\",\"line\":259,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/base/Application.php\",\"line\":386,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/web/index.php\",\"line\":22,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2021-02-02 21:23:26', '2021-02-02 21:23:26', 'c1169620-450b-414d-ac29-c49011b25010'),
(141, 'ElementQuery::getIterator()', '/Users/will/Projects/craft/templates/agency/_entry.twig:40', '2021-02-03 15:58:37', '/Users/will/Projects/craft/templates/agency/_entry.twig', 40, 'Looping through element queries directly has been deprecated. Use the `all()` function to fetch the query results before looping over them.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/elements/db/ElementQuery.php\",\"line\":569,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::getIterator()\\\", \\\"Looping through element queries directly has been deprecated. Us...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\AssetQuery\",\"file\":\"/Users/will/Projects/craft/storage/runtime/compiled_templates/82/82e3d6b931518fc3ad950941ae567beb0b44e9c7692e7b23a9f87dad671f06e2.php\",\"line\":136,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"getIterator\",\"args\":null},{\"objectClass\":\"__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":184,\"class\":\"__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f\",\"method\":\"block_content\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"title\\\" => [__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa, \\\"block_title\\\"], \\\"content\\\" => [__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"file\":\"/Users/will/Projects/craft/storage/runtime/compiled_templates/57/57eff97a457520a1613086f22b809808a08f340b33021340fe4dccea538aec0d.php\",\"line\":73,\"class\":\"Twig\\\\Template\",\"method\":\"displayBlock\",\"args\":\"\\\"content\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"title\\\" => [__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa, \\\"block_title\\\"], \\\"content\\\" => [__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"title\\\" => [__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa, \\\"block_title\\\"], \\\"content\\\" => [__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"title\\\" => [__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa, \\\"block_title\\\"], \\\"content\\\" => [__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"file\":\"/Users/will/Projects/craft/storage/runtime/compiled_templates/82/82e3d6b931518fc3ad950941ae567beb0b44e9c7692e7b23a9f87dad671f06e2.php\",\"line\":43,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":392,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/View.php\",\"line\":389,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"agency/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/View.php\",\"line\":450,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"agency/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/Controller.php\",\"line\":241,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"agency/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], \\\"site\\\"\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/controllers/TemplatesController.php\",\"line\":100,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"agency/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"agency/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":null,\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/base/InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"agency/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/base/Controller.php\",\"line\":180,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"agency/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"agency/at-t-codes-of-culture-campaign\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/Controller.php\",\"line\":190,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"agency/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"agency/at-t-codes-of-culture-campaign\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/base/Module.php\",\"line\":528,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"agency/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"agency/at-t-codes-of-culture-campaign\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/Application.php\",\"line\":274,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"agency/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"agency/at-t-codes-of-culture-campaign\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/web/Application.php\",\"line\":103,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"agency/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"agency/at-t-codes-of-culture-campaign\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/Application.php\",\"line\":259,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/base/Application.php\",\"line\":386,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/web/index.php\",\"line\":22,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2021-02-03 15:58:37', '2021-02-03 15:58:37', 'c1f520d4-cf9e-43ae-ba82-2b6a6aa49c68');
INSERT INTO `deprecationerrors` (`id`, `key`, `fingerprint`, `lastOccurrence`, `file`, `line`, `message`, `traces`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(162, 'ElementQuery::getIterator()', '/Users/will/Projects/craft/templates/agency-grid/_entry.twig:13', '2021-02-03 15:55:55', '/Users/will/Projects/craft/templates/agency-grid/_entry.twig', 13, 'Looping through element queries directly has been deprecated. Use the `all()` function to fetch the query results before looping over them.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/elements/db/ElementQuery.php\",\"line\":569,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::getIterator()\\\", \\\"Looping through element queries directly has been deprecated. Us...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\MatrixBlockQuery\",\"file\":\"/Users/will/Projects/craft/storage/runtime/compiled_templates/29/29b21415227a9a6298a37417822f64b339975658e39e05fb3716cb858bc4c473.php\",\"line\":69,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"getIterator\",\"args\":null},{\"objectClass\":\"__TwigTemplate_ea3a9584370ea9f3d21566828393443cc571ad82f6ad7a17fb80b4c5f974018e\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":184,\"class\":\"__TwigTemplate_ea3a9584370ea9f3d21566828393443cc571ad82f6ad7a17fb80b4c5f974018e\",\"method\":\"block_content\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"title\\\" => [__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa, \\\"block_title\\\"], \\\"content\\\" => [__TwigTemplate_ea3a9584370ea9f3d21566828393443cc571ad82f6ad7a17fb80b4c5f974018e, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"file\":\"/Users/will/Projects/craft/storage/runtime/compiled_templates/57/57eff97a457520a1613086f22b809808a08f340b33021340fe4dccea538aec0d.php\",\"line\":73,\"class\":\"Twig\\\\Template\",\"method\":\"displayBlock\",\"args\":\"\\\"content\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"title\\\" => [__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa, \\\"block_title\\\"], \\\"content\\\" => [__TwigTemplate_ea3a9584370ea9f3d21566828393443cc571ad82f6ad7a17fb80b4c5f974018e, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"title\\\" => [__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa, \\\"block_title\\\"], \\\"content\\\" => [__TwigTemplate_ea3a9584370ea9f3d21566828393443cc571ad82f6ad7a17fb80b4c5f974018e, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"title\\\" => [__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa, \\\"block_title\\\"], \\\"content\\\" => [__TwigTemplate_ea3a9584370ea9f3d21566828393443cc571ad82f6ad7a17fb80b4c5f974018e, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"file\":\"/Users/will/Projects/craft/storage/runtime/compiled_templates/29/29b21415227a9a6298a37417822f64b339975658e39e05fb3716cb858bc4c473.php\",\"line\":43,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_ea3a9584370ea9f3d21566828393443cc571ad82f6ad7a17fb80b4c5f974018e, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_ea3a9584370ea9f3d21566828393443cc571ad82f6ad7a17fb80b4c5f974018e\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_ea3a9584370ea9f3d21566828393443cc571ad82f6ad7a17fb80b4c5f974018e\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_ea3a9584370ea9f3d21566828393443cc571ad82f6ad7a17fb80b4c5f974018e, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_ea3a9584370ea9f3d21566828393443cc571ad82f6ad7a17fb80b4c5f974018e\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_ea3a9584370ea9f3d21566828393443cc571ad82f6ad7a17fb80b4c5f974018e, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_ea3a9584370ea9f3d21566828393443cc571ad82f6ad7a17fb80b4c5f974018e\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":392,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"__TwigTemplate_ea3a9584370ea9f3d21566828393443cc571ad82f6ad7a17fb80b4c5f974018e\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/View.php\",\"line\":389,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"agency-grid/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/View.php\",\"line\":450,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"agency-grid/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/Controller.php\",\"line\":241,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"agency-grid/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], \\\"site\\\"\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/controllers/TemplatesController.php\",\"line\":100,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"agency-grid/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"agency-grid/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":null,\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/base/InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"agency-grid/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/base/Controller.php\",\"line\":180,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"agency-grid/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"agency/at-t-codes-of-culture-campaign\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/Controller.php\",\"line\":190,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"agency-grid/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"agency/at-t-codes-of-culture-campaign\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/base/Module.php\",\"line\":528,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"agency-grid/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"agency/at-t-codes-of-culture-campaign\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/Application.php\",\"line\":274,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"agency-grid/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"agency/at-t-codes-of-culture-campaign\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/web/Application.php\",\"line\":103,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"agency-grid/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"agency/at-t-codes-of-culture-campaign\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/Application.php\",\"line\":259,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/base/Application.php\",\"line\":386,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/web/index.php\",\"line\":22,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2021-02-03 15:55:56', '2021-02-03 15:55:56', 'c5b8b9ed-5a57-43b7-83c9-4dd3aae6df58'),
(163, 'ElementQuery::getIterator()', '/Users/will/Projects/craft/templates/agency-grid/_entry.twig:40', '2021-02-03 15:55:55', '/Users/will/Projects/craft/templates/agency-grid/_entry.twig', 40, 'Looping through element queries directly has been deprecated. Use the `all()` function to fetch the query results before looping over them.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/elements/db/ElementQuery.php\",\"line\":569,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::getIterator()\\\", \\\"Looping through element queries directly has been deprecated. Us...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\AssetQuery\",\"file\":\"/Users/will/Projects/craft/storage/runtime/compiled_templates/29/29b21415227a9a6298a37417822f64b339975658e39e05fb3716cb858bc4c473.php\",\"line\":136,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"getIterator\",\"args\":null},{\"objectClass\":\"__TwigTemplate_ea3a9584370ea9f3d21566828393443cc571ad82f6ad7a17fb80b4c5f974018e\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":184,\"class\":\"__TwigTemplate_ea3a9584370ea9f3d21566828393443cc571ad82f6ad7a17fb80b4c5f974018e\",\"method\":\"block_content\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"title\\\" => [__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa, \\\"block_title\\\"], \\\"content\\\" => [__TwigTemplate_ea3a9584370ea9f3d21566828393443cc571ad82f6ad7a17fb80b4c5f974018e, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"file\":\"/Users/will/Projects/craft/storage/runtime/compiled_templates/57/57eff97a457520a1613086f22b809808a08f340b33021340fe4dccea538aec0d.php\",\"line\":73,\"class\":\"Twig\\\\Template\",\"method\":\"displayBlock\",\"args\":\"\\\"content\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"title\\\" => [__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa, \\\"block_title\\\"], \\\"content\\\" => [__TwigTemplate_ea3a9584370ea9f3d21566828393443cc571ad82f6ad7a17fb80b4c5f974018e, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"title\\\" => [__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa, \\\"block_title\\\"], \\\"content\\\" => [__TwigTemplate_ea3a9584370ea9f3d21566828393443cc571ad82f6ad7a17fb80b4c5f974018e, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"title\\\" => [__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa, \\\"block_title\\\"], \\\"content\\\" => [__TwigTemplate_ea3a9584370ea9f3d21566828393443cc571ad82f6ad7a17fb80b4c5f974018e, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"file\":\"/Users/will/Projects/craft/storage/runtime/compiled_templates/29/29b21415227a9a6298a37417822f64b339975658e39e05fb3716cb858bc4c473.php\",\"line\":43,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_ea3a9584370ea9f3d21566828393443cc571ad82f6ad7a17fb80b4c5f974018e, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_ea3a9584370ea9f3d21566828393443cc571ad82f6ad7a17fb80b4c5f974018e\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_ea3a9584370ea9f3d21566828393443cc571ad82f6ad7a17fb80b4c5f974018e\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_ea3a9584370ea9f3d21566828393443cc571ad82f6ad7a17fb80b4c5f974018e, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_ea3a9584370ea9f3d21566828393443cc571ad82f6ad7a17fb80b4c5f974018e\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_ea3a9584370ea9f3d21566828393443cc571ad82f6ad7a17fb80b4c5f974018e, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_ea3a9584370ea9f3d21566828393443cc571ad82f6ad7a17fb80b4c5f974018e\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":392,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"__TwigTemplate_ea3a9584370ea9f3d21566828393443cc571ad82f6ad7a17fb80b4c5f974018e\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/View.php\",\"line\":389,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"agency-grid/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/View.php\",\"line\":450,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"agency-grid/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/Controller.php\",\"line\":241,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"agency-grid/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], \\\"site\\\"\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/controllers/TemplatesController.php\",\"line\":100,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"agency-grid/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"agency-grid/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":null,\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/base/InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"agency-grid/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/base/Controller.php\",\"line\":180,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"agency-grid/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"agency/at-t-codes-of-culture-campaign\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/Controller.php\",\"line\":190,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"agency-grid/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"agency/at-t-codes-of-culture-campaign\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/base/Module.php\",\"line\":528,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"agency-grid/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"agency/at-t-codes-of-culture-campaign\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/Application.php\",\"line\":274,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"agency-grid/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"agency/at-t-codes-of-culture-campaign\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/web/Application.php\",\"line\":103,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"agency-grid/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"agency/at-t-codes-of-culture-campaign\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/Application.php\",\"line\":259,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/base/Application.php\",\"line\":386,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/web/index.php\",\"line\":22,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2021-02-03 15:55:56', '2021-02-03 15:55:56', '9baf01cc-e88b-47a3-845e-2db7482a3b99'),
(198, 'ElementQuery::getIterator()', '/Users/will/Projects/craft/templates/agency/_entry.twig:15', '2021-02-03 20:46:45', '/Users/will/Projects/craft/templates/agency/_entry.twig', 15, 'Looping through element queries directly has been deprecated. Use the `all()` function to fetch the query results before looping over them.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/elements/db/ElementQuery.php\",\"line\":569,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::getIterator()\\\", \\\"Looping through element queries directly has been deprecated. Us...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\MatrixBlockQuery\",\"file\":\"/Users/will/Projects/craft/storage/runtime/compiled_templates/82/82e3d6b931518fc3ad950941ae567beb0b44e9c7692e7b23a9f87dad671f06e2.php\",\"line\":72,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"getIterator\",\"args\":null},{\"objectClass\":\"__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":184,\"class\":\"__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f\",\"method\":\"block_content\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"title\\\" => [__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa, \\\"block_title\\\"], \\\"content\\\" => [__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"file\":\"/Users/will/Projects/craft/storage/runtime/compiled_templates/57/57eff97a457520a1613086f22b809808a08f340b33021340fe4dccea538aec0d.php\",\"line\":73,\"class\":\"Twig\\\\Template\",\"method\":\"displayBlock\",\"args\":\"\\\"content\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"title\\\" => [__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa, \\\"block_title\\\"], \\\"content\\\" => [__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"title\\\" => [__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa, \\\"block_title\\\"], \\\"content\\\" => [__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"title\\\" => [__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa, \\\"block_title\\\"], \\\"content\\\" => [__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"file\":\"/Users/will/Projects/craft/storage/runtime/compiled_templates/82/82e3d6b931518fc3ad950941ae567beb0b44e9c7692e7b23a9f87dad671f06e2.php\",\"line\":46,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":392,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/View.php\",\"line\":389,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"agency/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/View.php\",\"line\":450,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"agency/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/Controller.php\",\"line\":241,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"agency/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], \\\"site\\\"\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/controllers/TemplatesController.php\",\"line\":100,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"agency/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"agency/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":null,\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/base/InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"agency/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/base/Controller.php\",\"line\":180,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"agency/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"agency/at-t-codes-of-culture-campaign\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/Controller.php\",\"line\":190,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"agency/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"agency/at-t-codes-of-culture-campaign\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/base/Module.php\",\"line\":528,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"agency/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"agency/at-t-codes-of-culture-campaign\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/Application.php\",\"line\":274,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"agency/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"agency/at-t-codes-of-culture-campaign\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/web/Application.php\",\"line\":103,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"agency/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"agency/at-t-codes-of-culture-campaign\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/Application.php\",\"line\":259,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/base/Application.php\",\"line\":386,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/web/index.php\",\"line\":22,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2021-02-03 20:46:45', '2021-02-03 20:46:45', 'bb349dfb-9c66-4bc2-8398-3f1eeda9947a'),
(218, 'ElementQuery::getIterator()', '/Users/will/Projects/craft/templates/agency/_entry.twig:19', '2021-02-04 14:40:26', '/Users/will/Projects/craft/templates/agency/_entry.twig', 19, 'Looping through element queries directly has been deprecated. Use the `all()` function to fetch the query results before looping over them.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/elements/db/ElementQuery.php\",\"line\":569,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::getIterator()\\\", \\\"Looping through element queries directly has been deprecated. Us...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\AssetQuery\",\"file\":\"/Users/will/Projects/craft/storage/runtime/compiled_templates/82/82e3d6b931518fc3ad950941ae567beb0b44e9c7692e7b23a9f87dad671f06e2.php\",\"line\":95,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"getIterator\",\"args\":null},{\"objectClass\":\"__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":184,\"class\":\"__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f\",\"method\":\"block_content\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"title\\\" => [__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa, \\\"block_title\\\"], \\\"content\\\" => [__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"file\":\"/Users/will/Projects/craft/storage/runtime/compiled_templates/57/57eff97a457520a1613086f22b809808a08f340b33021340fe4dccea538aec0d.php\",\"line\":73,\"class\":\"Twig\\\\Template\",\"method\":\"displayBlock\",\"args\":\"\\\"content\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"title\\\" => [__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa, \\\"block_title\\\"], \\\"content\\\" => [__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"title\\\" => [__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa, \\\"block_title\\\"], \\\"content\\\" => [__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"title\\\" => [__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa, \\\"block_title\\\"], \\\"content\\\" => [__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"file\":\"/Users/will/Projects/craft/storage/runtime/compiled_templates/82/82e3d6b931518fc3ad950941ae567beb0b44e9c7692e7b23a9f87dad671f06e2.php\",\"line\":46,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":392,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/View.php\",\"line\":389,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"agency/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/View.php\",\"line\":450,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"agency/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/Controller.php\",\"line\":241,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"agency/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], \\\"site\\\"\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/controllers/TemplatesController.php\",\"line\":100,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"agency/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"agency/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":null,\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/base/InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"agency/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/base/Controller.php\",\"line\":180,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"agency/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"agency/my-shoes-my-way\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/Controller.php\",\"line\":190,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"agency/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"agency/my-shoes-my-way\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/base/Module.php\",\"line\":528,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"agency/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"agency/my-shoes-my-way\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/Application.php\",\"line\":274,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"agency/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"agency/my-shoes-my-way\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/web/Application.php\",\"line\":103,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"agency/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"agency/my-shoes-my-way\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/Application.php\",\"line\":259,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/base/Application.php\",\"line\":386,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/web/index.php\",\"line\":22,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2021-02-04 14:40:26', '2021-02-04 14:40:26', '93ac9db2-2958-479a-87a4-d818299d5016');
INSERT INTO `deprecationerrors` (`id`, `key`, `fingerprint`, `lastOccurrence`, `file`, `line`, `message`, `traces`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(222, 'ElementQuery::getIterator()', '/Users/will/Projects/craft/templates/agency/_entry.twig:18', '2021-02-04 15:49:36', '/Users/will/Projects/craft/templates/agency/_entry.twig', 18, 'Looping through element queries directly has been deprecated. Use the `all()` function to fetch the query results before looping over them.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/elements/db/ElementQuery.php\",\"line\":569,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::getIterator()\\\", \\\"Looping through element queries directly has been deprecated. Us...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\MatrixBlockQuery\",\"file\":\"/Users/will/Projects/craft/storage/runtime/compiled_templates/82/82e3d6b931518fc3ad950941ae567beb0b44e9c7692e7b23a9f87dad671f06e2.php\",\"line\":87,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"getIterator\",\"args\":null},{\"objectClass\":\"__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":184,\"class\":\"__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f\",\"method\":\"block_content\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"title\\\" => [__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa, \\\"block_title\\\"], \\\"content\\\" => [__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"file\":\"/Users/will/Projects/craft/storage/runtime/compiled_templates/57/57eff97a457520a1613086f22b809808a08f340b33021340fe4dccea538aec0d.php\",\"line\":73,\"class\":\"Twig\\\\Template\",\"method\":\"displayBlock\",\"args\":\"\\\"content\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"title\\\" => [__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa, \\\"block_title\\\"], \\\"content\\\" => [__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"title\\\" => [__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa, \\\"block_title\\\"], \\\"content\\\" => [__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"title\\\" => [__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa, \\\"block_title\\\"], \\\"content\\\" => [__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"file\":\"/Users/will/Projects/craft/storage/runtime/compiled_templates/82/82e3d6b931518fc3ad950941ae567beb0b44e9c7692e7b23a9f87dad671f06e2.php\",\"line\":46,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":392,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/View.php\",\"line\":389,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"agency/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/View.php\",\"line\":450,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"agency/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/Controller.php\",\"line\":241,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"agency/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], \\\"site\\\"\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/controllers/TemplatesController.php\",\"line\":100,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"agency/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"agency/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":null,\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/base/InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"agency/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/base/Controller.php\",\"line\":180,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"agency/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"agency/at-t-codes-of-culture-campaign\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/Controller.php\",\"line\":190,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"agency/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"agency/at-t-codes-of-culture-campaign\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/base/Module.php\",\"line\":528,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"agency/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"agency/at-t-codes-of-culture-campaign\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/Application.php\",\"line\":274,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"agency/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"agency/at-t-codes-of-culture-campaign\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/web/Application.php\",\"line\":103,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"agency/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"agency/at-t-codes-of-culture-campaign\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/Application.php\",\"line\":259,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/base/Application.php\",\"line\":386,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/web/index.php\",\"line\":22,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2021-02-04 15:49:37', '2021-02-04 15:49:37', '96755dfa-12fc-46ee-81f3-72e116fd8a9e'),
(236, 'ElementQuery::getIterator()', '/Users/will/Projects/craft/templates/agency/_entry.twig:27', '2021-02-03 18:45:46', '/Users/will/Projects/craft/templates/agency/_entry.twig', 27, 'Looping through element queries directly has been deprecated. Use the `all()` function to fetch the query results before looping over them.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/elements/db/ElementQuery.php\",\"line\":569,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::getIterator()\\\", \\\"Looping through element queries directly has been deprecated. Us...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\AssetQuery\",\"file\":\"/Users/will/Projects/craft/storage/runtime/compiled_templates/82/82e3d6b931518fc3ad950941ae567beb0b44e9c7692e7b23a9f87dad671f06e2.php\",\"line\":111,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"getIterator\",\"args\":null},{\"objectClass\":\"__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":184,\"class\":\"__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f\",\"method\":\"block_content\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"title\\\" => [__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa, \\\"block_title\\\"], \\\"content\\\" => [__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"file\":\"/Users/will/Projects/craft/storage/runtime/compiled_templates/57/57eff97a457520a1613086f22b809808a08f340b33021340fe4dccea538aec0d.php\",\"line\":73,\"class\":\"Twig\\\\Template\",\"method\":\"displayBlock\",\"args\":\"\\\"content\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"title\\\" => [__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa, \\\"block_title\\\"], \\\"content\\\" => [__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"title\\\" => [__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa, \\\"block_title\\\"], \\\"content\\\" => [__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"title\\\" => [__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa, \\\"block_title\\\"], \\\"content\\\" => [__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"file\":\"/Users/will/Projects/craft/storage/runtime/compiled_templates/82/82e3d6b931518fc3ad950941ae567beb0b44e9c7692e7b23a9f87dad671f06e2.php\",\"line\":46,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":392,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/View.php\",\"line\":389,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"agency/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/View.php\",\"line\":450,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"agency/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/Controller.php\",\"line\":241,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"agency/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], \\\"site\\\"\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/controllers/TemplatesController.php\",\"line\":100,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"agency/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"agency/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":null,\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/base/InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"agency/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/base/Controller.php\",\"line\":180,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"agency/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"agency/at-t-codes-of-culture-campaign\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/Controller.php\",\"line\":190,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"agency/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"agency/at-t-codes-of-culture-campaign\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/base/Module.php\",\"line\":528,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"agency/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"agency/at-t-codes-of-culture-campaign\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/Application.php\",\"line\":274,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"agency/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"agency/at-t-codes-of-culture-campaign\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/web/Application.php\",\"line\":103,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"agency/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"agency/at-t-codes-of-culture-campaign\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/Application.php\",\"line\":259,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/base/Application.php\",\"line\":386,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/web/index.php\",\"line\":22,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2021-02-03 18:45:46', '2021-02-03 18:45:46', 'b253666f-eb1d-4568-9b53-a8bd54a14186'),
(248, 'ElementQuery::getIterator()', '/Users/will/Projects/craft/templates/agency/_entry.twig:26', '2021-02-03 19:00:30', '/Users/will/Projects/craft/templates/agency/_entry.twig', 26, 'Looping through element queries directly has been deprecated. Use the `all()` function to fetch the query results before looping over them.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/elements/db/ElementQuery.php\",\"line\":569,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::getIterator()\\\", \\\"Looping through element queries directly has been deprecated. Us...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\AssetQuery\",\"file\":\"/Users/will/Projects/craft/storage/runtime/compiled_templates/82/82e3d6b931518fc3ad950941ae567beb0b44e9c7692e7b23a9f87dad671f06e2.php\",\"line\":110,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"getIterator\",\"args\":null},{\"objectClass\":\"__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":184,\"class\":\"__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f\",\"method\":\"block_content\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"title\\\" => [__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa, \\\"block_title\\\"], \\\"content\\\" => [__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"file\":\"/Users/will/Projects/craft/storage/runtime/compiled_templates/57/57eff97a457520a1613086f22b809808a08f340b33021340fe4dccea538aec0d.php\",\"line\":73,\"class\":\"Twig\\\\Template\",\"method\":\"displayBlock\",\"args\":\"\\\"content\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"title\\\" => [__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa, \\\"block_title\\\"], \\\"content\\\" => [__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"title\\\" => [__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa, \\\"block_title\\\"], \\\"content\\\" => [__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"title\\\" => [__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa, \\\"block_title\\\"], \\\"content\\\" => [__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"file\":\"/Users/will/Projects/craft/storage/runtime/compiled_templates/82/82e3d6b931518fc3ad950941ae567beb0b44e9c7692e7b23a9f87dad671f06e2.php\",\"line\":46,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":392,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/View.php\",\"line\":389,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"agency/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/View.php\",\"line\":450,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"agency/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/Controller.php\",\"line\":241,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"agency/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], \\\"site\\\"\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/controllers/TemplatesController.php\",\"line\":100,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"agency/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"agency/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":null,\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/base/InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"agency/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/base/Controller.php\",\"line\":180,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"agency/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"agency/at-t-codes-of-culture-campaign\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/Controller.php\",\"line\":190,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"agency/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"agency/at-t-codes-of-culture-campaign\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/base/Module.php\",\"line\":528,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"agency/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"agency/at-t-codes-of-culture-campaign\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/Application.php\",\"line\":274,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"agency/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"agency/at-t-codes-of-culture-campaign\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/web/Application.php\",\"line\":103,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"agency/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"agency/at-t-codes-of-culture-campaign\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/Application.php\",\"line\":259,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/base/Application.php\",\"line\":386,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/web/index.php\",\"line\":22,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2021-02-03 19:00:30', '2021-02-03 19:00:30', 'b5868fb3-7fb8-4013-b4a7-af43b7bb3e98'),
(261, 'ElementQuery::getIterator()', '/Users/will/Projects/craft/templates/agency/_entry.twig:16', '2021-02-04 14:40:26', '/Users/will/Projects/craft/templates/agency/_entry.twig', 16, 'Looping through element queries directly has been deprecated. Use the `all()` function to fetch the query results before looping over them.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/elements/db/ElementQuery.php\",\"line\":569,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::getIterator()\\\", \\\"Looping through element queries directly has been deprecated. Us...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\MatrixBlockQuery\",\"file\":\"/Users/will/Projects/craft/storage/runtime/compiled_templates/82/82e3d6b931518fc3ad950941ae567beb0b44e9c7692e7b23a9f87dad671f06e2.php\",\"line\":85,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"getIterator\",\"args\":null},{\"objectClass\":\"__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":184,\"class\":\"__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f\",\"method\":\"block_content\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"title\\\" => [__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa, \\\"block_title\\\"], \\\"content\\\" => [__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"file\":\"/Users/will/Projects/craft/storage/runtime/compiled_templates/57/57eff97a457520a1613086f22b809808a08f340b33021340fe4dccea538aec0d.php\",\"line\":73,\"class\":\"Twig\\\\Template\",\"method\":\"displayBlock\",\"args\":\"\\\"content\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"title\\\" => [__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa, \\\"block_title\\\"], \\\"content\\\" => [__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"title\\\" => [__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa, \\\"block_title\\\"], \\\"content\\\" => [__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"title\\\" => [__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa, \\\"block_title\\\"], \\\"content\\\" => [__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"file\":\"/Users/will/Projects/craft/storage/runtime/compiled_templates/82/82e3d6b931518fc3ad950941ae567beb0b44e9c7692e7b23a9f87dad671f06e2.php\",\"line\":46,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":392,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/View.php\",\"line\":389,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"agency/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/View.php\",\"line\":450,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"agency/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/Controller.php\",\"line\":241,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"agency/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], \\\"site\\\"\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/controllers/TemplatesController.php\",\"line\":100,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"agency/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"agency/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":null,\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/base/InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"agency/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/base/Controller.php\",\"line\":180,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"agency/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"agency/my-shoes-my-way\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/Controller.php\",\"line\":190,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"agency/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"agency/my-shoes-my-way\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/base/Module.php\",\"line\":528,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"agency/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"agency/my-shoes-my-way\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/Application.php\",\"line\":274,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"agency/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"agency/my-shoes-my-way\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/web/Application.php\",\"line\":103,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"agency/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"agency/my-shoes-my-way\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/Application.php\",\"line\":259,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/base/Application.php\",\"line\":386,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/web/index.php\",\"line\":22,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2021-02-04 14:40:26', '2021-02-04 14:40:26', '22ddf6da-bf2f-451b-8335-cfa94e7ad4d5');
INSERT INTO `deprecationerrors` (`id`, `key`, `fingerprint`, `lastOccurrence`, `file`, `line`, `message`, `traces`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(294, 'ElementQuery::getIterator()', '/Users/will/Projects/craft/templates/agency/_entry.twig:21', '2021-02-04 15:49:37', '/Users/will/Projects/craft/templates/agency/_entry.twig', 21, 'Looping through element queries directly has been deprecated. Use the `all()` function to fetch the query results before looping over them.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/elements/db/ElementQuery.php\",\"line\":569,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::getIterator()\\\", \\\"Looping through element queries directly has been deprecated. Us...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\AssetQuery\",\"file\":\"/Users/will/Projects/craft/storage/runtime/compiled_templates/82/82e3d6b931518fc3ad950941ae567beb0b44e9c7692e7b23a9f87dad671f06e2.php\",\"line\":97,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"getIterator\",\"args\":null},{\"objectClass\":\"__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":184,\"class\":\"__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f\",\"method\":\"block_content\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"title\\\" => [__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa, \\\"block_title\\\"], \\\"content\\\" => [__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"file\":\"/Users/will/Projects/craft/storage/runtime/compiled_templates/57/57eff97a457520a1613086f22b809808a08f340b33021340fe4dccea538aec0d.php\",\"line\":73,\"class\":\"Twig\\\\Template\",\"method\":\"displayBlock\",\"args\":\"\\\"content\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"title\\\" => [__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa, \\\"block_title\\\"], \\\"content\\\" => [__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"title\\\" => [__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa, \\\"block_title\\\"], \\\"content\\\" => [__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"title\\\" => [__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa, \\\"block_title\\\"], \\\"content\\\" => [__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"file\":\"/Users/will/Projects/craft/storage/runtime/compiled_templates/82/82e3d6b931518fc3ad950941ae567beb0b44e9c7692e7b23a9f87dad671f06e2.php\",\"line\":46,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":392,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/View.php\",\"line\":389,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"agency/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/View.php\",\"line\":450,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"agency/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/Controller.php\",\"line\":241,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"agency/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], \\\"site\\\"\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/controllers/TemplatesController.php\",\"line\":100,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"agency/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"agency/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":null,\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/base/InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"agency/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/base/Controller.php\",\"line\":180,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"agency/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"agency/at-t-codes-of-culture-campaign\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/Controller.php\",\"line\":190,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"agency/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"agency/at-t-codes-of-culture-campaign\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/base/Module.php\",\"line\":528,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"agency/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"agency/at-t-codes-of-culture-campaign\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/Application.php\",\"line\":274,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"agency/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"agency/at-t-codes-of-culture-campaign\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/web/Application.php\",\"line\":103,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"agency/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"agency/at-t-codes-of-culture-campaign\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/Application.php\",\"line\":259,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/base/Application.php\",\"line\":386,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/web/index.php\",\"line\":22,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2021-02-04 15:49:37', '2021-02-04 15:49:37', '59e99fb9-d8fc-4901-b4f9-0fcd37fe04a5'),
(529, 'ElementQuery::getIterator()', '/Users/will/Projects/craft/templates/agency/_entry.twig:8', '2021-02-04 16:14:03', '/Users/will/Projects/craft/templates/agency/_entry.twig', 8, 'Looping through element queries directly has been deprecated. Use the `all()` function to fetch the query results before looping over them.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/elements/db/ElementQuery.php\",\"line\":569,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::getIterator()\\\", \\\"Looping through element queries directly has been deprecated. Us...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\MatrixBlockQuery\",\"file\":\"/Users/will/Projects/craft/storage/runtime/compiled_templates/82/82e3d6b931518fc3ad950941ae567beb0b44e9c7692e7b23a9f87dad671f06e2.php\",\"line\":63,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"getIterator\",\"args\":null},{\"objectClass\":\"__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":184,\"class\":\"__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f\",\"method\":\"block_content\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"title\\\" => [__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa, \\\"block_title\\\"], \\\"content\\\" => [__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"file\":\"/Users/will/Projects/craft/storage/runtime/compiled_templates/57/57eff97a457520a1613086f22b809808a08f340b33021340fe4dccea538aec0d.php\",\"line\":73,\"class\":\"Twig\\\\Template\",\"method\":\"displayBlock\",\"args\":\"\\\"content\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"title\\\" => [__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa, \\\"block_title\\\"], \\\"content\\\" => [__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"title\\\" => [__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa, \\\"block_title\\\"], \\\"content\\\" => [__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"title\\\" => [__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa, \\\"block_title\\\"], \\\"content\\\" => [__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"file\":\"/Users/will/Projects/craft/storage/runtime/compiled_templates/82/82e3d6b931518fc3ad950941ae567beb0b44e9c7692e7b23a9f87dad671f06e2.php\",\"line\":46,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":392,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/View.php\",\"line\":389,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"agency/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/View.php\",\"line\":450,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"agency/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/Controller.php\",\"line\":241,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"agency/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], \\\"site\\\"\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/controllers/TemplatesController.php\",\"line\":100,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"agency/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"agency/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":null,\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/base/InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"agency/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/base/Controller.php\",\"line\":180,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"agency/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"agency/my-shoes-my-way\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/Controller.php\",\"line\":190,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"agency/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"agency/my-shoes-my-way\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/base/Module.php\",\"line\":528,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"agency/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"agency/my-shoes-my-way\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/Application.php\",\"line\":274,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"agency/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"agency/my-shoes-my-way\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/web/Application.php\",\"line\":103,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"agency/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"agency/my-shoes-my-way\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/Application.php\",\"line\":259,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/base/Application.php\",\"line\":386,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/web/index.php\",\"line\":22,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2021-02-04 16:14:04', '2021-02-04 16:14:04', 'c2454912-d84c-451f-b3e0-17a3fc81841b'),
(530, 'ElementQuery::getIterator()', '/Users/will/Projects/craft/templates/agency/_entry.twig:11', '2021-02-04 16:14:03', '/Users/will/Projects/craft/templates/agency/_entry.twig', 11, 'Looping through element queries directly has been deprecated. Use the `all()` function to fetch the query results before looping over them.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/elements/db/ElementQuery.php\",\"line\":569,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::getIterator()\\\", \\\"Looping through element queries directly has been deprecated. Us...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\AssetQuery\",\"file\":\"/Users/will/Projects/craft/storage/runtime/compiled_templates/82/82e3d6b931518fc3ad950941ae567beb0b44e9c7692e7b23a9f87dad671f06e2.php\",\"line\":73,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"getIterator\",\"args\":null},{\"objectClass\":\"__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":184,\"class\":\"__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f\",\"method\":\"block_content\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"title\\\" => [__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa, \\\"block_title\\\"], \\\"content\\\" => [__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"file\":\"/Users/will/Projects/craft/storage/runtime/compiled_templates/57/57eff97a457520a1613086f22b809808a08f340b33021340fe4dccea538aec0d.php\",\"line\":73,\"class\":\"Twig\\\\Template\",\"method\":\"displayBlock\",\"args\":\"\\\"content\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"title\\\" => [__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa, \\\"block_title\\\"], \\\"content\\\" => [__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"title\\\" => [__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa, \\\"block_title\\\"], \\\"content\\\" => [__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"title\\\" => [__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa, \\\"block_title\\\"], \\\"content\\\" => [__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"file\":\"/Users/will/Projects/craft/storage/runtime/compiled_templates/82/82e3d6b931518fc3ad950941ae567beb0b44e9c7692e7b23a9f87dad671f06e2.php\",\"line\":46,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":392,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"__TwigTemplate_24a0a55773f5f872446f3f85b6d83482bd6f8ea26866364f6e57f852f943355f\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/View.php\",\"line\":389,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"agency/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/View.php\",\"line\":450,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"agency/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/Controller.php\",\"line\":241,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"agency/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], \\\"site\\\"\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/controllers/TemplatesController.php\",\"line\":100,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"agency/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"agency/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":null,\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/base/InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"agency/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/base/Controller.php\",\"line\":180,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"agency/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"agency/my-shoes-my-way\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/Controller.php\",\"line\":190,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"agency/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"agency/my-shoes-my-way\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/base/Module.php\",\"line\":528,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"agency/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"agency/my-shoes-my-way\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/Application.php\",\"line\":274,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"agency/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"agency/my-shoes-my-way\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/web/Application.php\",\"line\":103,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"agency/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"agency/my-shoes-my-way\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/Application.php\",\"line\":259,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/base/Application.php\",\"line\":386,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/web/index.php\",\"line\":22,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2021-02-04 16:14:04', '2021-02-04 16:14:04', '6578af67-5385-412a-b6e0-4a609d74ca6f'),
(567, 'ElementQuery::getIterator()', '/Users/will/Projects/craft/templates/work/_entry.twig:8', '2021-02-04 19:02:45', '/Users/will/Projects/craft/templates/work/_entry.twig', 8, 'Looping through element queries directly has been deprecated. Use the `all()` function to fetch the query results before looping over them.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/elements/db/ElementQuery.php\",\"line\":569,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::getIterator()\\\", \\\"Looping through element queries directly has been deprecated. Us...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\MatrixBlockQuery\",\"file\":\"/Users/will/Projects/craft/storage/runtime/compiled_templates/a4/a49f78f195e1047d3c90efd92029e801950f6013f3b3757d075f0461438e70b8.php\",\"line\":63,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"getIterator\",\"args\":null},{\"objectClass\":\"__TwigTemplate_d7c3f8efcd04b50db58f4261983964884dff7d18bed6f391217ac10c13f170ae\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":184,\"class\":\"__TwigTemplate_d7c3f8efcd04b50db58f4261983964884dff7d18bed6f391217ac10c13f170ae\",\"method\":\"block_content\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"title\\\" => [__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa, \\\"block_title\\\"], \\\"content\\\" => [__TwigTemplate_d7c3f8efcd04b50db58f4261983964884dff7d18bed6f391217ac10c13f170ae, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"file\":\"/Users/will/Projects/craft/storage/runtime/compiled_templates/57/57eff97a457520a1613086f22b809808a08f340b33021340fe4dccea538aec0d.php\",\"line\":73,\"class\":\"Twig\\\\Template\",\"method\":\"displayBlock\",\"args\":\"\\\"content\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"title\\\" => [__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa, \\\"block_title\\\"], \\\"content\\\" => [__TwigTemplate_d7c3f8efcd04b50db58f4261983964884dff7d18bed6f391217ac10c13f170ae, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"title\\\" => [__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa, \\\"block_title\\\"], \\\"content\\\" => [__TwigTemplate_d7c3f8efcd04b50db58f4261983964884dff7d18bed6f391217ac10c13f170ae, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"title\\\" => [__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa, \\\"block_title\\\"], \\\"content\\\" => [__TwigTemplate_d7c3f8efcd04b50db58f4261983964884dff7d18bed6f391217ac10c13f170ae, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"file\":\"/Users/will/Projects/craft/storage/runtime/compiled_templates/a4/a49f78f195e1047d3c90efd92029e801950f6013f3b3757d075f0461438e70b8.php\",\"line\":46,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_d7c3f8efcd04b50db58f4261983964884dff7d18bed6f391217ac10c13f170ae, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_d7c3f8efcd04b50db58f4261983964884dff7d18bed6f391217ac10c13f170ae\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_d7c3f8efcd04b50db58f4261983964884dff7d18bed6f391217ac10c13f170ae\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_d7c3f8efcd04b50db58f4261983964884dff7d18bed6f391217ac10c13f170ae, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_d7c3f8efcd04b50db58f4261983964884dff7d18bed6f391217ac10c13f170ae\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_d7c3f8efcd04b50db58f4261983964884dff7d18bed6f391217ac10c13f170ae, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_d7c3f8efcd04b50db58f4261983964884dff7d18bed6f391217ac10c13f170ae\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":392,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"__TwigTemplate_d7c3f8efcd04b50db58f4261983964884dff7d18bed6f391217ac10c13f170ae\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/View.php\",\"line\":389,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"work/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/View.php\",\"line\":450,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"work/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/Controller.php\",\"line\":241,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"work/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], \\\"site\\\"\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/controllers/TemplatesController.php\",\"line\":100,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"work/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"work/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":null,\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/base/InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"work/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/base/Controller.php\",\"line\":180,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"work/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"work/at-t-codes-of-culture-campaign\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/Controller.php\",\"line\":190,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"work/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"work/at-t-codes-of-culture-campaign\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/base/Module.php\",\"line\":528,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"work/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"work/at-t-codes-of-culture-campaign\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/Application.php\",\"line\":274,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"work/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"work/at-t-codes-of-culture-campaign\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/web/Application.php\",\"line\":103,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"work/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"work/at-t-codes-of-culture-campaign\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/Application.php\",\"line\":259,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/base/Application.php\",\"line\":386,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/web/index.php\",\"line\":22,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2021-02-04 19:02:45', '2021-02-04 19:02:45', '1a9d991e-8c72-465b-b4fb-38750b823277');
INSERT INTO `deprecationerrors` (`id`, `key`, `fingerprint`, `lastOccurrence`, `file`, `line`, `message`, `traces`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(568, 'ElementQuery::getIterator()', '/Users/will/Projects/craft/templates/work/_entry.twig:11', '2021-02-04 19:02:45', '/Users/will/Projects/craft/templates/work/_entry.twig', 11, 'Looping through element queries directly has been deprecated. Use the `all()` function to fetch the query results before looping over them.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/elements/db/ElementQuery.php\",\"line\":569,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::getIterator()\\\", \\\"Looping through element queries directly has been deprecated. Us...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\AssetQuery\",\"file\":\"/Users/will/Projects/craft/storage/runtime/compiled_templates/a4/a49f78f195e1047d3c90efd92029e801950f6013f3b3757d075f0461438e70b8.php\",\"line\":73,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"getIterator\",\"args\":null},{\"objectClass\":\"__TwigTemplate_d7c3f8efcd04b50db58f4261983964884dff7d18bed6f391217ac10c13f170ae\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":184,\"class\":\"__TwigTemplate_d7c3f8efcd04b50db58f4261983964884dff7d18bed6f391217ac10c13f170ae\",\"method\":\"block_content\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"title\\\" => [__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa, \\\"block_title\\\"], \\\"content\\\" => [__TwigTemplate_d7c3f8efcd04b50db58f4261983964884dff7d18bed6f391217ac10c13f170ae, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"file\":\"/Users/will/Projects/craft/storage/runtime/compiled_templates/57/57eff97a457520a1613086f22b809808a08f340b33021340fe4dccea538aec0d.php\",\"line\":73,\"class\":\"Twig\\\\Template\",\"method\":\"displayBlock\",\"args\":\"\\\"content\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"title\\\" => [__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa, \\\"block_title\\\"], \\\"content\\\" => [__TwigTemplate_d7c3f8efcd04b50db58f4261983964884dff7d18bed6f391217ac10c13f170ae, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"title\\\" => [__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa, \\\"block_title\\\"], \\\"content\\\" => [__TwigTemplate_d7c3f8efcd04b50db58f4261983964884dff7d18bed6f391217ac10c13f170ae, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"title\\\" => [__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa, \\\"block_title\\\"], \\\"content\\\" => [__TwigTemplate_d7c3f8efcd04b50db58f4261983964884dff7d18bed6f391217ac10c13f170ae, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"file\":\"/Users/will/Projects/craft/storage/runtime/compiled_templates/a4/a49f78f195e1047d3c90efd92029e801950f6013f3b3757d075f0461438e70b8.php\",\"line\":46,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_d7c3f8efcd04b50db58f4261983964884dff7d18bed6f391217ac10c13f170ae, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_d7c3f8efcd04b50db58f4261983964884dff7d18bed6f391217ac10c13f170ae\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_d7c3f8efcd04b50db58f4261983964884dff7d18bed6f391217ac10c13f170ae\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_d7c3f8efcd04b50db58f4261983964884dff7d18bed6f391217ac10c13f170ae, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_d7c3f8efcd04b50db58f4261983964884dff7d18bed6f391217ac10c13f170ae\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_d7c3f8efcd04b50db58f4261983964884dff7d18bed6f391217ac10c13f170ae, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_d7c3f8efcd04b50db58f4261983964884dff7d18bed6f391217ac10c13f170ae\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":392,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"__TwigTemplate_d7c3f8efcd04b50db58f4261983964884dff7d18bed6f391217ac10c13f170ae\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/View.php\",\"line\":389,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"work/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/View.php\",\"line\":450,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"work/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/Controller.php\",\"line\":241,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"work/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], \\\"site\\\"\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/controllers/TemplatesController.php\",\"line\":100,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"work/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"work/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":null,\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/base/InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"work/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/base/Controller.php\",\"line\":180,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"work/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"work/at-t-codes-of-culture-campaign\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/Controller.php\",\"line\":190,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"work/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"work/at-t-codes-of-culture-campaign\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/base/Module.php\",\"line\":528,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"work/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"work/at-t-codes-of-culture-campaign\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/Application.php\",\"line\":274,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"work/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"work/at-t-codes-of-culture-campaign\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/web/Application.php\",\"line\":103,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"work/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"work/at-t-codes-of-culture-campaign\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/Application.php\",\"line\":259,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/base/Application.php\",\"line\":386,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/web/index.php\",\"line\":22,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2021-02-04 19:02:45', '2021-02-04 19:02:45', '65ecd4b6-cad9-4810-a966-8c54c1da19f4'),
(577, 'ElementQuery::getIterator()', '/Users/will/Projects/craft/templates/work/index.twig:17', '2021-02-04 17:45:30', '/Users/will/Projects/craft/templates/work/index.twig', 17, 'Looping through element queries directly has been deprecated. Use the `all()` function to fetch the query results before looping over them.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/elements/db/ElementQuery.php\",\"line\":569,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::getIterator()\\\", \\\"Looping through element queries directly has been deprecated. Us...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\MatrixBlockQuery\",\"file\":\"/Users/will/Projects/craft/storage/runtime/compiled_templates/5e/5e4a307925a25317b68c8de3e9a33dd2c16249274aa5eaaa383af3ed5f470bae.php\",\"line\":86,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"getIterator\",\"args\":null},{\"objectClass\":\"__TwigTemplate_78286d26da13125bc5b6e0a08a923e2bb077dcb5b5d1cb7e32b5eb7d1c775899\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":184,\"class\":\"__TwigTemplate_78286d26da13125bc5b6e0a08a923e2bb077dcb5b5d1cb7e32b5eb7d1c775899\",\"method\":\"block_content\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], [\\\"title\\\" => [__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa, \\\"block_title\\\"], \\\"content\\\" => [__TwigTemplate_78286d26da13125bc5b6e0a08a923e2bb077dcb5b5d1cb7e32b5eb7d1c775899, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"file\":\"/Users/will/Projects/craft/storage/runtime/compiled_templates/57/57eff97a457520a1613086f22b809808a08f340b33021340fe4dccea538aec0d.php\",\"line\":73,\"class\":\"Twig\\\\Template\",\"method\":\"displayBlock\",\"args\":\"\\\"content\\\", [\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], [\\\"title\\\" => [__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa, \\\"block_title\\\"], \\\"content\\\" => [__TwigTemplate_78286d26da13125bc5b6e0a08a923e2bb077dcb5b5d1cb7e32b5eb7d1c775899, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"method\":\"doDisplay\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], [\\\"title\\\" => [__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa, \\\"block_title\\\"], \\\"content\\\" => [__TwigTemplate_78286d26da13125bc5b6e0a08a923e2bb077dcb5b5d1cb7e32b5eb7d1c775899, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], [\\\"title\\\" => [__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa, \\\"block_title\\\"], \\\"content\\\" => [__TwigTemplate_78286d26da13125bc5b6e0a08a923e2bb077dcb5b5d1cb7e32b5eb7d1c775899, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"file\":\"/Users/will/Projects/craft/storage/runtime/compiled_templates/5e/5e4a307925a25317b68c8de3e9a33dd2c16249274aa5eaaa383af3ed5f470bae.php\",\"line\":48,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], [\\\"content\\\" => [__TwigTemplate_78286d26da13125bc5b6e0a08a923e2bb077dcb5b5d1cb7e32b5eb7d1c775899, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_78286d26da13125bc5b6e0a08a923e2bb077dcb5b5d1cb7e32b5eb7d1c775899\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_78286d26da13125bc5b6e0a08a923e2bb077dcb5b5d1cb7e32b5eb7d1c775899\",\"method\":\"doDisplay\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], [\\\"content\\\" => [__TwigTemplate_78286d26da13125bc5b6e0a08a923e2bb077dcb5b5d1cb7e32b5eb7d1c775899, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_78286d26da13125bc5b6e0a08a923e2bb077dcb5b5d1cb7e32b5eb7d1c775899\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], [\\\"content\\\" => [__TwigTemplate_78286d26da13125bc5b6e0a08a923e2bb077dcb5b5d1cb7e32b5eb7d1c775899, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_78286d26da13125bc5b6e0a08a923e2bb077dcb5b5d1cb7e32b5eb7d1c775899\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":392,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[]\"},{\"objectClass\":\"__TwigTemplate_78286d26da13125bc5b6e0a08a923e2bb077dcb5b5d1cb7e32b5eb7d1c775899\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/View.php\",\"line\":389,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"work\\\", []\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/View.php\",\"line\":450,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"work\\\", []\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/Controller.php\",\"line\":241,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"work\\\", [], \\\"site\\\"\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/controllers/TemplatesController.php\",\"line\":100,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"work\\\", []\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"work\\\", []\"},{\"objectClass\":null,\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/base/InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"work\\\", []]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/base/Controller.php\",\"line\":180,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"work\\\", \\\"p\\\" => \\\"work\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/Controller.php\",\"line\":190,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"work\\\", \\\"p\\\" => \\\"work\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/base/Module.php\",\"line\":528,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"work\\\", \\\"p\\\" => \\\"work\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/Application.php\",\"line\":274,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"work\\\", \\\"p\\\" => \\\"work\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/web/Application.php\",\"line\":103,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"work\\\", \\\"p\\\" => \\\"work\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/Application.php\",\"line\":259,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/base/Application.php\",\"line\":386,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/web/index.php\",\"line\":22,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2021-02-04 17:45:30', '2021-02-04 17:45:30', '72591dd6-2e78-43b6-a7a8-40c08c31636c'),
(578, 'ElementQuery::getIterator()', '/Users/will/Projects/craft/templates/work/index.twig:18', '2021-02-04 17:56:11', '/Users/will/Projects/craft/templates/work/index.twig', 18, 'Looping through element queries directly has been deprecated. Use the `all()` function to fetch the query results before looping over them.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/elements/db/ElementQuery.php\",\"line\":569,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::getIterator()\\\", \\\"Looping through element queries directly has been deprecated. Us...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\MatrixBlockQuery\",\"file\":\"/Users/will/Projects/craft/storage/runtime/compiled_templates/5e/5e4a307925a25317b68c8de3e9a33dd2c16249274aa5eaaa383af3ed5f470bae.php\",\"line\":88,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"getIterator\",\"args\":null},{\"objectClass\":\"__TwigTemplate_78286d26da13125bc5b6e0a08a923e2bb077dcb5b5d1cb7e32b5eb7d1c775899\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":184,\"class\":\"__TwigTemplate_78286d26da13125bc5b6e0a08a923e2bb077dcb5b5d1cb7e32b5eb7d1c775899\",\"method\":\"block_content\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], [\\\"title\\\" => [__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa, \\\"block_title\\\"], \\\"content\\\" => [__TwigTemplate_78286d26da13125bc5b6e0a08a923e2bb077dcb5b5d1cb7e32b5eb7d1c775899, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"file\":\"/Users/will/Projects/craft/storage/runtime/compiled_templates/57/57eff97a457520a1613086f22b809808a08f340b33021340fe4dccea538aec0d.php\",\"line\":73,\"class\":\"Twig\\\\Template\",\"method\":\"displayBlock\",\"args\":\"\\\"content\\\", [\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], [\\\"title\\\" => [__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa, \\\"block_title\\\"], \\\"content\\\" => [__TwigTemplate_78286d26da13125bc5b6e0a08a923e2bb077dcb5b5d1cb7e32b5eb7d1c775899, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"method\":\"doDisplay\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], [\\\"title\\\" => [__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa, \\\"block_title\\\"], \\\"content\\\" => [__TwigTemplate_78286d26da13125bc5b6e0a08a923e2bb077dcb5b5d1cb7e32b5eb7d1c775899, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], [\\\"title\\\" => [__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa, \\\"block_title\\\"], \\\"content\\\" => [__TwigTemplate_78286d26da13125bc5b6e0a08a923e2bb077dcb5b5d1cb7e32b5eb7d1c775899, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"file\":\"/Users/will/Projects/craft/storage/runtime/compiled_templates/5e/5e4a307925a25317b68c8de3e9a33dd2c16249274aa5eaaa383af3ed5f470bae.php\",\"line\":48,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], [\\\"content\\\" => [__TwigTemplate_78286d26da13125bc5b6e0a08a923e2bb077dcb5b5d1cb7e32b5eb7d1c775899, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_78286d26da13125bc5b6e0a08a923e2bb077dcb5b5d1cb7e32b5eb7d1c775899\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_78286d26da13125bc5b6e0a08a923e2bb077dcb5b5d1cb7e32b5eb7d1c775899\",\"method\":\"doDisplay\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], [\\\"content\\\" => [__TwigTemplate_78286d26da13125bc5b6e0a08a923e2bb077dcb5b5d1cb7e32b5eb7d1c775899, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_78286d26da13125bc5b6e0a08a923e2bb077dcb5b5d1cb7e32b5eb7d1c775899\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], [\\\"content\\\" => [__TwigTemplate_78286d26da13125bc5b6e0a08a923e2bb077dcb5b5d1cb7e32b5eb7d1c775899, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_78286d26da13125bc5b6e0a08a923e2bb077dcb5b5d1cb7e32b5eb7d1c775899\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":392,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[]\"},{\"objectClass\":\"__TwigTemplate_78286d26da13125bc5b6e0a08a923e2bb077dcb5b5d1cb7e32b5eb7d1c775899\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/View.php\",\"line\":389,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"work\\\", []\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/View.php\",\"line\":450,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"work\\\", []\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/Controller.php\",\"line\":241,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"work\\\", [], \\\"site\\\"\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/controllers/TemplatesController.php\",\"line\":100,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"work\\\", []\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"work\\\", []\"},{\"objectClass\":null,\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/base/InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"work\\\", []]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/base/Controller.php\",\"line\":180,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"work\\\", \\\"p\\\" => \\\"work\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/Controller.php\",\"line\":190,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"work\\\", \\\"p\\\" => \\\"work\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/base/Module.php\",\"line\":528,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"work\\\", \\\"p\\\" => \\\"work\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/Application.php\",\"line\":274,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"work\\\", \\\"p\\\" => \\\"work\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/web/Application.php\",\"line\":103,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"work\\\", \\\"p\\\" => \\\"work\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/Application.php\",\"line\":259,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/base/Application.php\",\"line\":386,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/web/index.php\",\"line\":22,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2021-02-04 17:56:11', '2021-02-04 17:56:11', '04c43fab-bc5c-4c0f-8de1-a0dcf0aad4b9'),
(579, 'ElementQuery::getIterator()', '/Users/will/Projects/craft/templates/work/index.twig:21', '2021-02-04 17:55:48', '/Users/will/Projects/craft/templates/work/index.twig', 21, 'Looping through element queries directly has been deprecated. Use the `all()` function to fetch the query results before looping over them.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/elements/db/ElementQuery.php\",\"line\":569,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::getIterator()\\\", \\\"Looping through element queries directly has been deprecated. Us...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\AssetQuery\",\"file\":\"/Users/will/Projects/craft/storage/runtime/compiled_templates/5e/5e4a307925a25317b68c8de3e9a33dd2c16249274aa5eaaa383af3ed5f470bae.php\",\"line\":98,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"getIterator\",\"args\":null},{\"objectClass\":\"__TwigTemplate_78286d26da13125bc5b6e0a08a923e2bb077dcb5b5d1cb7e32b5eb7d1c775899\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":184,\"class\":\"__TwigTemplate_78286d26da13125bc5b6e0a08a923e2bb077dcb5b5d1cb7e32b5eb7d1c775899\",\"method\":\"block_content\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], [\\\"title\\\" => [__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa, \\\"block_title\\\"], \\\"content\\\" => [__TwigTemplate_78286d26da13125bc5b6e0a08a923e2bb077dcb5b5d1cb7e32b5eb7d1c775899, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"file\":\"/Users/will/Projects/craft/storage/runtime/compiled_templates/57/57eff97a457520a1613086f22b809808a08f340b33021340fe4dccea538aec0d.php\",\"line\":73,\"class\":\"Twig\\\\Template\",\"method\":\"displayBlock\",\"args\":\"\\\"content\\\", [\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], [\\\"title\\\" => [__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa, \\\"block_title\\\"], \\\"content\\\" => [__TwigTemplate_78286d26da13125bc5b6e0a08a923e2bb077dcb5b5d1cb7e32b5eb7d1c775899, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"method\":\"doDisplay\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], [\\\"title\\\" => [__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa, \\\"block_title\\\"], \\\"content\\\" => [__TwigTemplate_78286d26da13125bc5b6e0a08a923e2bb077dcb5b5d1cb7e32b5eb7d1c775899, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], [\\\"title\\\" => [__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa, \\\"block_title\\\"], \\\"content\\\" => [__TwigTemplate_78286d26da13125bc5b6e0a08a923e2bb077dcb5b5d1cb7e32b5eb7d1c775899, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"file\":\"/Users/will/Projects/craft/storage/runtime/compiled_templates/5e/5e4a307925a25317b68c8de3e9a33dd2c16249274aa5eaaa383af3ed5f470bae.php\",\"line\":48,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], [\\\"content\\\" => [__TwigTemplate_78286d26da13125bc5b6e0a08a923e2bb077dcb5b5d1cb7e32b5eb7d1c775899, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_78286d26da13125bc5b6e0a08a923e2bb077dcb5b5d1cb7e32b5eb7d1c775899\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_78286d26da13125bc5b6e0a08a923e2bb077dcb5b5d1cb7e32b5eb7d1c775899\",\"method\":\"doDisplay\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], [\\\"content\\\" => [__TwigTemplate_78286d26da13125bc5b6e0a08a923e2bb077dcb5b5d1cb7e32b5eb7d1c775899, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_78286d26da13125bc5b6e0a08a923e2bb077dcb5b5d1cb7e32b5eb7d1c775899\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], [\\\"content\\\" => [__TwigTemplate_78286d26da13125bc5b6e0a08a923e2bb077dcb5b5d1cb7e32b5eb7d1c775899, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_78286d26da13125bc5b6e0a08a923e2bb077dcb5b5d1cb7e32b5eb7d1c775899\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":392,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[]\"},{\"objectClass\":\"__TwigTemplate_78286d26da13125bc5b6e0a08a923e2bb077dcb5b5d1cb7e32b5eb7d1c775899\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/View.php\",\"line\":389,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"work\\\", []\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/View.php\",\"line\":450,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"work\\\", []\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/Controller.php\",\"line\":241,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"work\\\", [], \\\"site\\\"\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/controllers/TemplatesController.php\",\"line\":100,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"work\\\", []\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"work\\\", []\"},{\"objectClass\":null,\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/base/InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"work\\\", []]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/base/Controller.php\",\"line\":180,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"work\\\", \\\"p\\\" => \\\"work\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/Controller.php\",\"line\":190,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"work\\\", \\\"p\\\" => \\\"work\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/base/Module.php\",\"line\":528,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"work\\\", \\\"p\\\" => \\\"work\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/Application.php\",\"line\":274,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"work\\\", \\\"p\\\" => \\\"work\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/web/Application.php\",\"line\":103,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"work\\\", \\\"p\\\" => \\\"work\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/Application.php\",\"line\":259,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/base/Application.php\",\"line\":386,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/web/index.php\",\"line\":22,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2021-02-04 17:55:48', '2021-02-04 17:55:48', '0881cb01-1b17-4feb-9381-6db9b7f60f60');
INSERT INTO `deprecationerrors` (`id`, `key`, `fingerprint`, `lastOccurrence`, `file`, `line`, `message`, `traces`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(585, 'ElementQuery::getIterator()', '/Users/will/Projects/craft/templates/work/index.twig:20', '2021-02-04 17:56:11', '/Users/will/Projects/craft/templates/work/index.twig', 20, 'Looping through element queries directly has been deprecated. Use the `all()` function to fetch the query results before looping over them.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/elements/db/ElementQuery.php\",\"line\":569,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::getIterator()\\\", \\\"Looping through element queries directly has been deprecated. Us...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\AssetQuery\",\"file\":\"/Users/will/Projects/craft/storage/runtime/compiled_templates/5e/5e4a307925a25317b68c8de3e9a33dd2c16249274aa5eaaa383af3ed5f470bae.php\",\"line\":95,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"getIterator\",\"args\":null},{\"objectClass\":\"__TwigTemplate_78286d26da13125bc5b6e0a08a923e2bb077dcb5b5d1cb7e32b5eb7d1c775899\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":184,\"class\":\"__TwigTemplate_78286d26da13125bc5b6e0a08a923e2bb077dcb5b5d1cb7e32b5eb7d1c775899\",\"method\":\"block_content\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], [\\\"title\\\" => [__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa, \\\"block_title\\\"], \\\"content\\\" => [__TwigTemplate_78286d26da13125bc5b6e0a08a923e2bb077dcb5b5d1cb7e32b5eb7d1c775899, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"file\":\"/Users/will/Projects/craft/storage/runtime/compiled_templates/57/57eff97a457520a1613086f22b809808a08f340b33021340fe4dccea538aec0d.php\",\"line\":73,\"class\":\"Twig\\\\Template\",\"method\":\"displayBlock\",\"args\":\"\\\"content\\\", [\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], [\\\"title\\\" => [__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa, \\\"block_title\\\"], \\\"content\\\" => [__TwigTemplate_78286d26da13125bc5b6e0a08a923e2bb077dcb5b5d1cb7e32b5eb7d1c775899, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"method\":\"doDisplay\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], [\\\"title\\\" => [__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa, \\\"block_title\\\"], \\\"content\\\" => [__TwigTemplate_78286d26da13125bc5b6e0a08a923e2bb077dcb5b5d1cb7e32b5eb7d1c775899, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], [\\\"title\\\" => [__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa, \\\"block_title\\\"], \\\"content\\\" => [__TwigTemplate_78286d26da13125bc5b6e0a08a923e2bb077dcb5b5d1cb7e32b5eb7d1c775899, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"file\":\"/Users/will/Projects/craft/storage/runtime/compiled_templates/5e/5e4a307925a25317b68c8de3e9a33dd2c16249274aa5eaaa383af3ed5f470bae.php\",\"line\":48,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], [\\\"content\\\" => [__TwigTemplate_78286d26da13125bc5b6e0a08a923e2bb077dcb5b5d1cb7e32b5eb7d1c775899, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_78286d26da13125bc5b6e0a08a923e2bb077dcb5b5d1cb7e32b5eb7d1c775899\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_78286d26da13125bc5b6e0a08a923e2bb077dcb5b5d1cb7e32b5eb7d1c775899\",\"method\":\"doDisplay\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], [\\\"content\\\" => [__TwigTemplate_78286d26da13125bc5b6e0a08a923e2bb077dcb5b5d1cb7e32b5eb7d1c775899, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_78286d26da13125bc5b6e0a08a923e2bb077dcb5b5d1cb7e32b5eb7d1c775899\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], [\\\"content\\\" => [__TwigTemplate_78286d26da13125bc5b6e0a08a923e2bb077dcb5b5d1cb7e32b5eb7d1c775899, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_78286d26da13125bc5b6e0a08a923e2bb077dcb5b5d1cb7e32b5eb7d1c775899\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":392,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[]\"},{\"objectClass\":\"__TwigTemplate_78286d26da13125bc5b6e0a08a923e2bb077dcb5b5d1cb7e32b5eb7d1c775899\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/View.php\",\"line\":389,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"work\\\", []\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/View.php\",\"line\":450,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"work\\\", []\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/Controller.php\",\"line\":241,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"work\\\", [], \\\"site\\\"\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/controllers/TemplatesController.php\",\"line\":100,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"work\\\", []\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"work\\\", []\"},{\"objectClass\":null,\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/base/InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"work\\\", []]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/base/Controller.php\",\"line\":180,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"work\\\", \\\"p\\\" => \\\"work\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/Controller.php\",\"line\":190,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"work\\\", \\\"p\\\" => \\\"work\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/base/Module.php\",\"line\":528,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"work\\\", \\\"p\\\" => \\\"work\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/Application.php\",\"line\":274,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"work\\\", \\\"p\\\" => \\\"work\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/web/Application.php\",\"line\":103,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"work\\\", \\\"p\\\" => \\\"work\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/Application.php\",\"line\":259,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/base/Application.php\",\"line\":386,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/web/index.php\",\"line\":22,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2021-02-04 17:56:11', '2021-02-04 17:56:11', '37e19ef0-728c-42d9-9b3c-9610b617ecdd'),
(596, 'ElementQuery::getIterator()', '/Users/will/Projects/craft/templates/campaigns/_entry.twig:8', '2021-02-04 22:51:50', '/Users/will/Projects/craft/templates/campaigns/_entry.twig', 8, 'Looping through element queries directly has been deprecated. Use the `all()` function to fetch the query results before looping over them.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/elements/db/ElementQuery.php\",\"line\":569,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::getIterator()\\\", \\\"Looping through element queries directly has been deprecated. Us...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\MatrixBlockQuery\",\"file\":\"/Users/will/Projects/craft/storage/runtime/compiled_templates/e7/e7f512711ffeb4a96b8d7bd475d88c723f85a8d69cd83273e70e2c4525d81c59.php\",\"line\":63,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"getIterator\",\"args\":null},{\"objectClass\":\"__TwigTemplate_224c0ffd78a0a0e354dfae51dcd8020c9a0a74065a3e3db7713dc825d8185992\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":184,\"class\":\"__TwigTemplate_224c0ffd78a0a0e354dfae51dcd8020c9a0a74065a3e3db7713dc825d8185992\",\"method\":\"block_content\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"title\\\" => [__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa, \\\"block_title\\\"], \\\"content\\\" => [__TwigTemplate_224c0ffd78a0a0e354dfae51dcd8020c9a0a74065a3e3db7713dc825d8185992, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"file\":\"/Users/will/Projects/craft/storage/runtime/compiled_templates/57/57eff97a457520a1613086f22b809808a08f340b33021340fe4dccea538aec0d.php\",\"line\":73,\"class\":\"Twig\\\\Template\",\"method\":\"displayBlock\",\"args\":\"\\\"content\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"title\\\" => [__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa, \\\"block_title\\\"], \\\"content\\\" => [__TwigTemplate_224c0ffd78a0a0e354dfae51dcd8020c9a0a74065a3e3db7713dc825d8185992, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"title\\\" => [__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa, \\\"block_title\\\"], \\\"content\\\" => [__TwigTemplate_224c0ffd78a0a0e354dfae51dcd8020c9a0a74065a3e3db7713dc825d8185992, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"title\\\" => [__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa, \\\"block_title\\\"], \\\"content\\\" => [__TwigTemplate_224c0ffd78a0a0e354dfae51dcd8020c9a0a74065a3e3db7713dc825d8185992, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"file\":\"/Users/will/Projects/craft/storage/runtime/compiled_templates/e7/e7f512711ffeb4a96b8d7bd475d88c723f85a8d69cd83273e70e2c4525d81c59.php\",\"line\":46,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_224c0ffd78a0a0e354dfae51dcd8020c9a0a74065a3e3db7713dc825d8185992, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_224c0ffd78a0a0e354dfae51dcd8020c9a0a74065a3e3db7713dc825d8185992\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_224c0ffd78a0a0e354dfae51dcd8020c9a0a74065a3e3db7713dc825d8185992\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_224c0ffd78a0a0e354dfae51dcd8020c9a0a74065a3e3db7713dc825d8185992, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_224c0ffd78a0a0e354dfae51dcd8020c9a0a74065a3e3db7713dc825d8185992\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_224c0ffd78a0a0e354dfae51dcd8020c9a0a74065a3e3db7713dc825d8185992, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_224c0ffd78a0a0e354dfae51dcd8020c9a0a74065a3e3db7713dc825d8185992\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":392,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"__TwigTemplate_224c0ffd78a0a0e354dfae51dcd8020c9a0a74065a3e3db7713dc825d8185992\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/View.php\",\"line\":389,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"campaigns/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/View.php\",\"line\":450,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"campaigns/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/Controller.php\",\"line\":241,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"campaigns/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], \\\"site\\\"\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/controllers/TemplatesController.php\",\"line\":100,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"campaigns/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"campaigns/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":null,\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/base/InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"campaigns/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/base/Controller.php\",\"line\":180,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"campaigns/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"campaign/at-t-codes-of-culture-campaign\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/Controller.php\",\"line\":190,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"campaigns/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"campaign/at-t-codes-of-culture-campaign\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/base/Module.php\",\"line\":528,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"campaigns/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"campaign/at-t-codes-of-culture-campaign\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/Application.php\",\"line\":274,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"campaigns/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"campaign/at-t-codes-of-culture-campaign\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/web/Application.php\",\"line\":103,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"campaigns/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"campaign/at-t-codes-of-culture-campaign\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/Application.php\",\"line\":259,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/base/Application.php\",\"line\":386,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/web/index.php\",\"line\":22,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2021-02-04 22:51:50', '2021-02-04 22:51:50', 'f1540662-b6fe-4f25-b396-4f96bb6e5a20'),
(597, 'ElementQuery::getIterator()', '/Users/will/Projects/craft/templates/campaigns/_entry.twig:11', '2021-02-04 22:51:50', '/Users/will/Projects/craft/templates/campaigns/_entry.twig', 11, 'Looping through element queries directly has been deprecated. Use the `all()` function to fetch the query results before looping over them.', '[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/elements/db/ElementQuery.php\",\"line\":569,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::getIterator()\\\", \\\"Looping through element queries directly has been deprecated. Us...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\AssetQuery\",\"file\":\"/Users/will/Projects/craft/storage/runtime/compiled_templates/e7/e7f512711ffeb4a96b8d7bd475d88c723f85a8d69cd83273e70e2c4525d81c59.php\",\"line\":73,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"getIterator\",\"args\":null},{\"objectClass\":\"__TwigTemplate_224c0ffd78a0a0e354dfae51dcd8020c9a0a74065a3e3db7713dc825d8185992\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":184,\"class\":\"__TwigTemplate_224c0ffd78a0a0e354dfae51dcd8020c9a0a74065a3e3db7713dc825d8185992\",\"method\":\"block_content\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"title\\\" => [__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa, \\\"block_title\\\"], \\\"content\\\" => [__TwigTemplate_224c0ffd78a0a0e354dfae51dcd8020c9a0a74065a3e3db7713dc825d8185992, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"file\":\"/Users/will/Projects/craft/storage/runtime/compiled_templates/57/57eff97a457520a1613086f22b809808a08f340b33021340fe4dccea538aec0d.php\",\"line\":73,\"class\":\"Twig\\\\Template\",\"method\":\"displayBlock\",\"args\":\"\\\"content\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"title\\\" => [__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa, \\\"block_title\\\"], \\\"content\\\" => [__TwigTemplate_224c0ffd78a0a0e354dfae51dcd8020c9a0a74065a3e3db7713dc825d8185992, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"title\\\" => [__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa, \\\"block_title\\\"], \\\"content\\\" => [__TwigTemplate_224c0ffd78a0a0e354dfae51dcd8020c9a0a74065a3e3db7713dc825d8185992, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"title\\\" => [__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa, \\\"block_title\\\"], \\\"content\\\" => [__TwigTemplate_224c0ffd78a0a0e354dfae51dcd8020c9a0a74065a3e3db7713dc825d8185992, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_ececf84d75325061cc81088c7f4fb5a18424c3714367e0554e5a22034e12acaa\",\"file\":\"/Users/will/Projects/craft/storage/runtime/compiled_templates/e7/e7f512711ffeb4a96b8d7bd475d88c723f85a8d69cd83273e70e2c4525d81c59.php\",\"line\":46,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_224c0ffd78a0a0e354dfae51dcd8020c9a0a74065a3e3db7713dc825d8185992, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_224c0ffd78a0a0e354dfae51dcd8020c9a0a74065a3e3db7713dc825d8185992\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":407,\"class\":\"__TwigTemplate_224c0ffd78a0a0e354dfae51dcd8020c9a0a74065a3e3db7713dc825d8185992\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_224c0ffd78a0a0e354dfae51dcd8020c9a0a74065a3e3db7713dc825d8185992, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_224c0ffd78a0a0e354dfae51dcd8020c9a0a74065a3e3db7713dc825d8185992\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":380,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_224c0ffd78a0a0e354dfae51dcd8020c9a0a74065a3e3db7713dc825d8185992, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_224c0ffd78a0a0e354dfae51dcd8020c9a0a74065a3e3db7713dc825d8185992\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Template.php\",\"line\":392,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"__TwigTemplate_224c0ffd78a0a0e354dfae51dcd8020c9a0a74065a3e3db7713dc825d8185992\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"/Users/will/Projects/craft/vendor/twig/twig/src/Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/View.php\",\"line\":389,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"campaigns/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/View.php\",\"line\":450,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"campaigns/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/Controller.php\",\"line\":241,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"campaigns/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], \\\"site\\\"\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/controllers/TemplatesController.php\",\"line\":100,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"campaigns/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"campaigns/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":null,\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/base/InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"campaigns/_entry\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/base/Controller.php\",\"line\":180,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"campaigns/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"campaign/at-t-codes-of-culture-campaign\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/Controller.php\",\"line\":190,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"campaigns/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"campaign/at-t-codes-of-culture-campaign\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/base/Module.php\",\"line\":528,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"campaigns/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"campaign/at-t-codes-of-culture-campaign\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/Application.php\",\"line\":274,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"campaigns/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"campaign/at-t-codes-of-culture-campaign\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/web/Application.php\",\"line\":103,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"campaigns/_entry\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"campaign/at-t-codes-of-culture-campaign\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/vendor/craftcms/cms/src/web/Application.php\",\"line\":259,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/vendor/yiisoft/yii2/base/Application.php\",\"line\":386,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"/Users/will/Projects/craft/web/index.php\",\"line\":22,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]', '2021-02-04 22:51:50', '2021-02-04 22:51:50', 'a09a644e-9274-4914-b88c-22ddb5140979');

-- --------------------------------------------------------

--
-- Table structure for table `drafts`
--

CREATE TABLE `drafts` (
  `id` int(11) NOT NULL,
  `sourceId` int(11) DEFAULT NULL,
  `creatorId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `notes` text,
  `trackChanges` tinyint(1) NOT NULL DEFAULT '0',
  `dateLastMerged` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `drafts`
--

INSERT INTO `drafts` (`id`, `sourceId`, `creatorId`, `name`, `notes`, `trackChanges`, `dateLastMerged`) VALUES
(2, NULL, 5, 'First draft', NULL, 0, NULL),
(3, NULL, 5, 'First draft', NULL, 0, NULL),
(4, NULL, 5, 'First draft', NULL, 0, NULL),
(5, NULL, 5, 'First draft', NULL, 0, NULL),
(6, NULL, 5, 'First draft', NULL, 0, NULL),
(7, NULL, 5, 'First draft', NULL, 0, NULL),
(8, NULL, 5, 'First draft', NULL, 0, NULL),
(9, NULL, 5, 'First draft', NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `elementindexsettings`
--

CREATE TABLE `elementindexsettings` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `settings` text,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `elementindexsettings`
--

INSERT INTO `elementindexsettings` (`id`, `type`, `settings`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'craft\\elements\\Category', '{\"sources\":{\"group:246403c9-d2b5-4039-a1e7-7d8bc803affe\":{\"headerColHeading\":\"Name\",\"tableAttributes\":{\"1\":\"link\"}}}}', '2021-02-01 21:36:17', '2021-02-01 21:36:17', '224ffd76-3d9e-4a5e-9071-b96139b0dd63'),
(2, 'craft\\elements\\Asset', '{\"sources\":{\"folder:fa636cf6-9ae3-43b3-a257-b3e743c63ad3\":{\"tableAttributes\":{\"1\":\"filename\",\"2\":\"dateModified\",\"3\":\"link\",\"4\":\"kind\",\"5\":\"provider\"}}}}', '2021-02-02 16:49:09', '2021-02-02 16:49:09', '11af857c-be5e-45f9-ad68-77cb792fcd92'),
(3, 'craft\\elements\\Entry', '{\"sources\":{\"section:703b5eed-0225-4060-81f0-38e05ea2dcb9\":{\"tableAttributes\":{\"1\":\"postDate\",\"2\":\"link\",\"3\":\"field:45\"}},\"*\":{\"tableAttributes\":{\"1\":\"section\",\"2\":\"postDate\",\"3\":\"expiryDate\",\"4\":\"link\"}},\"singles\":{\"tableAttributes\":{\"1\":\"link\"}}}}', '2021-02-04 18:56:47', '2021-02-04 18:56:47', '018c958b-a290-43d3-ab91-399c990953ff');

-- --------------------------------------------------------

--
-- Table structure for table `elements`
--

CREATE TABLE `elements` (
  `id` int(11) NOT NULL,
  `draftId` int(11) DEFAULT NULL,
  `revisionId` int(11) DEFAULT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `archived` tinyint(1) NOT NULL DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `elements`
--

INSERT INTO `elements` (`id`, `draftId`, `revisionId`, `fieldLayoutId`, `type`, `enabled`, `archived`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, NULL, NULL, 6, 'craft\\elements\\Entry', 1, 0, '2021-01-30 17:04:54', '2021-02-01 15:14:32', NULL, '86dfba1d-1980-4e67-bdd3-c0dbf9b05fa0'),
(2, NULL, 1, 6, 'craft\\elements\\Entry', 1, 0, '2021-01-30 17:04:54', '2021-01-30 17:04:54', NULL, '2dd23b2b-c04e-45a7-836b-e07802ca4adb'),
(3, NULL, NULL, 8, 'craft\\elements\\Entry', 1, 0, '2021-01-30 17:04:54', '2021-02-04 20:30:05', NULL, 'b6fcb528-ccac-4714-be50-9767f8eadad3'),
(4, NULL, 2, 8, 'craft\\elements\\Entry', 1, 0, '2021-01-30 17:04:54', '2021-01-30 17:04:54', NULL, 'ac2eba24-40f4-4d72-bdff-5d6ad9d7fad6'),
(5, NULL, NULL, NULL, 'craft\\elements\\User', 1, 0, '2021-01-30 17:04:55', '2021-02-01 15:12:43', NULL, 'd86ec0f8-c4a7-4df3-b35d-957d8126e1ff'),
(6, NULL, 3, 8, 'craft\\elements\\Entry', 1, 0, '2021-01-30 17:07:27', '2021-01-30 17:07:27', NULL, '61d89b0e-84d3-4081-90c5-9637b85260e9'),
(8, NULL, NULL, 4, 'craft\\elements\\Category', 1, 0, '2021-01-31 19:24:44', '2021-01-31 19:24:44', '2021-02-01 21:31:05', '14ed593a-9374-4d32-85c8-155b3f1bcf07'),
(9, NULL, NULL, 3, 'craft\\elements\\Asset', 1, 0, '2021-01-31 19:25:07', '2021-01-31 19:25:07', NULL, 'e0987779-82c5-47bd-b411-dc153df11132'),
(10, NULL, NULL, 5, 'craft\\elements\\Entry', 1, 0, '2021-01-31 19:25:13', '2021-02-02 15:36:51', '2021-02-04 18:55:05', '80762105-7d44-47bd-b398-d44f733d91fb'),
(11, NULL, 4, 5, 'craft\\elements\\Entry', 1, 0, '2021-01-31 19:25:13', '2021-01-31 19:25:13', '2021-02-04 18:55:05', '3f0ed58e-8edb-409f-9f5f-23ca3b2b59f7'),
(13, NULL, NULL, 4, 'craft\\elements\\Category', 1, 0, '2021-01-31 19:26:18', '2021-01-31 19:26:18', '2021-02-01 21:31:05', '383a6da8-a2f1-4bef-9321-5ea4b39f8ef8'),
(14, NULL, NULL, 3, 'craft\\elements\\Asset', 1, 0, '2021-01-31 19:26:52', '2021-01-31 19:26:52', NULL, 'fb360243-2477-4f33-a92b-bdd74b63c38a'),
(15, NULL, NULL, 5, 'craft\\elements\\Entry', 1, 0, '2021-01-31 19:26:55', '2021-02-02 15:36:44', '2021-02-04 18:55:05', 'a096e0a8-7690-4064-a550-734f6c9b97f7'),
(16, NULL, 5, 5, 'craft\\elements\\Entry', 1, 0, '2021-01-31 19:26:55', '2021-01-31 19:26:55', '2021-02-04 18:55:05', '8837072d-5957-4830-8922-df7887143c5a'),
(17, NULL, 6, 6, 'craft\\elements\\Entry', 1, 0, '2021-01-31 19:29:26', '2021-01-31 19:29:26', NULL, 'bd3c3f18-8a85-4ce1-8531-e6cb99e7c708'),
(18, NULL, 7, 6, 'craft\\elements\\Entry', 1, 0, '2021-02-01 15:13:12', '2021-02-01 15:13:12', NULL, '9e10927b-da8e-424b-931c-4e138090b870'),
(19, NULL, 8, 6, 'craft\\elements\\Entry', 1, 0, '2021-02-01 15:14:32', '2021-02-01 15:14:32', NULL, 'adcfa9e3-af32-429d-b76c-6463dd618961'),
(21, NULL, NULL, 9, 'craft\\elements\\Entry', 1, 0, '2021-02-01 15:47:20', '2021-02-02 20:01:19', '2021-02-04 18:54:51', '4a1b70b2-4d06-4db1-987b-5870ad45d6ab'),
(22, NULL, 9, 9, 'craft\\elements\\Entry', 1, 0, '2021-02-01 15:47:20', '2021-02-01 15:47:20', '2021-02-04 18:54:51', '7e5d5d2a-6f53-48ee-aab0-e7eae34d83bb'),
(23, NULL, 10, 9, 'craft\\elements\\Entry', 1, 0, '2021-02-01 15:47:43', '2021-02-01 15:47:43', '2021-02-04 18:54:51', 'df00f5e8-fddb-47d6-ace2-9b6e77c08155'),
(24, NULL, NULL, 3, 'craft\\elements\\Asset', 1, 0, '2021-02-01 15:51:29', '2021-02-01 15:51:29', NULL, '4ece947a-b0a6-4446-863d-c796c78dfc9a'),
(25, NULL, 11, 9, 'craft\\elements\\Entry', 1, 0, '2021-02-01 15:51:39', '2021-02-01 15:51:39', '2021-02-04 18:54:51', 'fa3a66cd-ff66-4ce2-9361-e186aaa37843'),
(27, NULL, NULL, 7, 'craft\\elements\\Entry', 1, 0, '2021-02-01 17:45:41', '2021-02-04 17:31:46', NULL, '5cd0bb84-ee93-4c49-80f8-8038327c1077'),
(28, NULL, 12, 7, 'craft\\elements\\Entry', 1, 0, '2021-02-01 17:45:41', '2021-02-01 17:45:41', NULL, '16511cc6-11ec-4c45-9e0e-028e7bb09009'),
(29, 2, NULL, 7, 'craft\\elements\\Entry', 1, 0, '2021-02-01 20:00:23', '2021-02-01 20:00:23', NULL, '8e16803d-921c-45d2-b8c6-24b07d6c853f'),
(30, NULL, NULL, 3, 'craft\\elements\\Asset', 1, 0, '2021-02-01 21:12:02', '2021-02-01 21:12:02', NULL, 'cefee242-3704-45a3-bad2-b152a7ebebd5'),
(31, NULL, NULL, 3, 'craft\\elements\\Asset', 1, 0, '2021-02-01 21:12:06', '2021-02-01 21:12:06', NULL, '5f3d5f29-1546-431d-8146-a06c1910babd'),
(32, NULL, NULL, 3, 'craft\\elements\\Asset', 1, 0, '2021-02-01 21:12:10', '2021-02-01 21:12:10', NULL, '4ee05abf-d1e4-4e03-a46c-d819131611c4'),
(33, NULL, NULL, 3, 'craft\\elements\\Asset', 1, 0, '2021-02-01 21:12:13', '2021-02-01 21:12:13', NULL, 'b3bcef3e-468e-402d-bbf8-aadab21240a0'),
(34, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-01 21:14:54', '2021-02-02 16:44:05', '2021-02-02 18:31:21', '3af1d2c0-189d-4f21-99c3-989b19c9a4e4'),
(35, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-01 21:14:54', '2021-02-02 16:44:05', '2021-02-02 18:31:21', '82e681de-94e0-47c9-952a-ad6d9c14bc8e'),
(36, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-01 21:14:54', '2021-02-02 16:44:05', '2021-02-02 18:31:21', '5bfc978e-c6f6-458d-b64f-0f459c7918f7'),
(37, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-01 21:14:54', '2021-02-02 16:44:05', '2021-02-02 18:31:21', 'bff9a89c-a08e-4d4c-a6fa-568b37aac5d8'),
(38, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-01 21:14:54', '2021-02-02 16:44:05', '2021-02-02 18:30:37', '8f39c8b6-035b-4dca-992e-50bf77f756f9'),
(39, NULL, 13, 7, 'craft\\elements\\Entry', 1, 0, '2021-02-01 21:14:54', '2021-02-01 21:14:54', NULL, 'a7efeee0-3231-4598-9b6a-8cae1fd1600d'),
(40, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-01 21:14:54', '2021-02-01 21:14:54', NULL, '9f4ba325-9cb1-4444-bf99-db551a4e6842'),
(41, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-01 21:14:54', '2021-02-01 21:14:54', NULL, 'a73294e7-2a78-40f0-8511-f644eccaffb8'),
(42, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-01 21:14:54', '2021-02-01 21:14:54', NULL, 'b4b4f78d-5afd-49d6-9476-97cdf592c07b'),
(43, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-01 21:14:54', '2021-02-01 21:14:54', NULL, '0eaa46e0-a327-452e-9de9-b625e8614b3a'),
(44, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-01 21:14:54', '2021-02-01 21:14:54', NULL, '78c1ad3a-5be8-40b7-8449-c7ef04d315b6'),
(45, 3, NULL, 5, 'craft\\elements\\Entry', 1, 0, '2021-02-01 21:24:16', '2021-02-01 21:24:16', NULL, '73b14aa7-4485-4af4-a805-5bc452a80a5c'),
(46, 6, NULL, 5, 'craft\\elements\\Entry', 1, 0, '2021-02-01 21:30:21', '2021-02-01 21:30:21', NULL, 'bb89064a-9294-4a21-b4e9-094027e57dcd'),
(47, NULL, NULL, 4, 'craft\\elements\\Category', 1, 0, '2021-02-01 21:31:13', '2021-02-01 21:31:13', '2021-02-02 15:34:28', 'e2fc48e2-c245-4cb4-963f-fa8a8e0d71f9'),
(48, NULL, NULL, 4, 'craft\\elements\\Category', 1, 0, '2021-02-01 21:31:21', '2021-02-01 21:31:21', '2021-02-02 15:34:28', '33d1f6bf-0494-4da9-83f2-2ad140c390d4'),
(49, NULL, NULL, 4, 'craft\\elements\\Category', 1, 0, '2021-02-01 21:31:28', '2021-02-01 21:31:28', '2021-02-02 15:34:28', '2ebb3cc9-a77c-4286-b88b-4977e4cae648'),
(50, 7, NULL, 5, 'craft\\elements\\Entry', 1, 0, '2021-02-01 21:38:57', '2021-02-01 21:38:57', NULL, '25d547f5-6879-450b-a65e-777afa1caad8'),
(51, 8, NULL, 5, 'craft\\elements\\Entry', 1, 0, '2021-02-02 15:30:13', '2021-02-02 15:30:13', NULL, 'f602a5e3-1d34-4324-b837-26780333d9eb'),
(52, NULL, 14, 5, 'craft\\elements\\Entry', 1, 0, '2021-02-02 15:36:44', '2021-02-02 15:36:44', '2021-02-04 18:55:05', 'e58b03c1-672c-456e-9d20-720f11d85237'),
(53, NULL, 15, 5, 'craft\\elements\\Entry', 1, 0, '2021-02-02 15:36:51', '2021-02-02 15:36:51', '2021-02-04 18:55:05', '4db1e270-c221-4f16-8bb4-e237a5395c14'),
(54, NULL, NULL, 3, 'craft\\elements\\Asset', 1, 0, '2021-02-02 16:43:26', '2021-02-02 16:43:26', NULL, 'be8a4f0f-4985-42c2-a2c9-2e68472662a9'),
(55, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-02 16:44:05', '2021-02-02 16:44:05', '2021-02-02 18:31:21', '503c4b14-5b3a-4e0d-9774-e0e73b29a4b1'),
(56, NULL, 16, 7, 'craft\\elements\\Entry', 1, 0, '2021-02-02 16:44:05', '2021-02-02 16:44:05', NULL, 'aab84625-a0b0-46e0-b26a-6c8c3f5449bd'),
(57, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-02 16:44:05', '2021-02-02 16:44:05', NULL, '4bd1921a-10da-419e-9741-460dc69ca2f4'),
(58, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-02 16:44:05', '2021-02-02 16:44:05', NULL, '3962b800-7f04-48d1-bb1d-de7c90aa8b41'),
(59, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-02 16:44:05', '2021-02-02 16:44:05', NULL, 'ca5bf57b-312c-4ac5-9581-2ea94ce06ce4'),
(60, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-02 16:44:05', '2021-02-02 16:44:05', NULL, '725860a6-2402-418a-9e59-68af0e0974a8'),
(61, NULL, NULL, 11, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-02 16:44:05', '2021-02-02 16:44:05', NULL, 'd37f7cea-0e37-4718-9649-cb795a8a2fe1'),
(62, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-02 16:44:05', '2021-02-02 16:44:05', NULL, '6be7f918-f493-4cf1-9a64-5f46fa59dd89'),
(63, NULL, 17, 7, 'craft\\elements\\Entry', 1, 0, '2021-02-02 18:31:01', '2021-02-02 18:31:01', NULL, 'f3bf8f77-8a01-4258-b5d0-27f44e48b3a3'),
(64, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-02 18:31:01', '2021-02-02 16:44:05', NULL, '9b5c015d-9a52-422f-94d8-732bf774995f'),
(65, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-02 18:31:01', '2021-02-02 16:44:05', NULL, '735da132-12f9-4e8f-9d94-7aa7c96bf503'),
(66, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-02 18:31:01', '2021-02-02 16:44:05', NULL, 'e1f26d75-1c80-4697-95bd-9c48a4d960d8'),
(67, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-02 18:31:01', '2021-02-02 16:44:05', NULL, '860b5180-6a31-4dca-afc9-ad44d35df18f'),
(68, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-02 18:31:01', '2021-02-02 16:44:05', NULL, '6a9ed238-ac63-4e4d-8575-8855da80ed45'),
(69, NULL, 18, 7, 'craft\\elements\\Entry', 1, 0, '2021-02-02 18:31:21', '2021-02-02 18:31:21', NULL, 'dcb85577-a09e-4081-8f84-5a2b5eb6133f'),
(70, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-02 18:33:20', '2021-02-02 22:14:57', '2021-02-02 22:33:05', '83c16d38-f208-4a7d-b64d-01608b8ac0ba'),
(71, NULL, NULL, 12, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-02 18:33:20', '2021-02-02 18:39:02', '2021-02-02 20:59:15', 'da19cfe0-3103-446a-9c8e-92eb9b1eafea'),
(72, NULL, 19, 7, 'craft\\elements\\Entry', 1, 0, '2021-02-02 18:33:20', '2021-02-02 18:33:20', NULL, '46390eaf-9c61-4d89-bb02-6cc21daf3204'),
(73, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-02 18:33:20', '2021-02-02 18:33:20', NULL, 'f80c6c18-b7d8-47d1-95d1-319b48597159'),
(74, NULL, NULL, 12, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-02 18:33:21', '2021-02-02 18:33:20', NULL, 'c4eb36c1-32cd-45bd-9028-8626b9dc4073'),
(75, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-02 18:39:02', '2021-02-03 15:35:06', '2021-02-03 16:55:13', '6a87e91f-e3fb-457a-a48d-1d40b29c5403'),
(76, NULL, 20, 7, 'craft\\elements\\Entry', 1, 0, '2021-02-02 18:39:02', '2021-02-02 18:39:02', NULL, '01d51d7b-957b-41a1-87c9-4db92510df7c'),
(77, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-02 18:39:02', '2021-02-02 18:39:02', NULL, 'eccde794-9573-4359-85e8-677df2cb437e'),
(78, NULL, NULL, 12, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-02 18:39:02', '2021-02-02 18:39:02', NULL, '91e6c125-7795-4e6c-b83b-da10b2dfca62'),
(79, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-02 18:39:02', '2021-02-02 18:39:02', NULL, '08818442-cb2d-4196-a93f-1ab645621781'),
(80, NULL, 21, 7, 'craft\\elements\\Entry', 1, 0, '2021-02-02 19:59:33', '2021-02-02 19:59:33', NULL, '1505ff28-6c43-42fd-9127-aa7d32a7721c'),
(81, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-02 19:59:34', '2021-02-02 18:39:02', NULL, '5b9c5175-606a-4cc0-b19a-e80177499ccc'),
(82, NULL, NULL, 12, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-02 19:59:34', '2021-02-02 18:39:02', NULL, 'f5ca0f83-3bff-491f-b77b-0d9b4346d70b'),
(83, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-02 19:59:34', '2021-02-02 18:39:02', NULL, '46737b50-cdde-4dcc-868c-1e5d83d355be'),
(84, NULL, NULL, 3, 'craft\\elements\\Asset', 1, 0, '2021-02-02 20:01:04', '2021-02-02 20:01:04', NULL, '29a4c998-009b-4d08-a1ec-8277c714b468'),
(85, NULL, 22, 9, 'craft\\elements\\Entry', 1, 0, '2021-02-02 20:01:19', '2021-02-02 20:01:19', '2021-02-04 18:54:51', '5a0799b3-4ded-4eb8-9656-00f486c5e831'),
(86, NULL, NULL, 3, 'craft\\elements\\Asset', 1, 0, '2021-02-02 21:00:07', '2021-02-02 21:00:07', NULL, '397cb0e5-cd04-48b7-be79-0ee6b1085f67'),
(87, NULL, NULL, 3, 'craft\\elements\\Asset', 1, 0, '2021-02-02 21:00:15', '2021-02-02 21:00:15', NULL, 'ae1d62ea-ea5c-4885-822b-9c07d5686b52'),
(88, NULL, NULL, 3, 'craft\\elements\\Asset', 1, 0, '2021-02-02 21:00:27', '2021-02-02 21:00:27', NULL, 'bb0adef1-69af-4fcd-94ae-72a99ac38989'),
(89, NULL, NULL, 3, 'craft\\elements\\Asset', 1, 0, '2021-02-02 21:00:34', '2021-02-02 21:00:34', NULL, 'ae88aaa6-a240-4198-93a0-471b4f65665b'),
(90, NULL, NULL, 13, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-02 21:02:09', '2021-02-03 15:35:06', '2021-02-03 16:55:13', '0d477762-b5bf-46c0-9236-a7f548f5e607'),
(91, NULL, 23, 7, 'craft\\elements\\Entry', 1, 0, '2021-02-02 21:02:09', '2021-02-02 21:02:09', NULL, '8084c254-6c04-4902-a201-e1c1e9f5f3af'),
(92, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-02 21:02:09', '2021-02-02 21:02:09', NULL, '967a4898-d326-4f5b-8961-6ea9e51762fb'),
(93, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-02 21:02:09', '2021-02-02 21:02:09', NULL, 'b3cc3824-4958-4598-ac85-7132461423e1'),
(94, NULL, NULL, 13, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-02 21:02:09', '2021-02-02 21:02:09', NULL, '133faeec-6d95-4307-adbb-2a0c0f832bab'),
(95, NULL, 24, 7, 'craft\\elements\\Entry', 1, 0, '2021-02-02 22:07:18', '2021-02-02 22:07:18', NULL, '259239c7-89be-4232-86eb-3b49176e8321'),
(96, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-02 22:07:18', '2021-02-02 21:02:09', NULL, '74e3b9f4-e0c5-4258-bf4a-6761f3792a7f'),
(97, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-02 22:07:18', '2021-02-02 21:02:09', NULL, '9baee6b0-4934-4943-8979-552144a26ea2'),
(98, NULL, NULL, 13, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-02 22:07:18', '2021-02-02 22:07:18', NULL, '1d9e4951-0852-466a-bfb4-d8e30fb510b7'),
(99, NULL, 25, 7, 'craft\\elements\\Entry', 1, 0, '2021-02-02 22:09:34', '2021-02-02 22:09:34', NULL, 'abaa91c3-a273-4d82-896a-29086394dfc8'),
(100, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-02 22:09:34', '2021-02-02 21:02:09', NULL, '9ae2dab8-6c8b-49d0-ae4b-0fd52c6349e7'),
(101, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-02 22:09:34', '2021-02-02 21:02:09', NULL, '91ecc347-3590-403f-a378-06aa032b6389'),
(102, NULL, NULL, 13, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-02 22:09:34', '2021-02-02 22:09:34', NULL, 'e3457a4a-2707-4070-9651-cc003ef3a460'),
(103, NULL, 26, 7, 'craft\\elements\\Entry', 1, 0, '2021-02-02 22:11:01', '2021-02-02 22:11:01', NULL, '2dd87b92-55c9-4de3-a1c5-2a564b32efd3'),
(104, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-02 22:11:01', '2021-02-02 21:02:09', NULL, '9b3b71fd-4d46-4712-a1f3-5ceb89119866'),
(105, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-02 22:11:02', '2021-02-02 21:02:09', NULL, 'f9811011-faa6-4bba-9515-3eb45574d2a6'),
(106, NULL, NULL, 13, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-02 22:11:02', '2021-02-02 22:09:34', NULL, '33667906-8195-4561-ac2b-83b1c4740cc8'),
(107, NULL, 27, 7, 'craft\\elements\\Entry', 1, 0, '2021-02-02 22:12:05', '2021-02-02 22:12:05', NULL, '8adbd320-4a19-4cf8-a208-947f8db848d7'),
(108, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-02 22:12:05', '2021-02-02 21:02:09', NULL, '623cb292-4419-4e82-9b3e-26c336afc9a6'),
(109, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-02 22:12:05', '2021-02-02 21:02:09', NULL, 'dbb7b257-dc46-4388-b5a0-c4a08473fbee'),
(110, NULL, NULL, 13, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-02 22:12:05', '2021-02-02 22:09:34', NULL, 'a27d7df2-9df0-4076-8395-34f53e0f6c96'),
(111, NULL, NULL, 3, 'craft\\elements\\Asset', 1, 0, '2021-02-02 22:14:46', '2021-02-02 22:14:46', NULL, 'f75fc348-adef-42a7-92d0-72cd89c52741'),
(112, NULL, NULL, 13, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-02 22:14:57', '2021-02-03 15:35:06', '2021-02-03 16:55:13', 'a94691bf-2b06-4fd7-88fe-02a2cc10dafb'),
(113, NULL, 28, 7, 'craft\\elements\\Entry', 1, 0, '2021-02-02 22:14:57', '2021-02-02 22:14:57', NULL, '65099b30-d22b-4985-8e60-46dab3fa21f5'),
(114, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-02 22:14:57', '2021-02-02 22:14:57', NULL, '8750bae1-9be5-41ee-b797-a58182022923'),
(115, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-02 22:14:57', '2021-02-02 22:14:57', NULL, '2dfa4699-60d5-43b6-b866-d946a28a7e5a'),
(116, NULL, NULL, 13, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-02 22:14:57', '2021-02-02 22:14:57', NULL, '3922fb29-8e65-4cf3-8a75-65848fd884f4'),
(117, NULL, NULL, 13, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-02 22:14:57', '2021-02-02 22:14:57', NULL, '3cedf171-8df4-4c95-a1b8-ef5adad57497'),
(118, NULL, NULL, 3, 'craft\\elements\\Asset', 1, 0, '2021-02-02 22:28:24', '2021-02-02 22:28:24', NULL, 'd464e1a3-79c5-4bd0-b767-43139240c400'),
(119, NULL, NULL, 3, 'craft\\elements\\Asset', 1, 0, '2021-02-02 22:31:31', '2021-02-02 22:31:31', NULL, '3a9aaad3-5c59-4d3b-91f5-0988b9ac4639'),
(120, NULL, NULL, 3, 'craft\\elements\\Asset', 1, 0, '2021-02-02 22:32:56', '2021-02-02 22:32:56', NULL, '2164cab4-566e-4b25-a235-0007365b92b5'),
(121, NULL, NULL, 13, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-02 22:33:05', '2021-02-03 15:35:06', '2021-02-03 16:55:13', '83caf9f2-e928-44f6-86a7-2f806474ff6b'),
(122, NULL, NULL, 13, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-02 22:33:05', '2021-02-03 15:35:06', '2021-02-03 16:55:13', '65075e69-9d4f-459c-8477-23c0f66a04f0'),
(123, NULL, 29, 7, 'craft\\elements\\Entry', 1, 0, '2021-02-02 22:33:05', '2021-02-02 22:33:05', NULL, '3c72500e-d5b2-4d49-a8a0-4fc3e0c72411'),
(124, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-02 22:33:05', '2021-02-02 22:33:05', NULL, '6ca1039a-a795-4fc2-8e1c-2c185f7ea341'),
(125, NULL, NULL, 13, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-02 22:33:05', '2021-02-02 22:33:05', NULL, 'eacfdc50-ffe5-4e11-bd3d-6902933d305a'),
(126, NULL, NULL, 13, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-02 22:33:05', '2021-02-02 22:33:05', NULL, '2a297220-8d1d-452e-a70c-f7e94b4d3aec'),
(127, NULL, NULL, 13, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-02 22:33:05', '2021-02-02 22:33:05', NULL, '489b8680-77d2-42d5-ae99-7d19eee59908'),
(128, NULL, NULL, 13, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-02 22:33:05', '2021-02-02 22:33:05', NULL, 'e661f639-5a12-4622-a316-500b6aea60f5'),
(129, NULL, 30, 7, 'craft\\elements\\Entry', 1, 0, '2021-02-02 22:38:49', '2021-02-02 22:38:49', NULL, 'fc46d51b-5fbe-44c6-b594-4e988143ea37'),
(130, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-02 22:38:49', '2021-02-02 22:33:05', NULL, '3290418c-fe36-4519-adcd-5ab77d77d39a'),
(131, NULL, NULL, 13, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-02 22:38:49', '2021-02-02 22:33:05', NULL, '2c12fd26-ee5c-4098-a0b4-f1894e7db3cd'),
(132, NULL, NULL, 13, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-02 22:38:49', '2021-02-02 22:33:05', NULL, '532e25cf-4a1a-46ed-9c1b-10272bc4a32b'),
(133, NULL, NULL, 13, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-02 22:38:49', '2021-02-02 22:33:05', NULL, '382b7dcb-f212-4a5d-9cbc-ac47d463e749'),
(134, NULL, NULL, 13, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-02 22:38:49', '2021-02-02 22:33:05', NULL, '6b8de2a9-cee0-4a50-9841-4a9930398fe6'),
(135, NULL, 31, 7, 'craft\\elements\\Entry', 1, 0, '2021-02-02 22:45:48', '2021-02-02 22:45:48', NULL, '09402080-1ce2-468d-8a73-0a4ac224cb07'),
(136, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-02 22:45:48', '2021-02-02 22:33:05', NULL, '37cbf37c-37fd-4cfb-a07d-f3058c6f74ad'),
(137, NULL, NULL, 13, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-02 22:45:48', '2021-02-02 22:33:05', NULL, '95a6f886-ec52-4cfe-a79f-aa6300d557ca'),
(138, NULL, NULL, 13, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-02 22:45:48', '2021-02-02 22:33:05', NULL, 'bb3f4d37-f5da-4d09-a771-faf479498673'),
(139, NULL, NULL, 13, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-02 22:45:48', '2021-02-02 22:33:05', NULL, '8f01efa4-8ae3-4d4a-a03c-d11f914245db'),
(140, NULL, NULL, 13, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-02 22:45:48', '2021-02-02 22:45:48', NULL, '081c799b-579c-4083-bbdd-e341b5b30223'),
(141, NULL, NULL, 13, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 15:35:06', '2021-02-03 15:35:06', '2021-02-03 16:55:13', '61847d48-f439-46c4-9c8c-033a98fd5bf9'),
(142, NULL, 32, 7, 'craft\\elements\\Entry', 1, 0, '2021-02-03 15:35:06', '2021-02-03 15:35:06', NULL, '6cf2b599-cd04-4984-b000-cd58a96391ae'),
(143, NULL, NULL, 10, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 15:35:06', '2021-02-03 15:35:06', NULL, 'f3497853-dd3e-4f10-8be5-d7eacccdf71f'),
(144, NULL, NULL, 13, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 15:35:06', '2021-02-03 15:35:06', NULL, 'ad9c22fc-583a-4b7f-8721-7a97c560eaec'),
(145, NULL, NULL, 13, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 15:35:06', '2021-02-03 15:35:06', NULL, 'dcc007f8-2211-4931-9737-af8ca04435eb'),
(146, NULL, NULL, 13, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 15:35:06', '2021-02-03 15:35:06', NULL, '044459c8-c931-4c8e-a0b8-321fd74e0176'),
(147, NULL, NULL, 13, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 15:35:06', '2021-02-03 15:35:06', NULL, '16e1cd94-f7b4-46e9-aff1-ac8b2013c67d'),
(148, NULL, NULL, 13, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 15:35:07', '2021-02-03 15:35:06', NULL, 'd380bf76-5f2c-4ffa-9115-70ad3a60457d'),
(149, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 17:14:27', '2021-02-03 18:20:26', '2021-02-03 19:03:20', '10ba02b4-35b8-4f73-b3fa-2db42653612b'),
(150, NULL, 33, 7, 'craft\\elements\\Entry', 1, 0, '2021-02-03 17:14:27', '2021-02-03 17:14:27', NULL, 'c145d138-33ab-4222-a87e-3ee161fd0b67'),
(151, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 17:14:27', '2021-02-03 17:14:27', NULL, '3de854ba-8909-4eeb-8b53-edf0dd135bcd'),
(152, NULL, NULL, 17, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 17:33:22', '2021-02-03 18:20:26', '2021-02-03 19:03:20', '76f12df4-aae9-4746-be18-d20bb996481a'),
(153, NULL, 34, 7, 'craft\\elements\\Entry', 1, 0, '2021-02-03 17:33:22', '2021-02-03 17:33:22', NULL, '5f9a0a9c-6661-457a-b1c0-d3bf27a07150'),
(154, NULL, NULL, 17, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 17:33:23', '2021-02-03 17:33:22', NULL, '42f81870-dc67-408d-abd1-b47a4a8a2fbb'),
(155, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 17:33:23', '2021-02-03 17:33:23', NULL, 'bf63009f-ad9c-41f8-8d23-768e980ce5e6'),
(156, NULL, NULL, 17, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 17:43:07', '2021-02-03 18:20:26', '2021-02-03 19:03:20', '474e234c-751e-48d8-9b8e-744c00fef5eb'),
(157, NULL, 35, 7, 'craft\\elements\\Entry', 1, 0, '2021-02-03 17:43:07', '2021-02-03 17:43:07', NULL, '3b98c6a6-0337-4a34-bbba-467b42ddbb47'),
(158, NULL, NULL, 17, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 17:43:07', '2021-02-03 17:43:07', NULL, '354d3263-39d5-4b2c-8cdd-af8db70cccd7'),
(159, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 17:43:07', '2021-02-03 17:43:07', NULL, '66788c49-6404-4cdc-94f2-c17960d95849'),
(160, NULL, NULL, 17, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 17:43:07', '2021-02-03 17:43:07', NULL, '95c9b927-1f39-462f-9f2c-bf3461d02d9f'),
(161, NULL, NULL, 17, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 17:44:12', '2021-02-03 18:20:26', '2021-02-03 19:03:20', '88cba4ee-7167-4097-a998-062f98a94f3e'),
(162, NULL, 36, 7, 'craft\\elements\\Entry', 1, 0, '2021-02-03 17:44:12', '2021-02-03 17:44:12', NULL, 'b55627d0-2d77-4741-a503-9c7a5e0bca62'),
(163, NULL, NULL, 17, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 17:44:12', '2021-02-03 17:44:12', NULL, 'b89adc86-12f9-4030-82dd-1536642c4270'),
(164, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 17:44:12', '2021-02-03 17:44:12', NULL, '232f5363-c5a6-4fca-a5ae-bb0a3281efa2'),
(165, NULL, NULL, 17, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 17:44:12', '2021-02-03 17:44:12', NULL, '53c88ae9-af12-4fd0-8a53-ae945cb5c9d8'),
(166, NULL, NULL, 17, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 17:44:12', '2021-02-03 17:44:12', NULL, '47daae8d-3721-40a2-9922-984907511db6'),
(167, NULL, 37, 7, 'craft\\elements\\Entry', 1, 0, '2021-02-03 17:45:24', '2021-02-03 17:45:24', NULL, 'd300addf-f7be-42c8-83c6-ddd5c89ef5ac'),
(168, NULL, NULL, 17, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 17:45:24', '2021-02-03 17:45:24', NULL, '7e7ad763-fa99-4933-93c7-6e54cfa3d5b8'),
(169, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 17:45:24', '2021-02-03 17:44:12', NULL, '7284c4e2-8d63-4cf2-8aae-b1bd2b70e784'),
(170, NULL, NULL, 17, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 17:45:24', '2021-02-03 17:44:12', NULL, '8df4d408-4c42-4630-a7f7-e488949f51fe'),
(171, NULL, NULL, 17, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 17:45:24', '2021-02-03 17:44:12', NULL, '6407d3d3-92fd-40ab-b566-61652cc02162'),
(172, NULL, 38, 7, 'craft\\elements\\Entry', 1, 0, '2021-02-03 18:14:20', '2021-02-03 18:14:20', NULL, '369dbe00-5532-473f-8624-45e3ea63c904'),
(173, NULL, NULL, 17, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 18:14:21', '2021-02-03 18:14:20', NULL, '0e843894-3687-4d07-b6bf-a1297b22087e'),
(174, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 18:14:21', '2021-02-03 17:44:12', NULL, 'af91422f-e42f-47f3-8c33-fc38ec0c7b66'),
(175, NULL, NULL, 17, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 18:14:21', '2021-02-03 17:44:12', NULL, '581bbb50-92f9-4af4-820a-c0a522f8c2da'),
(176, NULL, NULL, 17, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 18:14:21', '2021-02-03 17:44:12', NULL, 'bb1ef258-444b-4ddd-b02d-9219cb8d1b7e'),
(177, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 18:20:26', '2021-02-04 21:41:13', NULL, 'da0578ff-f5b4-4707-851a-d144f9dadbd7'),
(178, NULL, 39, 7, 'craft\\elements\\Entry', 1, 0, '2021-02-03 18:20:26', '2021-02-03 18:20:26', NULL, '51517121-2b1a-41cc-bf77-c81d64cfcd5e'),
(179, NULL, NULL, 17, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 18:20:26', '2021-02-03 18:20:26', NULL, '29a785b0-1ddf-4fda-a4dd-805ca6f626a4'),
(180, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 18:20:26', '2021-02-03 18:20:26', NULL, '2c9801e5-44e6-4678-a0b7-a567da92d6c9'),
(181, NULL, NULL, 17, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 18:20:26', '2021-02-03 18:20:26', NULL, 'a14e82ad-4c88-4df4-9302-42d9c881c0b8'),
(182, NULL, NULL, 17, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 18:20:26', '2021-02-03 18:20:26', NULL, '96395cc1-e1d6-4a8c-8435-4947c04ac4cd'),
(183, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 18:20:26', '2021-02-03 18:20:26', NULL, '7c7e480c-8fec-48a5-bd62-71ac4f40999f'),
(184, NULL, 40, 7, 'craft\\elements\\Entry', 1, 0, '2021-02-03 19:01:22', '2021-02-03 19:01:22', NULL, 'd7cc3b47-8239-4f4e-834e-e35da39d39fc'),
(185, NULL, NULL, 17, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 19:01:22', '2021-02-03 18:20:26', NULL, '6c555eef-4df2-446d-9a8f-ae252b0e01cb'),
(186, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 19:01:22', '2021-02-03 18:20:26', NULL, '3a006a17-8a62-4f46-937e-b7dd1e87810e'),
(187, NULL, NULL, 17, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 19:01:23', '2021-02-03 18:20:26', NULL, '216e9e58-97e0-4358-b848-3b42897b155c'),
(188, NULL, NULL, 17, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 19:01:23', '2021-02-03 18:20:26', NULL, '8782fd15-66f4-4ed3-b940-3a3fb42bd184'),
(189, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 19:01:23', '2021-02-03 18:20:26', NULL, '67f0cfc3-8f5f-4c23-aa08-074c697be238'),
(190, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 19:03:20', '2021-02-04 21:41:13', NULL, 'b6d17567-f6e4-4b97-beb8-f0e14215ed28'),
(191, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 19:03:20', '2021-02-04 21:41:13', NULL, '92394632-5555-47e1-952d-b38d3a1cd355'),
(192, NULL, 41, 7, 'craft\\elements\\Entry', 1, 0, '2021-02-03 19:03:20', '2021-02-03 19:03:20', NULL, '92ae580a-7b9f-4590-b914-7bc709be7987'),
(193, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 19:03:20', '2021-02-03 19:03:20', NULL, 'aa6d6059-ecbc-43c4-b84c-1d81e34837ae'),
(194, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 19:03:20', '2021-02-03 19:03:20', NULL, '81851965-6dc4-46ea-9ecd-ab3bdb0b7190'),
(195, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 19:03:20', '2021-02-03 19:03:20', NULL, 'b567dd09-e190-4d9c-93cf-e81a21613d04'),
(196, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 19:08:10', '2021-02-04 21:41:13', NULL, '37e39b13-c1c3-411a-aed3-ef85321d138a'),
(197, NULL, 42, 7, 'craft\\elements\\Entry', 1, 0, '2021-02-03 19:08:09', '2021-02-03 19:08:09', NULL, '9ce47d8d-e832-4cc2-8665-19a9d18ed23e'),
(198, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 19:08:10', '2021-02-03 19:08:10', NULL, '77d93094-99cc-42e0-aaee-a625bcd45d2f'),
(199, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 19:08:10', '2021-02-03 19:08:10', NULL, '76116b20-7d55-4128-a164-c6664f7613fe'),
(200, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 19:08:10', '2021-02-03 19:08:10', NULL, '0b95c5c5-cd22-48fd-afee-c6fec3db4a7b'),
(201, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 19:08:10', '2021-02-03 19:08:10', NULL, 'a8b7621e-0e99-4e78-ac43-0a16d5e050f7'),
(202, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 19:10:09', '2021-02-03 20:41:48', '2021-02-03 20:42:20', '12c7f6b0-b7b0-471f-b81e-3145b69c0fd0'),
(203, NULL, 43, 7, 'craft\\elements\\Entry', 1, 0, '2021-02-03 19:10:09', '2021-02-03 19:10:09', NULL, '2869b891-3773-4d3e-b345-46bc5e3080a0'),
(204, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 19:10:09', '2021-02-03 19:10:09', NULL, 'f97d0861-a24b-480e-8368-7b8bbf505332'),
(205, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 19:10:09', '2021-02-03 19:10:09', NULL, '0daf87e5-87da-4c09-8076-e08dc185b5c9'),
(206, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 19:10:09', '2021-02-03 19:10:09', NULL, '68fd9df9-b0b8-416d-8fa2-bc35627ae1ad'),
(207, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 19:10:09', '2021-02-03 19:10:09', NULL, '3ccb9f82-bca3-4fd4-9044-3ab1809150c5'),
(208, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 19:10:09', '2021-02-03 19:10:09', NULL, 'baa00bbf-b95f-4277-9281-31865adcd1f0'),
(209, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 19:10:53', '2021-02-03 20:41:48', '2021-02-03 20:42:20', 'f14463e3-ba1b-4f6d-b37f-4ba3d60b0eaa'),
(210, NULL, 44, 7, 'craft\\elements\\Entry', 1, 0, '2021-02-03 19:10:53', '2021-02-03 19:10:53', NULL, '709dfbde-5284-454c-b84b-0fa468408032'),
(211, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 19:10:53', '2021-02-03 19:10:53', NULL, 'acfcd310-9f11-4bad-baea-13af05f54bc6'),
(212, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 19:10:53', '2021-02-03 19:10:53', NULL, 'b8f59c6e-de1e-4a26-bf8c-c4fadb69f73e'),
(213, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 19:10:53', '2021-02-03 19:10:53', NULL, '0dca9c66-ee79-45da-8541-62c7ba1f3354'),
(214, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 19:10:53', '2021-02-03 19:10:53', NULL, '8fd5c19e-f33f-459f-b055-a04ea19009ec'),
(215, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 19:10:53', '2021-02-03 19:10:53', NULL, '60d75a53-7557-436e-980d-05d4517fb863'),
(216, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 19:10:53', '2021-02-03 19:10:53', NULL, '1fce9286-9c06-4a80-93a6-fff8a42d6d21'),
(217, NULL, 45, 7, 'craft\\elements\\Entry', 1, 0, '2021-02-03 19:11:38', '2021-02-03 19:11:38', NULL, 'e99bb820-d257-4772-8e93-a2fa45b3aed0'),
(218, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 19:11:39', '2021-02-03 19:10:53', NULL, '1e325241-b48b-4bbe-a640-5b4b26fb6e89'),
(219, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 19:11:39', '2021-02-03 19:10:53', NULL, '53426ba3-c8e5-480c-b047-23fb92017d0b'),
(220, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 19:11:39', '2021-02-03 19:10:53', NULL, '8ed4f0b6-15ce-4ba8-980a-45252fd3272f'),
(221, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 19:11:39', '2021-02-03 19:10:53', NULL, '1a76d7d1-d568-42b3-8bf7-791bcdf225ff'),
(222, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 19:11:39', '2021-02-03 19:10:53', NULL, 'd797e31d-922f-48d9-8da1-29c39f26bb3b'),
(223, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 19:11:39', '2021-02-03 19:11:38', NULL, '17cfe217-4e1b-47f4-b4e9-cfcda99a5249'),
(224, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 19:15:28', '2021-02-03 20:41:48', '2021-02-03 20:42:20', '3c0e5bf6-ce90-4500-bc08-e7d7b0f222eb'),
(225, NULL, 46, 7, 'craft\\elements\\Entry', 1, 0, '2021-02-03 19:15:28', '2021-02-03 19:15:28', NULL, 'c8daa2c6-fda0-465c-ade1-dfaaf017aed0'),
(226, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 19:15:29', '2021-02-03 19:15:28', NULL, 'd39f6472-5d0b-4246-8d74-0b269542ab81'),
(227, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 19:15:29', '2021-02-03 19:15:28', NULL, 'c1654285-f942-42d0-9d8d-c0260bf525ba'),
(228, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 19:15:29', '2021-02-03 19:15:28', NULL, 'f9465f3a-f783-4241-bc8d-9f53714d945c'),
(229, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 19:15:29', '2021-02-03 19:15:28', NULL, '6cbde773-adad-41ee-afc7-34447302f54d'),
(230, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 19:15:29', '2021-02-03 19:15:28', NULL, '63f88878-e5af-4d01-bad5-113a8c58a7c5'),
(231, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 19:15:29', '2021-02-03 19:15:28', NULL, 'a22c3adb-e09a-4347-a7fb-67d7805ad722'),
(232, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 19:15:29', '2021-02-03 19:15:28', NULL, 'e8dce241-115b-4cc5-9e2a-14b08b88daf1'),
(233, NULL, 47, 7, 'craft\\elements\\Entry', 1, 0, '2021-02-03 19:49:45', '2021-02-03 19:49:45', NULL, 'c7315d38-7822-48c0-8e0b-d7a5bbbdf9ab'),
(234, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 19:49:45', '2021-02-03 19:15:28', NULL, '1639c7fd-9569-4115-b673-b346bdd79e84'),
(235, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 19:49:45', '2021-02-03 19:15:28', NULL, 'd5305d61-cf8a-48e8-a15c-be2e1870a457'),
(236, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 19:49:45', '2021-02-03 19:15:28', NULL, '7d66f410-f901-4504-9b68-85d7600e56a3'),
(237, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 19:49:45', '2021-02-03 19:15:28', NULL, '8eb2e22c-67ad-4356-90ce-935d3f34613f'),
(238, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 19:49:45', '2021-02-03 19:15:28', NULL, 'b39fea2c-6310-4002-a98e-c475f86b2d95'),
(239, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 19:49:46', '2021-02-03 19:15:28', NULL, '0a6cc39a-34c0-41db-84d8-2431711ccc6f'),
(240, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 19:49:46', '2021-02-03 19:15:28', NULL, '7c9775cb-d823-4806-b938-22156e915cb5'),
(241, NULL, 48, 7, 'craft\\elements\\Entry', 1, 0, '2021-02-03 19:57:19', '2021-02-03 19:57:19', NULL, '0e122b07-0704-46d5-af15-1a1843f77243'),
(242, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 19:57:19', '2021-02-03 19:15:28', NULL, '4bb3c38a-2e8a-4f7b-8122-dab577029954'),
(243, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 19:57:19', '2021-02-03 19:15:28', NULL, '4d3de7b6-4c54-41c7-8a21-470e980e62a0'),
(244, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 19:57:19', '2021-02-03 19:15:28', NULL, 'e5e9da30-0fe5-405c-836f-85838ef2a66a'),
(245, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 19:57:19', '2021-02-03 19:15:28', NULL, 'eb420652-8d49-45c5-a39c-912feefa25d3'),
(246, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 19:57:19', '2021-02-03 19:15:28', NULL, '3c3f97d6-30ff-4e77-81e3-0dee1cc9dead'),
(247, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 19:57:19', '2021-02-03 19:15:28', NULL, '89ca4458-7115-4263-8387-748d2f8e3366'),
(248, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 19:57:19', '2021-02-03 19:15:28', NULL, '9ea20094-f2d7-4833-a418-d2ae14e4af5a'),
(249, NULL, 49, 7, 'craft\\elements\\Entry', 1, 0, '2021-02-03 19:57:57', '2021-02-03 19:57:57', NULL, 'b660467f-a22f-446f-a8c8-fa10640316a2'),
(250, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 19:57:57', '2021-02-03 19:15:28', NULL, '4a0cf8f6-99c1-4eda-b1f2-bab0df964c03'),
(251, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 19:57:57', '2021-02-03 19:15:28', NULL, 'fb1e4cbf-5967-405c-9fe9-430eb7a71bfa'),
(252, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 19:57:57', '2021-02-03 19:15:28', NULL, 'e6a11c24-1251-4e71-9300-c9715bf78890'),
(253, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 19:57:57', '2021-02-03 19:15:28', NULL, '0474be3b-1bb8-4a9f-8c7a-102955576cdd'),
(254, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 19:57:57', '2021-02-03 19:15:28', NULL, '5d528729-6d80-4e3c-9b09-436212e49c08'),
(255, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 19:57:57', '2021-02-03 19:15:28', NULL, '9a8ad7d4-d6c2-4f78-a0b3-1738602e7070'),
(256, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 19:57:57', '2021-02-03 19:15:28', NULL, '0b04e2ee-2431-42e4-b964-412666fe1955'),
(257, NULL, NULL, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 20:41:48', '2021-02-04 21:41:13', NULL, '69a0c9aa-0ac4-4b87-b6cf-ea99bcdf8c1a'),
(258, NULL, 50, 7, 'craft\\elements\\Entry', 1, 0, '2021-02-03 20:41:48', '2021-02-03 20:41:48', NULL, 'cb2b1077-89d1-460f-ace3-98d6ee3101d4'),
(259, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 20:41:48', '2021-02-03 20:41:48', NULL, '5f4a58b3-4e1c-4a2c-8f75-4cd110e87981'),
(260, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 20:41:48', '2021-02-03 20:41:48', NULL, '2e9c9152-790a-401c-8233-1cb55d480f4b'),
(261, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 20:41:48', '2021-02-03 20:41:48', NULL, 'c76bd12b-bd1b-447f-9baf-fd4409fba37f'),
(262, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 20:41:48', '2021-02-03 20:41:48', NULL, '4c003fa7-9ef5-4148-bb4b-a5f2cfb80b9a'),
(263, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 20:41:48', '2021-02-03 20:41:48', NULL, 'c1e8c203-dfca-40c3-b274-3e6855e0fd47'),
(264, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 20:41:48', '2021-02-03 20:41:48', NULL, '25ee1c0a-8bc8-49c1-b718-ba621bedeece'),
(265, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 20:41:48', '2021-02-03 20:41:48', NULL, '71abfa06-c46d-4543-9cf2-75c8e1b6739d'),
(266, NULL, NULL, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 20:41:48', '2021-02-03 20:41:48', NULL, 'd05351d9-89ec-4936-ab62-a9b16c60710c'),
(267, NULL, 51, 7, 'craft\\elements\\Entry', 1, 0, '2021-02-03 20:42:20', '2021-02-03 20:42:20', NULL, '40665186-9763-4a12-bbb8-d475f0cdd128'),
(268, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 20:42:20', '2021-02-03 20:42:20', NULL, 'b53e1306-526a-4995-bca3-8999cdbaea56'),
(269, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 20:42:20', '2021-02-03 20:42:20', NULL, 'a0eed12c-620c-4053-8c0e-15fbb0cecb98'),
(270, NULL, NULL, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 20:42:20', '2021-02-03 20:42:20', NULL, '706a50e4-fb84-4758-9348-15eef2814dcb'),
(271, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 20:42:20', '2021-02-03 20:42:20', NULL, 'bb589168-d0d2-485f-9ccd-2a6e3fcdd3d6'),
(272, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 20:42:20', '2021-02-03 20:42:20', NULL, '3ecddc1f-cb16-42f2-bba9-11f96908dc75'),
(273, NULL, 52, 7, 'craft\\elements\\Entry', 1, 0, '2021-02-03 20:43:23', '2021-02-03 20:43:23', NULL, '1a111dca-f061-474f-bddc-e8ef1667b4fb'),
(274, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 20:43:23', '2021-02-03 20:42:20', NULL, 'be91cb47-094c-4d5b-a050-ce35b76db3e4'),
(275, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 20:43:23', '2021-02-03 20:42:20', NULL, '7a0a7467-a796-485f-8b41-99923c55fe2a'),
(276, NULL, NULL, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 20:43:23', '2021-02-03 20:42:20', NULL, '50156672-96bf-4a81-8865-067e1dc74c73'),
(277, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 20:43:23', '2021-02-03 20:42:20', NULL, 'b7235214-8d16-4d8b-83d1-992491f6b354'),
(278, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 20:43:23', '2021-02-03 20:42:20', NULL, '72664925-c906-4793-8f87-0582177843ae'),
(280, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 21:55:38', '2021-02-03 21:55:38', '2021-02-03 21:56:37', 'd4a062d8-f6ed-438d-821c-45e616483b5d'),
(281, NULL, NULL, 3, 'craft\\elements\\Asset', 1, 0, '2021-02-03 21:56:34', '2021-02-03 21:56:34', NULL, 'cefd4597-3760-4264-a1b5-7bcaff09cac8'),
(283, NULL, NULL, 7, 'craft\\elements\\Entry', 1, 0, '2021-02-03 21:56:44', '2021-02-04 18:24:38', NULL, 'bf3af766-8e02-4530-905b-fb068209bbc8'),
(284, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 21:56:44', '2021-02-04 21:41:13', NULL, '0daf41bd-aafe-4a55-afcc-b379b2d86d68'),
(285, NULL, 53, 7, 'craft\\elements\\Entry', 1, 0, '2021-02-03 21:56:43', '2021-02-03 21:56:43', NULL, 'd5066d3d-c40e-45bb-b45f-1e35fa016b64'),
(286, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-03 21:56:44', '2021-02-03 21:56:37', NULL, '649367ff-b6ec-4b42-86b1-208d6f36a30d'),
(287, NULL, 54, 7, 'craft\\elements\\Entry', 1, 0, '2021-02-04 14:51:36', '2021-02-04 14:51:36', NULL, '5dca4f6c-97a2-4d82-9ebd-1558f5b9b24d'),
(288, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-04 14:51:36', '2021-02-03 21:56:37', NULL, 'd6125a62-2210-4b33-b08d-cdf08d66e370'),
(289, NULL, 55, 7, 'craft\\elements\\Entry', 1, 0, '2021-02-04 15:15:01', '2021-02-04 15:15:01', NULL, '54a0a5a1-121f-4761-b4c3-7f4aa57a280d'),
(290, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-04 15:15:01', '2021-02-03 21:56:37', NULL, '48be6031-3821-4a42-9bbc-ab11bd6b46f0'),
(291, NULL, NULL, 18, 'craft\\elements\\Category', 1, 0, '2021-02-04 15:42:35', '2021-02-04 15:42:35', NULL, '5712dca9-68cd-44f2-864d-12156947d47e'),
(292, NULL, 56, 7, 'craft\\elements\\Entry', 1, 0, '2021-02-04 15:42:40', '2021-02-04 15:42:40', NULL, 'ca877a71-f640-4df0-9d30-f0d54781e8e6'),
(293, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-04 15:42:40', '2021-02-03 21:56:37', NULL, 'a3c4a02f-a922-45aa-9e6c-3c0c3c845e2d'),
(294, NULL, 57, 7, 'craft\\elements\\Entry', 1, 0, '2021-02-04 15:42:59', '2021-02-04 15:42:59', NULL, 'e40f7e24-a389-4fa1-81a8-2bc2f6ac1ef3'),
(295, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-04 15:42:59', '2021-02-03 20:42:20', NULL, 'c3d4062a-699a-4158-a451-906059fe5e2b'),
(296, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-04 15:42:59', '2021-02-03 20:42:20', NULL, '42011d18-eb30-4668-b415-f0319f649392'),
(297, NULL, NULL, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-04 15:42:59', '2021-02-03 20:42:20', NULL, 'cab49ff8-c8ff-44d1-8576-e5b4f5173c89'),
(298, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-04 15:42:59', '2021-02-03 20:42:20', NULL, '37a28dfb-3e39-4168-a7fb-37429924564e'),
(299, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-04 15:42:59', '2021-02-03 20:42:20', NULL, 'bc17f327-5efc-4b9e-be23-e39484e33d04'),
(300, NULL, NULL, 18, 'craft\\elements\\Category', 1, 0, '2021-02-04 15:43:11', '2021-02-04 15:43:11', NULL, 'e1e7834b-750c-44d1-b733-d2e752c9480b'),
(301, NULL, NULL, 18, 'craft\\elements\\Category', 1, 0, '2021-02-04 15:43:20', '2021-02-04 15:43:20', NULL, 'ba3a4e5e-7abe-4ec8-af6e-d07f346bfaa6'),
(302, NULL, NULL, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-04 15:45:13', '2021-02-04 21:41:13', NULL, '5c13b65b-e4cf-4e4e-bf2e-6558fe4b9405'),
(303, NULL, 58, 7, 'craft\\elements\\Entry', 1, 0, '2021-02-04 15:45:13', '2021-02-04 15:45:13', NULL, 'bf9afa44-e72f-49c1-b034-075abdfac4c2'),
(304, NULL, NULL, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-04 15:45:14', '2021-02-04 15:45:13', NULL, 'b74ee03f-c365-4f10-a379-7193b75c09e8'),
(305, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-04 15:45:14', '2021-02-04 15:45:14', NULL, '2aa6c8a2-6ef7-4226-aad8-8582e468d8dd'),
(306, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-04 15:45:14', '2021-02-04 15:45:14', NULL, 'e886171e-f505-4432-a0da-b4242053f8c7'),
(307, NULL, NULL, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-04 15:45:14', '2021-02-04 15:45:14', NULL, '6324babb-b507-4f66-b6e7-4239eaf652e8'),
(308, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-04 15:45:14', '2021-02-04 15:45:14', NULL, '855b7960-3095-48bf-99d0-173b4d41be10'),
(309, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-04 15:45:14', '2021-02-04 15:45:14', NULL, '3dff3eec-e010-43b4-a0b8-5bc7816543b3'),
(310, NULL, 59, 7, 'craft\\elements\\Entry', 1, 0, '2021-02-04 15:49:23', '2021-02-04 15:49:23', NULL, '2472cb5e-e128-4610-b78e-de7f8a0f5b07'),
(311, NULL, NULL, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-04 15:49:23', '2021-02-04 15:49:23', NULL, '6e76d565-ed7c-46bd-a5de-0ff261a2146f'),
(312, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-04 15:49:23', '2021-02-04 15:45:14', NULL, '878f915c-3b2b-4d2b-9945-5da294953d4d'),
(313, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-04 15:49:23', '2021-02-04 15:45:14', NULL, 'f7ce6e75-0f77-4696-895e-1eaeb6b2c9f7'),
(314, NULL, NULL, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-04 15:49:23', '2021-02-04 15:45:14', NULL, '9a9ab724-3ecf-44b4-80e0-ecb9a52c07c9'),
(315, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-04 15:49:23', '2021-02-04 15:45:14', NULL, '753e7b1e-824e-4bd6-ba7d-1c1f087e9167'),
(316, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-04 15:49:23', '2021-02-04 15:45:14', NULL, 'ad0ee72d-b3ea-44dc-a374-42c824690b35'),
(318, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-04 15:55:58', '2021-02-04 15:55:58', '2021-02-04 15:56:29', 'ca112920-5593-451c-b034-046a758ac7ac'),
(319, NULL, NULL, 3, 'craft\\elements\\Asset', 1, 0, '2021-02-04 15:56:26', '2021-02-04 15:56:26', NULL, '79662a24-6b12-4b8b-8e65-95363e10ee05'),
(321, NULL, NULL, 7, 'craft\\elements\\Entry', 1, 0, '2021-02-04 15:57:13', '2021-02-04 18:23:16', '2021-02-04 21:48:04', '2dfe66b4-d718-48f9-ae04-48fc679bba0a'),
(322, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-04 15:57:13', '2021-02-04 21:41:12', '2021-02-04 21:48:04', 'f1d33720-d7a0-4bec-b8aa-731bc2c41648'),
(323, NULL, 60, 7, 'craft\\elements\\Entry', 1, 0, '2021-02-04 15:57:13', '2021-02-04 15:57:13', '2021-02-04 21:48:04', '466b6e83-32b6-454e-a93a-76fa3eb6228c'),
(324, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-04 15:57:13', '2021-02-04 15:56:29', NULL, '13294e7d-99d0-4a18-bc80-68cc76c878f7'),
(325, NULL, 61, 7, 'craft\\elements\\Entry', 1, 0, '2021-02-04 16:09:13', '2021-02-04 16:09:13', '2021-02-04 21:48:04', '12b21ddf-467c-436c-af4f-a3cfc8840ef2'),
(326, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-04 16:09:13', '2021-02-04 15:56:29', NULL, '1edc7eeb-49c4-412d-be7b-13fc1165c6dc'),
(328, NULL, NULL, 7, 'craft\\elements\\Entry', 1, 0, '2021-02-04 16:21:50', '2021-02-04 16:41:49', '2021-02-04 21:48:04', 'cc8270f8-be90-4985-92a2-5c7c39f5129d'),
(329, NULL, 62, 7, 'craft\\elements\\Entry', 1, 0, '2021-02-04 16:21:50', '2021-02-04 16:21:50', '2021-02-04 21:48:04', 'da15f305-c7ab-43a8-992e-51229ab923c1'),
(330, NULL, 63, 7, 'craft\\elements\\Entry', 1, 0, '2021-02-04 16:39:45', '2021-02-04 16:39:45', '2021-02-04 21:48:04', '946caa20-d6e0-475d-98e5-746b88727bf9'),
(331, NULL, 64, 7, 'craft\\elements\\Entry', 1, 0, '2021-02-04 16:41:49', '2021-02-04 16:41:49', '2021-02-04 21:48:04', '54fed883-fd4e-439b-a027-cf283b27ab43'),
(332, NULL, NULL, 3, 'craft\\elements\\Asset', 1, 0, '2021-02-04 17:31:38', '2021-02-04 17:31:38', NULL, 'cddab91c-511d-49ec-8c2a-74686f38bff5'),
(333, NULL, 65, 7, 'craft\\elements\\Entry', 1, 0, '2021-02-04 17:31:46', '2021-02-04 17:31:46', NULL, '866b9f28-b6b5-4746-b40c-fbdd73808d80'),
(334, NULL, NULL, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-04 17:31:46', '2021-02-04 16:26:01', NULL, '4dc28ee9-e146-418c-91eb-ab196a9ecd81'),
(335, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-04 17:31:46', '2021-02-04 16:26:01', NULL, '34751306-2bbb-47d6-ad76-fde14abde8a4'),
(336, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-04 17:31:46', '2021-02-04 16:26:01', NULL, '656ee4d7-7a9a-419f-9834-4fbbce5b2de9'),
(337, NULL, NULL, 14, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-04 17:31:47', '2021-02-04 16:26:01', NULL, 'a8358edb-cad0-46a7-9b64-3ca7c91a21a4'),
(338, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-04 17:31:47', '2021-02-04 16:26:01', NULL, 'b06e41ca-028d-4725-b294-46cefc62164c'),
(339, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-04 17:31:47', '2021-02-04 16:26:01', NULL, '985e7642-d26f-44c2-b67c-8df2d96bfc6a'),
(340, NULL, NULL, 3, 'craft\\elements\\Asset', 1, 0, '2021-02-04 18:23:02', '2021-02-04 18:23:02', NULL, 'daa563f8-dd8a-402e-b1d3-5e94a27f3d33');
INSERT INTO `elements` (`id`, `draftId`, `revisionId`, `fieldLayoutId`, `type`, `enabled`, `archived`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(341, NULL, 66, 7, 'craft\\elements\\Entry', 1, 0, '2021-02-04 18:23:16', '2021-02-04 18:23:16', '2021-02-04 21:48:04', 'd89f31e5-0f61-444e-9f5f-ac17f45710f8'),
(342, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-04 18:23:17', '2021-02-04 16:26:01', NULL, '1fe03219-0580-4e94-a168-406a50ecbcbd'),
(343, NULL, NULL, 3, 'craft\\elements\\Asset', 1, 0, '2021-02-04 18:24:35', '2021-02-04 18:24:35', NULL, '15f13a31-c1c3-424c-a770-c9816d141ee9'),
(344, NULL, 67, 7, 'craft\\elements\\Entry', 1, 0, '2021-02-04 18:24:38', '2021-02-04 18:24:38', NULL, '26bd4933-cb38-4f98-96c7-dc278b5cc383'),
(345, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-04 18:24:38', '2021-02-04 16:26:01', NULL, 'c7dbd9da-aa20-4bad-9c79-e9910d5044db'),
(346, NULL, 68, 8, 'craft\\elements\\Entry', 1, 0, '2021-02-04 20:30:05', '2021-02-04 20:30:05', NULL, '2c01e0ab-448f-4b55-86d4-0966fd00fb5c'),
(348, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-04 21:46:37', '2021-02-04 21:46:37', '2021-02-04 21:46:44', 'a9e07beb-5657-4a47-b2cd-63be62678f38'),
(350, NULL, NULL, 20, 'craft\\elements\\Entry', 1, 0, '2021-02-04 21:46:53', '2021-02-04 21:46:52', NULL, '3379168b-2a9c-48bd-b17d-68d20d377843'),
(351, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-04 21:46:53', '2021-02-04 21:46:44', NULL, '648ad995-6886-4eff-a47d-917c8b940fdc'),
(352, NULL, 69, 20, 'craft\\elements\\Entry', 1, 0, '2021-02-04 21:46:52', '2021-02-04 21:46:52', NULL, '0eb7f867-69d1-4745-9a32-14d49a05080a'),
(353, NULL, NULL, 16, 'craft\\elements\\MatrixBlock', 1, 0, '2021-02-04 21:46:53', '2021-02-04 21:46:44', NULL, 'ef12968a-e39b-4534-b3c9-3755893dc525'),
(355, NULL, NULL, 19, 'craft\\elements\\Entry', 1, 0, '2021-02-04 21:47:53', '2021-02-04 21:47:52', NULL, '1661d1f8-8886-4909-a6d8-3650c7c40572'),
(356, NULL, 70, 19, 'craft\\elements\\Entry', 1, 0, '2021-02-04 21:47:52', '2021-02-04 21:47:52', NULL, '6f1d074a-9a02-458b-85cd-dea7d9aca822'),
(357, 9, NULL, 7, 'craft\\elements\\Entry', 1, 0, '2021-02-04 22:52:33', '2021-02-04 22:52:38', NULL, 'd906ab69-c91b-403c-ac4b-5e6ce7da0ea5');

-- --------------------------------------------------------

--
-- Table structure for table `elements_sites`
--

CREATE TABLE `elements_sites` (
  `id` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `uri` varchar(255) DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `elements_sites`
--

INSERT INTO `elements_sites` (`id`, `elementId`, `siteId`, `slug`, `uri`, `enabled`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 1, 'home', '__home__', 1, '2021-01-30 17:04:54', '2021-01-30 17:04:54', '609e69b3-c1b9-4159-807b-086e205e96be'),
(2, 2, 1, 'home', '__home__', 1, '2021-01-30 17:04:54', '2021-01-30 17:04:54', '134e2361-4a95-4f4f-9426-1b4a223053cd'),
(3, 3, 1, 'contact', 'contact', 1, '2021-01-30 17:04:54', '2021-01-30 17:04:54', '95841385-862a-4749-8041-83d0e245eea0'),
(4, 4, 1, 'contact', 'contact', 1, '2021-01-30 17:04:54', '2021-01-30 17:04:54', '569d5f14-bac0-4d34-8308-46953d401cee'),
(5, 5, 1, NULL, NULL, 1, '2021-01-30 17:04:55', '2021-01-30 17:04:55', 'c19f96a6-abe3-43eb-a953-fd9873626a1e'),
(6, 6, 1, 'contact', 'contact', 1, '2021-01-30 17:07:27', '2021-01-30 17:07:27', 'a169e620-5546-4427-9a36-d45b7f1e03de'),
(8, 8, 1, 'vogue', 'vogue', 1, '2021-01-31 19:24:44', '2021-01-31 19:24:45', '5f8ef9ec-e1df-42a3-9a8a-95045fb656a5'),
(9, 9, 1, NULL, NULL, 1, '2021-01-31 19:25:07', '2021-01-31 19:25:07', '206bb0db-0552-4b92-9b15-d912feb34a45'),
(10, 10, 1, 'a-first-look-inside-dr-clark-the-new-chinatown-restaurant-with-interiors-from-green-river-project-and-uniforms-by-bode', 'editorial/a-first-look-inside-dr-clark-the-new-chinatown-restaurant-with-interiors-from-green-river-project-and-uniforms-by-bode', 1, '2021-01-31 19:25:13', '2021-02-02 15:29:10', 'fd222337-2f38-4183-a062-f9e261377bda'),
(11, 11, 1, 'a-first-look-inside-dr-clark-the-new-chinatown-restaurant-with-interiors-from-green-river-project-and-uniforms-by-bode', 'editorial/a-first-look-inside-dr-clark-the-new-chinatown-restaurant-with-interiors-from-green-river-project-and-uniforms-by-bode', 1, '2021-01-31 19:25:13', '2021-01-31 19:25:13', 'b9be613b-73d8-47bc-b11f-7df8ec6959b2'),
(13, 13, 1, 'mic', 'mic', 1, '2021-01-31 19:26:18', '2021-01-31 19:26:19', 'a80c1a7a-5680-4506-b263-b0fdf9b5d868'),
(14, 14, 1, NULL, NULL, 1, '2021-01-31 19:26:52', '2021-01-31 19:26:52', 'bbe4c2de-6841-4d28-ac91-b80bd88de3ca'),
(15, 15, 1, 'the-danish-political-drama-borgen-is-a-welcome-contrast-to-trumpism', 'editorial/the-danish-political-drama-borgen-is-a-welcome-contrast-to-trumpism', 1, '2021-01-31 19:26:55', '2021-02-02 15:29:09', 'a9c54294-0018-41c9-929b-b355ba2527bf'),
(16, 16, 1, 'the-danish-political-drama-borgen-is-a-welcome-contrast-to-trumpism', 'editorial/the-danish-political-drama-borgen-is-a-welcome-contrast-to-trumpism', 1, '2021-01-31 19:26:55', '2021-01-31 19:26:55', '14e7b1a6-4fc8-4ea4-b7b7-996f6b9f3ab7'),
(17, 17, 1, 'home', '__home__', 1, '2021-01-31 19:29:26', '2021-01-31 19:29:26', '4715b519-502d-4445-ba7d-a4010986fa0a'),
(18, 18, 1, 'home', '__home__', 1, '2021-02-01 15:13:12', '2021-02-01 15:13:12', '4b2b5b7d-6664-42a2-a534-7564ca138750'),
(19, 19, 1, 'home', '__home__', 1, '2021-02-01 15:14:33', '2021-02-01 15:14:33', '7eccb80b-e833-4d3d-8c40-8ff7d8ce2c7e'),
(21, 21, 1, 'safe-and-well', 'directing/safe-and-well', 1, '2021-02-01 15:47:20', '2021-02-01 15:47:20', '276859f8-cbb0-4b11-a313-f57f4635d6df'),
(22, 22, 1, 'safe-and-well', 'directing/safe-and-well', 1, '2021-02-01 15:47:20', '2021-02-01 15:47:20', '5e0d8114-3b8d-4926-a684-af07b37cde8e'),
(23, 23, 1, 'safe-and-well', 'directing/safe-and-well', 1, '2021-02-01 15:47:44', '2021-02-01 15:47:44', '396b3bd5-5013-4c55-a602-a40716164297'),
(24, 24, 1, NULL, NULL, 1, '2021-02-01 15:51:29', '2021-02-01 15:51:29', 'aa85db6c-05c4-4689-98e0-1a696323e808'),
(25, 25, 1, 'safe-and-well', 'directing/safe-and-well', 1, '2021-02-01 15:51:39', '2021-02-01 15:51:39', '7645661d-6165-4889-b073-b821a37b8e4e'),
(27, 27, 1, 'at-t-codes-of-culture-campaign', 'campaign/at-t-codes-of-culture-campaign', 1, '2021-02-01 17:45:41', '2021-02-04 21:41:13', '23d229f5-e878-43e4-a122-581bd89c21a5'),
(28, 28, 1, 'at-t-codes-of-culture-campaign', 'agency/at-t-codes-of-culture-campaign', 1, '2021-02-01 17:45:41', '2021-02-01 17:45:41', '5b550620-b092-4519-97cb-568dfd085a20'),
(29, 29, 1, '__temp_xcoymwzzypucfclevpccaabjyzstjxoeqfeg', 'agency/__temp_xcoymwzzypucfclevpccaabjyzstjxoeqfeg', 1, '2021-02-01 20:00:23', '2021-02-01 20:00:23', '59b6e70c-b1a9-4c7c-ad9e-dcab3ba97dee'),
(30, 30, 1, NULL, NULL, 1, '2021-02-01 21:12:02', '2021-02-01 21:12:02', '00729410-565d-490a-8964-0defdfb7dfa8'),
(31, 31, 1, NULL, NULL, 1, '2021-02-01 21:12:06', '2021-02-01 21:12:06', '9cb3087b-ff56-4d32-830c-c4da6037867f'),
(32, 32, 1, NULL, NULL, 1, '2021-02-01 21:12:10', '2021-02-01 21:12:10', '1f841a88-4703-45c0-9972-3c8989628bf3'),
(33, 33, 1, NULL, NULL, 1, '2021-02-01 21:12:13', '2021-02-01 21:12:13', '952b1481-c664-4eec-b4f4-507dc1cddcf8'),
(34, 34, 1, NULL, NULL, 1, '2021-02-01 21:14:54', '2021-02-01 21:14:54', 'b5d0ddb1-e2be-49eb-8fa5-175e06dcd4d3'),
(35, 35, 1, NULL, NULL, 1, '2021-02-01 21:14:54', '2021-02-01 21:14:54', '5b6d5956-c880-4e5b-a9ab-fb73cf9f6c0a'),
(36, 36, 1, NULL, NULL, 1, '2021-02-01 21:14:54', '2021-02-01 21:14:54', 'cbedcb38-30d6-488a-9c42-9247c1299e8d'),
(37, 37, 1, NULL, NULL, 1, '2021-02-01 21:14:54', '2021-02-01 21:14:54', 'fc63b5f6-40d6-4774-b699-1fd44e783653'),
(38, 38, 1, NULL, NULL, 1, '2021-02-01 21:14:54', '2021-02-01 21:14:54', '836c9f17-9334-4419-a29e-eeb450056d39'),
(39, 39, 1, 'at-t-codes-of-culture-campaign', 'agency/at-t-codes-of-culture-campaign', 1, '2021-02-01 21:14:54', '2021-02-01 21:14:54', '48f3bb55-41e0-4560-afba-50c74ac4e37b'),
(40, 40, 1, NULL, NULL, 1, '2021-02-01 21:14:54', '2021-02-01 21:14:54', 'fa60146d-221d-462c-9453-56a08952f61f'),
(41, 41, 1, NULL, NULL, 1, '2021-02-01 21:14:54', '2021-02-01 21:14:54', '9c287b7b-ae91-4932-8246-7b62e0d2a9a5'),
(42, 42, 1, NULL, NULL, 1, '2021-02-01 21:14:54', '2021-02-01 21:14:54', '0591b409-5928-4be4-b918-6e1a33431ba6'),
(43, 43, 1, NULL, NULL, 1, '2021-02-01 21:14:54', '2021-02-01 21:14:54', '4fd90526-b631-407b-a33d-895413596713'),
(44, 44, 1, NULL, NULL, 1, '2021-02-01 21:14:54', '2021-02-01 21:14:54', '17fdee27-1096-4152-8245-df21b9cc3c06'),
(45, 45, 1, '__temp_qmzfwrphhisbrckfbfgrphqfsfiltzytknzc', 'editorial/__temp_qmzfwrphhisbrckfbfgrphqfsfiltzytknzc', 1, '2021-02-01 21:24:16', '2021-02-01 21:24:16', 'cf519f3b-ed8b-4c60-99bd-e2fea0fc6c4a'),
(46, 46, 1, '__temp_jyqsmgropzerjipdvcgvveghlcyoaxdmlhwe', NULL, 1, '2021-02-01 21:30:21', '2021-02-01 21:30:21', '73109265-2f63-46c2-b9c3-8ef17f27a3b5'),
(47, 47, 1, 'director', 'director', 1, '2021-02-01 21:31:13', '2021-02-01 21:31:14', '8d787383-531c-4148-b225-b8599cca7e67'),
(48, 48, 1, 'editorial', 'editorial', 1, '2021-02-01 21:31:21', '2021-02-01 21:31:23', '86b0f1b6-d5ee-45e4-bb0f-2bd547e453e8'),
(49, 49, 1, 'agency', 'agency', 1, '2021-02-01 21:31:28', '2021-02-01 21:31:30', '17e584c0-d860-4f1b-b62f-f2ee33789a0d'),
(50, 50, 1, '__temp_qqjdodawnujhipvwurahwknjimvhfflfixgr', NULL, 1, '2021-02-01 21:38:57', '2021-02-01 21:38:57', '560f3ed2-97d2-4d9d-b040-5313c8f10100'),
(51, 51, 1, '__temp_gnlideffafzttgskqwamfxaegsvyufcuaqpo', 'editorial/__temp_gnlideffafzttgskqwamfxaegsvyufcuaqpo', 1, '2021-02-02 15:30:13', '2021-02-02 15:30:13', '2ffc6b97-77ef-4ed8-80d8-318ef751fcd3'),
(52, 52, 1, 'the-danish-political-drama-borgen-is-a-welcome-contrast-to-trumpism', 'editorial/the-danish-political-drama-borgen-is-a-welcome-contrast-to-trumpism', 1, '2021-02-02 15:36:44', '2021-02-02 15:36:44', 'e4cca325-d883-4e6c-ba14-8ad2156af6ea'),
(53, 53, 1, 'a-first-look-inside-dr-clark-the-new-chinatown-restaurant-with-interiors-from-green-river-project-and-uniforms-by-bode', 'editorial/a-first-look-inside-dr-clark-the-new-chinatown-restaurant-with-interiors-from-green-river-project-and-uniforms-by-bode', 1, '2021-02-02 15:36:51', '2021-02-02 15:36:51', 'a3bdc298-abcf-4702-bf4e-645cb3af92d2'),
(54, 54, 1, NULL, NULL, 1, '2021-02-02 16:43:26', '2021-02-02 16:43:26', 'd4c9aa09-27f6-46c0-8050-7930dfe2800b'),
(55, 55, 1, NULL, NULL, 1, '2021-02-02 16:44:05', '2021-02-02 16:44:05', '46719611-0cee-424f-9e0d-1c8c0d613e25'),
(56, 56, 1, 'at-t-codes-of-culture-campaign', 'agency/at-t-codes-of-culture-campaign', 1, '2021-02-02 16:44:05', '2021-02-02 16:44:05', '2609ecad-8651-4ef5-bf8a-dc5eff06bd3c'),
(57, 57, 1, NULL, NULL, 1, '2021-02-02 16:44:05', '2021-02-02 16:44:05', '9f12bba6-a07f-4831-b0aa-c0be43ba5f2c'),
(58, 58, 1, NULL, NULL, 1, '2021-02-02 16:44:05', '2021-02-02 16:44:05', 'b00f109b-4436-4166-8fa3-b391575649c4'),
(59, 59, 1, NULL, NULL, 1, '2021-02-02 16:44:05', '2021-02-02 16:44:05', '24a0414e-fbad-4eec-83e9-6e04bbbce835'),
(60, 60, 1, NULL, NULL, 1, '2021-02-02 16:44:05', '2021-02-02 16:44:05', 'f6021839-ba06-4cf4-a80f-8433052da736'),
(61, 61, 1, NULL, NULL, 1, '2021-02-02 16:44:05', '2021-02-02 16:44:05', 'b45dd72e-6d59-40b9-9167-eb8c7f6280b4'),
(62, 62, 1, NULL, NULL, 1, '2021-02-02 16:44:05', '2021-02-02 16:44:05', '0f27ea82-fbcf-4b22-b084-ba189773e4b7'),
(63, 63, 1, 'at-t-codes-of-culture-campaign', 'agency/at-t-codes-of-culture-campaign', 1, '2021-02-02 18:31:01', '2021-02-02 18:31:01', '3836c4c5-19dd-469c-8e36-fbde9b995612'),
(64, 64, 1, NULL, NULL, 1, '2021-02-02 18:31:01', '2021-02-02 18:31:01', '11b3292e-6115-4a22-a884-b14aede97de5'),
(65, 65, 1, NULL, NULL, 1, '2021-02-02 18:31:01', '2021-02-02 18:31:01', '092ab774-a9d8-42e9-925d-0979018de881'),
(66, 66, 1, NULL, NULL, 1, '2021-02-02 18:31:01', '2021-02-02 18:31:01', '2aec1929-94c3-4e27-a936-c428e4ce9052'),
(67, 67, 1, NULL, NULL, 1, '2021-02-02 18:31:01', '2021-02-02 18:31:01', '244e111b-22ba-45c8-9e6d-981d0621f07d'),
(68, 68, 1, NULL, NULL, 1, '2021-02-02 18:31:01', '2021-02-02 18:31:01', '4912a328-0fc6-4678-a77e-59fcf2b029cf'),
(69, 69, 1, 'at-t-codes-of-culture-campaign', 'agency/at-t-codes-of-culture-campaign', 1, '2021-02-02 18:31:21', '2021-02-02 18:31:21', '1a5d9fe2-912f-4f01-b598-b7818d9da9af'),
(70, 70, 1, NULL, NULL, 1, '2021-02-02 18:33:20', '2021-02-02 18:33:20', 'b833156d-fd86-485b-bd15-852b3fa7bb33'),
(71, 71, 1, NULL, NULL, 1, '2021-02-02 18:33:20', '2021-02-02 18:33:20', 'fe806c23-2f7b-4dee-bd8e-c909867cd158'),
(72, 72, 1, 'at-t-codes-of-culture-campaign', 'agency/at-t-codes-of-culture-campaign', 1, '2021-02-02 18:33:20', '2021-02-02 18:33:20', 'aead514b-16fd-43fe-82fe-c9327a6eda28'),
(73, 73, 1, NULL, NULL, 1, '2021-02-02 18:33:20', '2021-02-02 18:33:20', 'e41cfe3e-2787-4536-821e-eb7af7bca620'),
(74, 74, 1, NULL, NULL, 1, '2021-02-02 18:33:21', '2021-02-02 18:33:21', '68baf96a-581a-473d-99ff-9020f7a0bbea'),
(75, 75, 1, NULL, NULL, 1, '2021-02-02 18:39:02', '2021-02-02 18:39:02', 'af8d6098-9c69-4215-9561-de60bcf4b0d6'),
(76, 76, 1, 'at-t-codes-of-culture-campaign', 'agency/at-t-codes-of-culture-campaign', 1, '2021-02-02 18:39:02', '2021-02-02 18:39:02', 'b5fc7a18-3dbe-40d2-948f-f2d309fb1817'),
(77, 77, 1, NULL, NULL, 1, '2021-02-02 18:39:02', '2021-02-02 18:39:02', 'e6433ece-da13-4ebb-98ca-51928b446296'),
(78, 78, 1, NULL, NULL, 1, '2021-02-02 18:39:02', '2021-02-02 18:39:02', '0c36329f-828e-41ab-aa52-138b4b246a47'),
(79, 79, 1, NULL, NULL, 1, '2021-02-02 18:39:02', '2021-02-02 18:39:02', 'ed7e5207-5c23-4572-b774-b5764cdf0ad9'),
(80, 80, 1, 'at-t-codes-of-culture-campaign', 'agency/at-t-codes-of-culture-campaign', 1, '2021-02-02 19:59:34', '2021-02-02 19:59:34', '4f987905-238f-4e04-a1e6-605d7309cb0e'),
(81, 81, 1, NULL, NULL, 1, '2021-02-02 19:59:34', '2021-02-02 19:59:34', 'a5b99bca-d859-4fae-b5c3-f193529b0316'),
(82, 82, 1, NULL, NULL, 1, '2021-02-02 19:59:34', '2021-02-02 19:59:34', 'a035c64e-3f73-4e53-a563-18715a5cc489'),
(83, 83, 1, NULL, NULL, 1, '2021-02-02 19:59:34', '2021-02-02 19:59:34', 'd6cf6710-5ac4-4523-8d99-27d426c1f65d'),
(84, 84, 1, NULL, NULL, 1, '2021-02-02 20:01:04', '2021-02-02 20:01:04', 'c9054ec4-a799-441e-b633-e6ab2536c33d'),
(85, 85, 1, 'safe-and-well', 'directing/safe-and-well', 1, '2021-02-02 20:01:19', '2021-02-02 20:01:19', 'cd7e371b-2131-4b37-bf7c-86b1b4b22cd7'),
(86, 86, 1, NULL, NULL, 1, '2021-02-02 21:00:07', '2021-02-02 21:00:07', '6f7490a7-a87c-4dca-ba05-ffb6ac7a41b1'),
(87, 87, 1, NULL, NULL, 1, '2021-02-02 21:00:15', '2021-02-02 21:00:15', '51818a79-a675-4ff8-8559-e535d827b2e3'),
(88, 88, 1, NULL, NULL, 1, '2021-02-02 21:00:27', '2021-02-02 21:00:27', '22cab067-d28c-4c18-a6d5-301b5a01ee62'),
(89, 89, 1, NULL, NULL, 1, '2021-02-02 21:00:34', '2021-02-02 21:00:34', '719ed87c-0fea-4a0a-9f32-f1ca8bcd04b9'),
(90, 90, 1, NULL, NULL, 1, '2021-02-02 21:02:09', '2021-02-02 21:02:09', 'af0da59b-9453-41ec-a584-c6aab3190a09'),
(91, 91, 1, 'at-t-codes-of-culture-campaign', 'agency/at-t-codes-of-culture-campaign', 1, '2021-02-02 21:02:09', '2021-02-02 21:02:09', '88b67fdb-fef1-414f-80cf-06686dbc9c72'),
(92, 92, 1, NULL, NULL, 1, '2021-02-02 21:02:09', '2021-02-02 21:02:09', '23701c15-effe-4f18-a23d-3b7ce9105dcd'),
(93, 93, 1, NULL, NULL, 1, '2021-02-02 21:02:09', '2021-02-02 21:02:09', '358b0b92-4f45-461d-b2e9-107afe5da2d1'),
(94, 94, 1, NULL, NULL, 1, '2021-02-02 21:02:09', '2021-02-02 21:02:09', '23228043-01af-4a67-93ca-d92edaf8e28d'),
(95, 95, 1, 'at-t-codes-of-culture-campaign', 'agency/at-t-codes-of-culture-campaign', 1, '2021-02-02 22:07:18', '2021-02-02 22:07:18', 'e720db0d-0835-4395-b1a5-a02f3e796ab3'),
(96, 96, 1, NULL, NULL, 1, '2021-02-02 22:07:18', '2021-02-02 22:07:18', 'd9ee0fac-9b9f-4912-911a-cd540f8ae7d6'),
(97, 97, 1, NULL, NULL, 1, '2021-02-02 22:07:18', '2021-02-02 22:07:18', 'd0ebd8f0-e430-4381-8995-9579eb78003e'),
(98, 98, 1, NULL, NULL, 1, '2021-02-02 22:07:18', '2021-02-02 22:07:18', 'a49020f8-aac4-4a63-8b15-145d0c786463'),
(99, 99, 1, 'at-t-codes-of-culture-campaign', 'agency/at-t-codes-of-culture-campaign', 1, '2021-02-02 22:09:34', '2021-02-02 22:09:34', 'bea7cfc6-e1bd-4e8e-b37a-013f9048210f'),
(100, 100, 1, NULL, NULL, 1, '2021-02-02 22:09:34', '2021-02-02 22:09:34', 'b1f871f3-a57d-429e-9189-8024b1059963'),
(101, 101, 1, NULL, NULL, 1, '2021-02-02 22:09:34', '2021-02-02 22:09:34', 'e56bb435-f249-40e2-9d27-d68641810e75'),
(102, 102, 1, NULL, NULL, 1, '2021-02-02 22:09:34', '2021-02-02 22:09:34', '9b36bb17-2977-48d1-96d6-ace4c5917cdb'),
(103, 103, 1, 'at-t-codes-of-culture-campaign', 'agency/at-t-codes-of-culture-campaign', 1, '2021-02-02 22:11:01', '2021-02-02 22:11:01', 'af5b86f8-9de0-4234-9898-982698bb0926'),
(104, 104, 1, NULL, NULL, 1, '2021-02-02 22:11:01', '2021-02-02 22:11:01', '55490b84-f869-46f9-8869-7c807b00f162'),
(105, 105, 1, NULL, NULL, 1, '2021-02-02 22:11:02', '2021-02-02 22:11:02', 'f111ce78-26ab-4465-a919-2e825aadcf57'),
(106, 106, 1, NULL, NULL, 1, '2021-02-02 22:11:02', '2021-02-02 22:11:02', '4745b2d7-c821-484e-8c50-321b286b06cf'),
(107, 107, 1, 'at-t-codes-of-culture-campaign', 'agency/at-t-codes-of-culture-campaign', 1, '2021-02-02 22:12:05', '2021-02-02 22:12:05', '697df11f-a269-4255-982c-386cd8abd0ef'),
(108, 108, 1, NULL, NULL, 1, '2021-02-02 22:12:05', '2021-02-02 22:12:05', '2405ff25-97d6-41e2-bb75-5630687d468f'),
(109, 109, 1, NULL, NULL, 1, '2021-02-02 22:12:05', '2021-02-02 22:12:05', '6dbe1880-b8f5-42fd-8f11-e9a1b22a5c8a'),
(110, 110, 1, NULL, NULL, 1, '2021-02-02 22:12:05', '2021-02-02 22:12:05', '810c0882-2ab5-452f-a70b-ff85ff652d26'),
(111, 111, 1, NULL, NULL, 1, '2021-02-02 22:14:46', '2021-02-02 22:14:46', 'a7391987-9a12-44a6-bb4c-e8576cc5131c'),
(112, 112, 1, NULL, NULL, 1, '2021-02-02 22:14:57', '2021-02-02 22:14:57', '7e9edb8f-5111-40d9-8071-ecb938f635e2'),
(113, 113, 1, 'at-t-codes-of-culture-campaign', 'agency/at-t-codes-of-culture-campaign', 1, '2021-02-02 22:14:57', '2021-02-02 22:14:57', '62da27a9-e4f7-49a5-b79f-8cfad6f1e868'),
(114, 114, 1, NULL, NULL, 1, '2021-02-02 22:14:57', '2021-02-02 22:14:57', 'd4680913-7c69-4bff-a91a-de21524f5b8d'),
(115, 115, 1, NULL, NULL, 1, '2021-02-02 22:14:57', '2021-02-02 22:14:57', 'c453737a-69f7-42d2-9ac8-b8e6d4e8a1d4'),
(116, 116, 1, NULL, NULL, 1, '2021-02-02 22:14:57', '2021-02-02 22:14:57', '16a40a1d-c0fc-4e25-8bf4-2ac7fac91354'),
(117, 117, 1, NULL, NULL, 1, '2021-02-02 22:14:57', '2021-02-02 22:14:57', '9ec801b6-c7a7-4c44-9089-baa46662cbd7'),
(118, 118, 1, NULL, NULL, 1, '2021-02-02 22:28:24', '2021-02-02 22:28:24', '7bcde040-1821-4a87-95ae-3cc5b1c1b7e8'),
(119, 119, 1, NULL, NULL, 1, '2021-02-02 22:31:31', '2021-02-02 22:31:31', '8e325d46-cb25-4670-9d88-5fb046c5e055'),
(120, 120, 1, NULL, NULL, 1, '2021-02-02 22:32:56', '2021-02-02 22:32:56', 'd2386736-7870-466a-87cc-a7d37186c533'),
(121, 121, 1, NULL, NULL, 1, '2021-02-02 22:33:05', '2021-02-02 22:33:05', '75772993-079f-4ddc-a4a3-ba23171c97a0'),
(122, 122, 1, NULL, NULL, 1, '2021-02-02 22:33:05', '2021-02-02 22:33:05', 'fdf83eda-6b20-49da-9a1a-eebd05969d8f'),
(123, 123, 1, 'at-t-codes-of-culture-campaign', 'agency/at-t-codes-of-culture-campaign', 1, '2021-02-02 22:33:05', '2021-02-02 22:33:05', '285d8efb-5339-4ac1-b08e-80497ea03e53'),
(124, 124, 1, NULL, NULL, 1, '2021-02-02 22:33:05', '2021-02-02 22:33:05', 'b38c617b-756c-4fbe-a4e2-c4823494494a'),
(125, 125, 1, NULL, NULL, 1, '2021-02-02 22:33:05', '2021-02-02 22:33:05', '971bee02-109e-43e2-b89a-3eb9d1d0e1e4'),
(126, 126, 1, NULL, NULL, 1, '2021-02-02 22:33:05', '2021-02-02 22:33:05', '0105e84d-fb86-4c8e-84aa-ffe4ff8afa30'),
(127, 127, 1, NULL, NULL, 1, '2021-02-02 22:33:05', '2021-02-02 22:33:05', '9a47ba69-31a2-4da0-82f8-215e14072517'),
(128, 128, 1, NULL, NULL, 1, '2021-02-02 22:33:05', '2021-02-02 22:33:05', 'c4355c66-aa06-40be-a9ae-3ac79df884f8'),
(129, 129, 1, 'at-t-codes-of-culture-campaign', 'agency/at-t-codes-of-culture-campaign', 1, '2021-02-02 22:38:49', '2021-02-02 22:38:49', 'be25a4b8-559b-491d-9d13-edce4930a219'),
(130, 130, 1, NULL, NULL, 1, '2021-02-02 22:38:49', '2021-02-02 22:38:49', '5e54fdf6-c945-4a71-a104-0181062730d2'),
(131, 131, 1, NULL, NULL, 1, '2021-02-02 22:38:49', '2021-02-02 22:38:49', 'da2b2154-de14-4750-8c08-7a93043acc6c'),
(132, 132, 1, NULL, NULL, 1, '2021-02-02 22:38:49', '2021-02-02 22:38:49', 'b5de507a-a5e7-4221-86de-439479d87777'),
(133, 133, 1, NULL, NULL, 1, '2021-02-02 22:38:49', '2021-02-02 22:38:49', '8380b31e-c61d-4008-9bd7-602794e45158'),
(134, 134, 1, NULL, NULL, 1, '2021-02-02 22:38:49', '2021-02-02 22:38:49', 'b0ba66a5-3f6b-474c-bc78-c76192fe8931'),
(135, 135, 1, 'at-t-codes-of-culture-campaign', 'agency/at-t-codes-of-culture-campaign', 1, '2021-02-02 22:45:48', '2021-02-02 22:45:48', '2ccdd405-e88a-4052-b7cf-50b371c6be29'),
(136, 136, 1, NULL, NULL, 1, '2021-02-02 22:45:48', '2021-02-02 22:45:48', '6126f4fd-a2dd-4504-ba7a-f7503777ade4'),
(137, 137, 1, NULL, NULL, 1, '2021-02-02 22:45:48', '2021-02-02 22:45:48', '8f60440b-8c68-4333-ac96-8f812c0f7653'),
(138, 138, 1, NULL, NULL, 1, '2021-02-02 22:45:48', '2021-02-02 22:45:48', '3af2e7be-6009-411b-9e68-a1939313169d'),
(139, 139, 1, NULL, NULL, 1, '2021-02-02 22:45:48', '2021-02-02 22:45:48', '4e49a408-a643-4348-9b60-f8d31b2c7cb0'),
(140, 140, 1, NULL, NULL, 1, '2021-02-02 22:45:48', '2021-02-02 22:45:48', '6af001a9-dbfb-461f-b4ba-ca1335cd8bbf'),
(141, 141, 1, NULL, NULL, 1, '2021-02-03 15:35:06', '2021-02-03 15:35:06', 'bff4653b-8aae-49b6-a540-3cb4e8d16e90'),
(142, 142, 1, 'at-t-codes-of-culture-campaign', 'agency/at-t-codes-of-culture-campaign', 1, '2021-02-03 15:35:06', '2021-02-03 15:35:06', '702244bf-531f-4e1a-a955-42f600076294'),
(143, 143, 1, NULL, NULL, 1, '2021-02-03 15:35:06', '2021-02-03 15:35:06', '0c1bc386-e2c4-46cc-9c3d-505cadff79b9'),
(144, 144, 1, NULL, NULL, 1, '2021-02-03 15:35:06', '2021-02-03 15:35:06', '9d51a6dd-f091-48b6-a1f4-f057bc6c5fce'),
(145, 145, 1, NULL, NULL, 1, '2021-02-03 15:35:06', '2021-02-03 15:35:06', '1b0de95d-9129-47aa-9220-03ed74c855ea'),
(146, 146, 1, NULL, NULL, 1, '2021-02-03 15:35:06', '2021-02-03 15:35:06', 'ba540822-a15d-4ff7-9300-b3d414e82a50'),
(147, 147, 1, NULL, NULL, 1, '2021-02-03 15:35:06', '2021-02-03 15:35:06', '4728a5b0-6a3b-4273-a462-b6507645b271'),
(148, 148, 1, NULL, NULL, 1, '2021-02-03 15:35:07', '2021-02-03 15:35:07', '99433952-c685-482c-bfec-b614746e7a39'),
(149, 149, 1, NULL, NULL, 1, '2021-02-03 17:14:27', '2021-02-03 17:14:27', '18d505ce-a643-4c38-91d3-5edabeb1aafd'),
(150, 150, 1, 'at-t-codes-of-culture-campaign', 'agency/at-t-codes-of-culture-campaign', 1, '2021-02-03 17:14:27', '2021-02-03 17:14:27', '506a5241-0be4-48cb-a982-1e7700ecbf74'),
(151, 151, 1, NULL, NULL, 1, '2021-02-03 17:14:27', '2021-02-03 17:14:27', 'f9a30ae0-4956-4bfb-93ba-2affcb4d44a9'),
(152, 152, 1, NULL, NULL, 1, '2021-02-03 17:33:22', '2021-02-03 17:33:22', '0318acc9-5b36-4238-8ed9-e5328451f994'),
(153, 153, 1, 'at-t-codes-of-culture-campaign', 'agency/at-t-codes-of-culture-campaign', 1, '2021-02-03 17:33:23', '2021-02-03 17:33:23', '47fb363e-d3e2-4d8d-9615-41973a931aa2'),
(154, 154, 1, NULL, NULL, 1, '2021-02-03 17:33:23', '2021-02-03 17:33:23', '81316d24-8095-4e4b-bbfe-a5ffffe9a660'),
(155, 155, 1, NULL, NULL, 1, '2021-02-03 17:33:23', '2021-02-03 17:33:23', '03f37316-3130-44f2-b66f-92a25aba9cc0'),
(156, 156, 1, NULL, NULL, 1, '2021-02-03 17:43:07', '2021-02-03 17:43:07', 'bce494c3-198e-4878-80fa-1d2239faead2'),
(157, 157, 1, 'at-t-codes-of-culture-campaign', 'agency/at-t-codes-of-culture-campaign', 1, '2021-02-03 17:43:07', '2021-02-03 17:43:07', '17f0a354-cbef-4418-9438-658a7c2f7c65'),
(158, 158, 1, NULL, NULL, 1, '2021-02-03 17:43:07', '2021-02-03 17:43:07', '75a5c64a-afa3-4e54-8b21-1ffa7fa7f61f'),
(159, 159, 1, NULL, NULL, 1, '2021-02-03 17:43:07', '2021-02-03 17:43:07', '9e79db2b-2628-493b-ab58-2574f22e14ff'),
(160, 160, 1, NULL, NULL, 1, '2021-02-03 17:43:07', '2021-02-03 17:43:07', '7b841de7-9ebf-4e28-9a0b-74a8f9790fe6'),
(161, 161, 1, NULL, NULL, 1, '2021-02-03 17:44:12', '2021-02-03 17:44:12', 'b1a806e0-ccd2-4613-84fa-f224dc38c3d1'),
(162, 162, 1, 'at-t-codes-of-culture-campaign', 'agency/at-t-codes-of-culture-campaign', 1, '2021-02-03 17:44:12', '2021-02-03 17:44:12', 'b6bc797d-e805-4ef1-b9f4-ebd1ff722911'),
(163, 163, 1, NULL, NULL, 1, '2021-02-03 17:44:12', '2021-02-03 17:44:12', '362cc2f3-28ff-4b32-a3e3-6ffcf4568eb7'),
(164, 164, 1, NULL, NULL, 1, '2021-02-03 17:44:12', '2021-02-03 17:44:12', '981a6641-284c-4057-9cce-16cbeefb0e14'),
(165, 165, 1, NULL, NULL, 1, '2021-02-03 17:44:12', '2021-02-03 17:44:12', '9a01babb-cf58-492a-92ff-c06743efffa3'),
(166, 166, 1, NULL, NULL, 1, '2021-02-03 17:44:12', '2021-02-03 17:44:12', 'baaefa74-e027-4fb9-8112-a2859698732e'),
(167, 167, 1, 'at-t-codes-of-culture-campaign', 'agency/at-t-codes-of-culture-campaign', 1, '2021-02-03 17:45:24', '2021-02-03 17:45:24', 'b40d2168-9f84-48f1-a06a-68e7dc761ad6'),
(168, 168, 1, NULL, NULL, 1, '2021-02-03 17:45:24', '2021-02-03 17:45:24', '2913945c-b9ec-4a34-a526-e95a5172968c'),
(169, 169, 1, NULL, NULL, 1, '2021-02-03 17:45:24', '2021-02-03 17:45:24', '9e325ae4-59a9-433c-94f9-c071c364075e'),
(170, 170, 1, NULL, NULL, 1, '2021-02-03 17:45:24', '2021-02-03 17:45:24', 'ad1a53cc-cb51-446a-a429-8ac416759f61'),
(171, 171, 1, NULL, NULL, 1, '2021-02-03 17:45:24', '2021-02-03 17:45:24', 'e981d7fe-822a-40dd-86a5-6a14bb9584ab'),
(172, 172, 1, 'at-t-codes-of-culture-campaign', 'agency/at-t-codes-of-culture-campaign', 1, '2021-02-03 18:14:21', '2021-02-03 18:14:21', '4b51e815-e5f1-47c2-94f8-840f008120d1'),
(173, 173, 1, NULL, NULL, 1, '2021-02-03 18:14:21', '2021-02-03 18:14:21', '8dc7c57d-5171-4f84-87ef-e5ba15f63174'),
(174, 174, 1, NULL, NULL, 1, '2021-02-03 18:14:21', '2021-02-03 18:14:21', '4d901869-7a25-4a43-9e05-00a1f5c26d8d'),
(175, 175, 1, NULL, NULL, 1, '2021-02-03 18:14:21', '2021-02-03 18:14:21', '1af80308-f626-4c4b-9791-cfcbeb9e94df'),
(176, 176, 1, NULL, NULL, 1, '2021-02-03 18:14:21', '2021-02-03 18:14:21', '768164f5-e6bc-4bf1-a347-81f718a6a8e6'),
(177, 177, 1, NULL, NULL, 1, '2021-02-03 18:20:26', '2021-02-03 18:20:26', '0ce79624-5e1d-42db-b133-7f98f920e2ad'),
(178, 178, 1, 'at-t-codes-of-culture-campaign', 'agency/at-t-codes-of-culture-campaign', 1, '2021-02-03 18:20:26', '2021-02-03 18:20:26', '8712d618-5eee-4fea-b53e-ee3f3289ac03'),
(179, 179, 1, NULL, NULL, 1, '2021-02-03 18:20:26', '2021-02-03 18:20:26', '3bc796a7-1551-4058-a176-a4aff0ae272d'),
(180, 180, 1, NULL, NULL, 1, '2021-02-03 18:20:26', '2021-02-03 18:20:26', '4eba208d-c6b7-4705-8111-48afd8b57f3e'),
(181, 181, 1, NULL, NULL, 1, '2021-02-03 18:20:26', '2021-02-03 18:20:26', '6c03dd9c-f68a-4b7c-ad2c-899e6f625b85'),
(182, 182, 1, NULL, NULL, 1, '2021-02-03 18:20:26', '2021-02-03 18:20:26', 'e45937cd-a360-4a15-b2f8-4b7499e2928b'),
(183, 183, 1, NULL, NULL, 1, '2021-02-03 18:20:26', '2021-02-03 18:20:26', '91facd9c-92cf-43c4-ad06-9b6f60d5fb02'),
(184, 184, 1, 'at-t-codes-of-culture-campaign', 'agency/at-t-codes-of-culture-campaign', 1, '2021-02-03 19:01:22', '2021-02-03 19:01:22', '77a93f7e-052f-4626-a26c-c1136835325f'),
(185, 185, 1, NULL, NULL, 1, '2021-02-03 19:01:22', '2021-02-03 19:01:22', '8d8b6cf1-7780-4fa4-9fcd-089ea4575dfa'),
(186, 186, 1, NULL, NULL, 1, '2021-02-03 19:01:22', '2021-02-03 19:01:22', '18fd49af-b93e-44b1-8bdf-0a2238a7729d'),
(187, 187, 1, NULL, NULL, 1, '2021-02-03 19:01:23', '2021-02-03 19:01:23', '0dcea182-f76a-4534-b6ee-6a1c529b51f2'),
(188, 188, 1, NULL, NULL, 1, '2021-02-03 19:01:23', '2021-02-03 19:01:23', '416422b9-2593-47e3-834a-4730b66dfd1a'),
(189, 189, 1, NULL, NULL, 1, '2021-02-03 19:01:23', '2021-02-03 19:01:23', '700fecad-7bae-4dcb-8700-e4fa928192fa'),
(190, 190, 1, NULL, NULL, 1, '2021-02-03 19:03:20', '2021-02-03 19:03:20', '7c782bad-d4f1-4a49-8463-0835ba373793'),
(191, 191, 1, NULL, NULL, 1, '2021-02-03 19:03:20', '2021-02-03 19:03:20', '08a3039b-e80a-453e-bb4b-8121fb81078c'),
(192, 192, 1, 'at-t-codes-of-culture-campaign', 'agency/at-t-codes-of-culture-campaign', 1, '2021-02-03 19:03:20', '2021-02-03 19:03:20', 'bb96ab15-a380-4848-8d7d-163710569106'),
(193, 193, 1, NULL, NULL, 1, '2021-02-03 19:03:20', '2021-02-03 19:03:20', '656081c7-283f-4e33-ac5a-17dcf602bff7'),
(194, 194, 1, NULL, NULL, 1, '2021-02-03 19:03:20', '2021-02-03 19:03:20', 'bdfca8c2-585d-4bd9-9137-cc62711abbeb'),
(195, 195, 1, NULL, NULL, 1, '2021-02-03 19:03:20', '2021-02-03 19:03:20', 'c3a68e1f-2c2a-46c9-ad8e-193f7e0fabf6'),
(196, 196, 1, NULL, NULL, 1, '2021-02-03 19:08:10', '2021-02-03 19:08:10', '8feb70bc-1610-493c-9d2d-c553fd8831e4'),
(197, 197, 1, 'at-t-codes-of-culture-campaign', 'agency/at-t-codes-of-culture-campaign', 1, '2021-02-03 19:08:10', '2021-02-03 19:08:10', '5938b65e-e94a-4414-8db8-83d3c9c1875f'),
(198, 198, 1, NULL, NULL, 1, '2021-02-03 19:08:10', '2021-02-03 19:08:10', '4fe98004-9896-44a6-92b6-ebf324e5660d'),
(199, 199, 1, NULL, NULL, 1, '2021-02-03 19:08:10', '2021-02-03 19:08:10', 'c6da6b58-fafe-4bdc-aaa6-7255988a5606'),
(200, 200, 1, NULL, NULL, 1, '2021-02-03 19:08:10', '2021-02-03 19:08:10', '9313fb48-66a9-45a7-853c-aec73c024170'),
(201, 201, 1, NULL, NULL, 1, '2021-02-03 19:08:10', '2021-02-03 19:08:10', '6d3f336a-4b53-49d3-ab0f-9968bc90b0b8'),
(202, 202, 1, NULL, NULL, 1, '2021-02-03 19:10:09', '2021-02-03 19:10:09', 'd355582e-a2bd-4077-8444-f6bfdc37ce9a'),
(203, 203, 1, 'at-t-codes-of-culture-campaign', 'agency/at-t-codes-of-culture-campaign', 1, '2021-02-03 19:10:09', '2021-02-03 19:10:09', '2f2ef54e-1e30-4a39-bb2b-9a077fcd93d1'),
(204, 204, 1, NULL, NULL, 1, '2021-02-03 19:10:09', '2021-02-03 19:10:09', 'fce04bff-3724-45bd-b1f5-5778b12b14cb'),
(205, 205, 1, NULL, NULL, 1, '2021-02-03 19:10:09', '2021-02-03 19:10:09', '06161ba7-bfdb-46b3-be6a-1f010603dbe3'),
(206, 206, 1, NULL, NULL, 1, '2021-02-03 19:10:09', '2021-02-03 19:10:09', 'cc3bb346-9a4c-4af1-8314-c5c4d71af98b'),
(207, 207, 1, NULL, NULL, 1, '2021-02-03 19:10:09', '2021-02-03 19:10:09', 'c028d472-ca45-4000-90b3-c51f9be6e240'),
(208, 208, 1, NULL, NULL, 1, '2021-02-03 19:10:09', '2021-02-03 19:10:09', 'af7cd5a5-c970-4973-8614-817f8f02d9a9'),
(209, 209, 1, NULL, NULL, 1, '2021-02-03 19:10:53', '2021-02-03 19:10:53', '301ece5f-2598-46c5-8bea-3a80dd46427f'),
(210, 210, 1, 'at-t-codes-of-culture-campaign', 'agency/at-t-codes-of-culture-campaign', 1, '2021-02-03 19:10:53', '2021-02-03 19:10:53', '08dc6ad4-0cb9-492a-8c38-f050780a0d99'),
(211, 211, 1, NULL, NULL, 1, '2021-02-03 19:10:53', '2021-02-03 19:10:53', 'ca902ea8-a3b3-44a2-bbe8-22628dbf1393'),
(212, 212, 1, NULL, NULL, 1, '2021-02-03 19:10:53', '2021-02-03 19:10:53', 'ae5db418-eeed-4617-a4aa-0bac68f0d25b'),
(213, 213, 1, NULL, NULL, 1, '2021-02-03 19:10:53', '2021-02-03 19:10:53', '5a62f4e7-7266-4641-9eb3-1f08c61b4be8'),
(214, 214, 1, NULL, NULL, 1, '2021-02-03 19:10:53', '2021-02-03 19:10:53', '6eadad80-a64e-43f7-95d4-f89a500342d3'),
(215, 215, 1, NULL, NULL, 1, '2021-02-03 19:10:53', '2021-02-03 19:10:53', '2f33adba-ec01-4e75-92a9-76013bea983b'),
(216, 216, 1, NULL, NULL, 1, '2021-02-03 19:10:53', '2021-02-03 19:10:53', 'f3c11506-37df-4037-89a0-43f856f38aa5'),
(217, 217, 1, 'at-t-codes-of-culture-campaign', 'agency/at-t-codes-of-culture-campaign', 1, '2021-02-03 19:11:39', '2021-02-03 19:11:39', '2df240f1-1664-41d1-b23a-f56b98b119f1'),
(218, 218, 1, NULL, NULL, 1, '2021-02-03 19:11:39', '2021-02-03 19:11:39', 'fcf0f611-c361-400a-ad27-2a1ae8eec254'),
(219, 219, 1, NULL, NULL, 1, '2021-02-03 19:11:39', '2021-02-03 19:11:39', '64f792cd-7541-4c8d-922f-d61679497929'),
(220, 220, 1, NULL, NULL, 1, '2021-02-03 19:11:39', '2021-02-03 19:11:39', 'abc94cbd-80f6-40d5-8779-829276211bbd'),
(221, 221, 1, NULL, NULL, 1, '2021-02-03 19:11:39', '2021-02-03 19:11:39', '2aa77829-be17-4254-94a8-40180bbe74c1'),
(222, 222, 1, NULL, NULL, 1, '2021-02-03 19:11:39', '2021-02-03 19:11:39', '1c463262-5974-42e2-91b2-cba95238e854'),
(223, 223, 1, NULL, NULL, 1, '2021-02-03 19:11:39', '2021-02-03 19:11:39', 'ea2fdc5f-2600-4986-b909-f4aa80983195'),
(224, 224, 1, NULL, NULL, 1, '2021-02-03 19:15:28', '2021-02-03 19:15:28', '0180b89d-a5c6-4bb5-a638-5458b610d069'),
(225, 225, 1, 'at-t-codes-of-culture-campaign', 'agency/at-t-codes-of-culture-campaign', 1, '2021-02-03 19:15:29', '2021-02-03 19:15:29', '2580b70d-e83b-4ef7-b3b7-b158d0083c57'),
(226, 226, 1, NULL, NULL, 1, '2021-02-03 19:15:29', '2021-02-03 19:15:29', '8bb36f4f-5f97-48fc-94e7-be0d88ae58e2'),
(227, 227, 1, NULL, NULL, 1, '2021-02-03 19:15:29', '2021-02-03 19:15:29', '5130a545-1661-4cb5-b9c2-8d0676221584'),
(228, 228, 1, NULL, NULL, 1, '2021-02-03 19:15:29', '2021-02-03 19:15:29', 'bb97efde-39eb-4347-b9c9-8c2f74567ed4'),
(229, 229, 1, NULL, NULL, 1, '2021-02-03 19:15:29', '2021-02-03 19:15:29', '96555bbf-b16e-4d16-a250-6182cff06ca9'),
(230, 230, 1, NULL, NULL, 1, '2021-02-03 19:15:29', '2021-02-03 19:15:29', '854b6aa3-c430-4ac6-ae18-6dfb67ded422'),
(231, 231, 1, NULL, NULL, 1, '2021-02-03 19:15:29', '2021-02-03 19:15:29', '870f6a44-5638-4d64-b835-229582919ca6'),
(232, 232, 1, NULL, NULL, 1, '2021-02-03 19:15:29', '2021-02-03 19:15:29', 'c237183c-dd28-4c48-826f-17bd331574ca'),
(233, 233, 1, 'at-t-codes-of-culture-campaign', 'agency/at-t-codes-of-culture-campaign', 1, '2021-02-03 19:49:45', '2021-02-03 19:49:45', '3ec528f4-ee4c-4be7-baf6-b41cd99b38f9'),
(234, 234, 1, NULL, NULL, 1, '2021-02-03 19:49:45', '2021-02-03 19:49:45', '536bba4a-77da-4fed-957c-33af9ef221d9'),
(235, 235, 1, NULL, NULL, 1, '2021-02-03 19:49:45', '2021-02-03 19:49:45', 'fcce2f21-9162-4ccc-8add-e09455933d5e'),
(236, 236, 1, NULL, NULL, 1, '2021-02-03 19:49:45', '2021-02-03 19:49:45', '6f43071e-5be2-4594-bacd-207f6a6fd9db'),
(237, 237, 1, NULL, NULL, 1, '2021-02-03 19:49:45', '2021-02-03 19:49:45', '62658471-fa22-4b02-90ff-5f41d1a5eada'),
(238, 238, 1, NULL, NULL, 1, '2021-02-03 19:49:45', '2021-02-03 19:49:45', '4291f340-a0ea-4cd3-a148-d819983f7706'),
(239, 239, 1, NULL, NULL, 1, '2021-02-03 19:49:46', '2021-02-03 19:49:46', '6e21aa95-aea0-4623-b10d-1d78e8975562'),
(240, 240, 1, NULL, NULL, 1, '2021-02-03 19:49:46', '2021-02-03 19:49:46', 'adcc6427-fd35-4a8e-98b5-843db861e7d9'),
(241, 241, 1, 'at-t-codes-of-culture-campaign', 'agency/at-t-codes-of-culture-campaign', 1, '2021-02-03 19:57:19', '2021-02-03 19:57:19', 'cfee9db1-61cf-40fa-9f14-105edec22988'),
(242, 242, 1, NULL, NULL, 1, '2021-02-03 19:57:19', '2021-02-03 19:57:19', '26991c48-3745-467c-8d5d-c812d6ac4eab'),
(243, 243, 1, NULL, NULL, 1, '2021-02-03 19:57:19', '2021-02-03 19:57:19', 'ab7e7766-80e7-4cac-89b4-36601ebe8c28'),
(244, 244, 1, NULL, NULL, 1, '2021-02-03 19:57:19', '2021-02-03 19:57:19', '57416821-ccdd-42ad-ae01-0d8689902633'),
(245, 245, 1, NULL, NULL, 1, '2021-02-03 19:57:19', '2021-02-03 19:57:19', '3cfe1031-8f0d-4eb7-bde1-8f36d3b5d06c'),
(246, 246, 1, NULL, NULL, 1, '2021-02-03 19:57:19', '2021-02-03 19:57:19', 'ff714684-cec7-4534-be60-e2c5081aaa4e'),
(247, 247, 1, NULL, NULL, 1, '2021-02-03 19:57:19', '2021-02-03 19:57:19', 'c04dfff5-c717-4142-a51a-45202edffc2b'),
(248, 248, 1, NULL, NULL, 1, '2021-02-03 19:57:19', '2021-02-03 19:57:19', '02be0c60-8df6-416d-aa02-c34dcd5042b9'),
(249, 249, 1, 'at-t-codes-of-culture-campaign', 'agency/at-t-codes-of-culture-campaign', 1, '2021-02-03 19:57:57', '2021-02-03 19:57:57', '25460570-ad7e-4c01-bc63-a3e68f9eeb6a'),
(250, 250, 1, NULL, NULL, 1, '2021-02-03 19:57:57', '2021-02-03 19:57:57', '4bb2b0d3-7047-400f-9f41-38a2c8fc1e27'),
(251, 251, 1, NULL, NULL, 1, '2021-02-03 19:57:57', '2021-02-03 19:57:57', 'b08aaaf9-8ce2-41de-8041-86c3cf5fe5af'),
(252, 252, 1, NULL, NULL, 1, '2021-02-03 19:57:57', '2021-02-03 19:57:57', '5d3df60f-e20a-4c13-84cc-1ddc20abf89f'),
(253, 253, 1, NULL, NULL, 1, '2021-02-03 19:57:57', '2021-02-03 19:57:57', '6b61152f-1ff3-4bce-974e-981e0b8cad82'),
(254, 254, 1, NULL, NULL, 1, '2021-02-03 19:57:57', '2021-02-03 19:57:57', 'ca5a0b20-fc32-4bb2-8819-3d2af0204bb2'),
(255, 255, 1, NULL, NULL, 1, '2021-02-03 19:57:57', '2021-02-03 19:57:57', '8eccf9d0-8cc8-4729-9ecc-a644c47ba328'),
(256, 256, 1, NULL, NULL, 1, '2021-02-03 19:57:57', '2021-02-03 19:57:57', '47d91ef7-5983-48c1-91f0-bfcb981c241c'),
(257, 257, 1, NULL, NULL, 1, '2021-02-03 20:41:48', '2021-02-03 20:41:48', '2593479f-969f-476c-bc0d-4c5347d75d37'),
(258, 258, 1, 'at-t-codes-of-culture-campaign', 'agency/at-t-codes-of-culture-campaign', 1, '2021-02-03 20:41:48', '2021-02-03 20:41:48', 'b69e1625-1993-4ad8-916c-264b54baa665'),
(259, 259, 1, NULL, NULL, 1, '2021-02-03 20:41:48', '2021-02-03 20:41:48', '468fdf63-a367-4bd1-b316-55141d29e0dc'),
(260, 260, 1, NULL, NULL, 1, '2021-02-03 20:41:48', '2021-02-03 20:41:48', 'c402971c-e862-4d83-b7d0-308c3552d6f7'),
(261, 261, 1, NULL, NULL, 1, '2021-02-03 20:41:48', '2021-02-03 20:41:48', '8df258a2-30f0-4eab-8e33-a4e64d65e871'),
(262, 262, 1, NULL, NULL, 1, '2021-02-03 20:41:48', '2021-02-03 20:41:48', 'ee8046ea-2653-4405-8c74-5674f2838b5c'),
(263, 263, 1, NULL, NULL, 1, '2021-02-03 20:41:48', '2021-02-03 20:41:48', '577d11ad-c11c-489d-a3fa-ce4f76757ae1'),
(264, 264, 1, NULL, NULL, 1, '2021-02-03 20:41:48', '2021-02-03 20:41:48', 'ea7a24ee-a503-4445-9b8d-b3d9668262c5'),
(265, 265, 1, NULL, NULL, 1, '2021-02-03 20:41:48', '2021-02-03 20:41:48', '985dd96e-adf1-43f5-a7d4-320cdf3a8715'),
(266, 266, 1, NULL, NULL, 1, '2021-02-03 20:41:48', '2021-02-03 20:41:48', 'a3afdcbc-3335-4e1a-9769-257c8b5011f9'),
(267, 267, 1, 'at-t-codes-of-culture-campaign', 'agency/at-t-codes-of-culture-campaign', 1, '2021-02-03 20:42:20', '2021-02-03 20:42:20', '53c2b781-87f0-4e3c-b78a-da31e9773e71'),
(268, 268, 1, NULL, NULL, 1, '2021-02-03 20:42:20', '2021-02-03 20:42:20', '58a7f107-34dc-4c5a-bb95-eb6cd0cc818e'),
(269, 269, 1, NULL, NULL, 1, '2021-02-03 20:42:20', '2021-02-03 20:42:20', '41676dad-94bb-466b-a785-2206b6e110c3'),
(270, 270, 1, NULL, NULL, 1, '2021-02-03 20:42:20', '2021-02-03 20:42:20', '14e50653-d505-43b2-9a72-78df24a4c10e'),
(271, 271, 1, NULL, NULL, 1, '2021-02-03 20:42:20', '2021-02-03 20:42:20', '227d4ef2-1c47-4802-b94c-e9e7271d1f2b'),
(272, 272, 1, NULL, NULL, 1, '2021-02-03 20:42:20', '2021-02-03 20:42:20', 'f8c8c71f-5a48-48be-afd0-81d063bea66a'),
(273, 273, 1, 'at-t-codes-of-culture-campaign', 'agency/at-t-codes-of-culture-campaign', 1, '2021-02-03 20:43:23', '2021-02-03 20:43:23', '47a013d5-3e0b-435d-8f00-ddba2b9f9f49'),
(274, 274, 1, NULL, NULL, 1, '2021-02-03 20:43:23', '2021-02-03 20:43:23', '3cba62cf-058d-405b-8358-28dcc18411e7'),
(275, 275, 1, NULL, NULL, 1, '2021-02-03 20:43:23', '2021-02-03 20:43:23', '8ea2e41f-16c7-40c1-8b69-a9e725807656'),
(276, 276, 1, NULL, NULL, 1, '2021-02-03 20:43:23', '2021-02-03 20:43:23', 'ca689179-9589-4711-89a7-6966e94c6c61'),
(277, 277, 1, NULL, NULL, 1, '2021-02-03 20:43:23', '2021-02-03 20:43:23', '875e84f9-ae2e-4cf6-bdad-7f588cdb9491'),
(278, 278, 1, NULL, NULL, 1, '2021-02-03 20:43:23', '2021-02-03 20:43:23', '515fcb4d-763a-46d7-84d5-56b3e9ef12e9'),
(280, 280, 1, NULL, NULL, 1, '2021-02-03 21:55:38', '2021-02-03 21:55:38', '8ef0c72b-916e-43b4-81af-edc5ca246772'),
(281, 281, 1, NULL, NULL, 1, '2021-02-03 21:56:34', '2021-02-03 21:56:34', '8d56c979-943b-4530-88ba-f3d3b5b3b73c'),
(283, 283, 1, 'my-shoes-my-way', 'campaign/my-shoes-my-way', 1, '2021-02-03 21:56:44', '2021-02-04 21:41:13', 'e3b14618-911b-4e28-9c47-0ff605ba157e'),
(284, 284, 1, NULL, NULL, 1, '2021-02-03 21:56:44', '2021-02-03 21:56:44', 'b5878c22-137c-42b9-b6f8-582b477f3e7f'),
(285, 285, 1, 'my-shoes-my-way', 'agency/my-shoes-my-way', 1, '2021-02-03 21:56:44', '2021-02-03 21:56:44', 'b9a501ff-84cf-48be-b3e6-85b461121be0'),
(286, 286, 1, NULL, NULL, 1, '2021-02-03 21:56:44', '2021-02-03 21:56:44', '455d405b-1a0a-4128-9c80-630a93a510c3'),
(287, 287, 1, 'my-shoes-my-way', 'agency/my-shoes-my-way', 1, '2021-02-04 14:51:36', '2021-02-04 14:51:36', '15c61b4a-a177-4be6-81ae-914f3d40f440'),
(288, 288, 1, NULL, NULL, 1, '2021-02-04 14:51:36', '2021-02-04 14:51:36', '7351794a-41f9-4afb-b7bc-cbf1def370fb'),
(289, 289, 1, 'my-shoes-my-way', 'agency/my-shoes-my-way', 1, '2021-02-04 15:15:01', '2021-02-04 15:15:01', '81cf1a4f-f81a-408a-a830-db08a086057b'),
(290, 290, 1, NULL, NULL, 1, '2021-02-04 15:15:01', '2021-02-04 15:15:01', 'bbee59c9-0ed8-49c6-b62b-a58ead4822f4'),
(291, 291, 1, 'copywriter', 'work/copywriter', 1, '2021-02-04 15:42:35', '2021-02-04 21:25:46', '6c99b6ae-47e9-4f1f-91b1-478de04c9c57'),
(292, 292, 1, 'my-shoes-my-way', 'agency/my-shoes-my-way', 1, '2021-02-04 15:42:40', '2021-02-04 15:42:40', '308cf105-8142-4b50-9029-dc1a5197c9c0'),
(293, 293, 1, NULL, NULL, 1, '2021-02-04 15:42:40', '2021-02-04 15:42:40', '6457b86c-df00-4525-8a89-422f10efa1d3'),
(294, 294, 1, 'at-t-codes-of-culture-campaign', 'agency/at-t-codes-of-culture-campaign', 1, '2021-02-04 15:42:59', '2021-02-04 15:42:59', '6eab1c70-1ca7-42c8-bfeb-bdcb141c9175'),
(295, 295, 1, NULL, NULL, 1, '2021-02-04 15:42:59', '2021-02-04 15:42:59', 'bb965051-460f-4841-8a12-bb0653468120'),
(296, 296, 1, NULL, NULL, 1, '2021-02-04 15:42:59', '2021-02-04 15:42:59', '06be60b5-ee08-493e-814d-3d4d4ff4387f'),
(297, 297, 1, NULL, NULL, 1, '2021-02-04 15:42:59', '2021-02-04 15:42:59', '4bf32886-508b-462c-9fa2-dbbe02313a69'),
(298, 298, 1, NULL, NULL, 1, '2021-02-04 15:42:59', '2021-02-04 15:42:59', 'a1df970e-80eb-4313-96f6-0e4d8bb35a7f'),
(299, 299, 1, NULL, NULL, 1, '2021-02-04 15:42:59', '2021-02-04 15:42:59', '87af1056-4458-44c6-baf4-790447bbb53d'),
(300, 300, 1, 'author', 'work/author', 1, '2021-02-04 15:43:11', '2021-02-04 21:25:46', 'c0c755c7-53b9-43d1-a1db-7c9abaebcfcc'),
(301, 301, 1, 'director', 'work/director', 1, '2021-02-04 15:43:20', '2021-02-04 21:25:46', 'ff788812-9cc0-49c8-ac4b-d6cd92289922'),
(302, 302, 1, NULL, NULL, 1, '2021-02-04 15:45:13', '2021-02-04 15:45:13', '32f5d686-a2f8-448e-bd8d-81b430fe20a4'),
(303, 303, 1, 'at-t-codes-of-culture-campaign', 'agency/at-t-codes-of-culture-campaign', 1, '2021-02-04 15:45:14', '2021-02-04 15:45:14', '2c7f7901-437c-4f3c-bb08-a5ed9438d761'),
(304, 304, 1, NULL, NULL, 1, '2021-02-04 15:45:14', '2021-02-04 15:45:14', 'caa33692-dcf5-4b5e-ac95-930e36bd3989'),
(305, 305, 1, NULL, NULL, 1, '2021-02-04 15:45:14', '2021-02-04 15:45:14', 'c0057c9c-1d28-4773-8604-83fb3fbb87d4'),
(306, 306, 1, NULL, NULL, 1, '2021-02-04 15:45:14', '2021-02-04 15:45:14', '9b91a369-8424-4637-91c1-1a574532c575'),
(307, 307, 1, NULL, NULL, 1, '2021-02-04 15:45:14', '2021-02-04 15:45:14', 'e08a0d2c-9e9b-428c-9840-af99346a8b17'),
(308, 308, 1, NULL, NULL, 1, '2021-02-04 15:45:14', '2021-02-04 15:45:14', 'dc786e1f-a567-42b2-b17c-a32d0f067d6c'),
(309, 309, 1, NULL, NULL, 1, '2021-02-04 15:45:14', '2021-02-04 15:45:14', 'db32d738-319b-4ea6-bbd9-f28058156471'),
(310, 310, 1, 'at-t-codes-of-culture-campaign', 'agency/at-t-codes-of-culture-campaign', 1, '2021-02-04 15:49:23', '2021-02-04 15:49:23', '9d4dafe3-65cb-4671-a916-0d1481fc26c5'),
(311, 311, 1, NULL, NULL, 1, '2021-02-04 15:49:23', '2021-02-04 15:49:23', '80a4c101-1cdf-4bf5-abfb-c2d829761332'),
(312, 312, 1, NULL, NULL, 1, '2021-02-04 15:49:23', '2021-02-04 15:49:23', '03271d7d-23b8-4bb2-9c9e-d8156acf373b'),
(313, 313, 1, NULL, NULL, 1, '2021-02-04 15:49:23', '2021-02-04 15:49:23', '38a8cf42-697d-45c9-ae68-cd0b4a1d1f95'),
(314, 314, 1, NULL, NULL, 1, '2021-02-04 15:49:23', '2021-02-04 15:49:23', '996e7c5b-d4f1-4e28-8c65-c127b3c897a3'),
(315, 315, 1, NULL, NULL, 1, '2021-02-04 15:49:23', '2021-02-04 15:49:23', '7e4f2388-9cf5-42fb-bccb-eee4d093966c'),
(316, 316, 1, NULL, NULL, 1, '2021-02-04 15:49:23', '2021-02-04 15:49:23', '27fac137-9cd1-40ef-8b78-1cfdbe445dd5'),
(318, 318, 1, NULL, NULL, 1, '2021-02-04 15:55:58', '2021-02-04 15:55:58', '21f4e428-46e8-4bca-ad6c-49888f525465'),
(319, 319, 1, NULL, NULL, 1, '2021-02-04 15:56:26', '2021-02-04 15:56:26', '2f805535-4f7a-4ce8-b43b-12774c5e5c25'),
(321, 321, 1, 'safe-and-well', 'campaign/safe-and-well', 1, '2021-02-04 15:57:13', '2021-02-04 21:41:12', '0c85ccb1-f828-4872-9fd2-b68a1087feb2'),
(322, 322, 1, NULL, NULL, 1, '2021-02-04 15:57:13', '2021-02-04 15:57:13', '7e4c406d-f614-4be6-810f-e32210a64b8f'),
(323, 323, 1, 'safe-and-well', 'agency/safe-and-well', 1, '2021-02-04 15:57:13', '2021-02-04 15:57:13', '15171b99-d72f-4215-861f-5b2f0e3a45f3'),
(324, 324, 1, NULL, NULL, 1, '2021-02-04 15:57:13', '2021-02-04 15:57:13', 'c3c68e04-9da8-4abe-8f01-f25e647c6900'),
(325, 325, 1, 'safe-and-well', 'agency/safe-and-well', 1, '2021-02-04 16:09:13', '2021-02-04 16:09:13', 'c6c7f03f-48c8-4f42-8124-d9086779bcf5'),
(326, 326, 1, NULL, NULL, 1, '2021-02-04 16:09:13', '2021-02-04 16:09:13', '1073b6c1-d5a5-43f7-a2ca-70d2778e0b6c'),
(328, 328, 1, 'the-danish-political-drama-borgen-is-a-welcome-contrast-to-trumpism', 'campaign/the-danish-political-drama-borgen-is-a-welcome-contrast-to-trumpism', 1, '2021-02-04 16:21:50', '2021-02-04 21:41:12', '4b71ba56-5abb-4327-ab39-26a9a37a7e64'),
(329, 329, 1, 'the-danish-political-drama-borgen-is-a-welcome-contrast-to-trumpism', 'agency/the-danish-political-drama-borgen-is-a-welcome-contrast-to-trumpism', 1, '2021-02-04 16:21:50', '2021-02-04 16:21:50', '4f8c5c34-1101-404a-b10f-9d573595f034'),
(330, 330, 1, 'the-danish-political-drama-borgen-is-a-welcome-contrast-to-trumpism', 'work/the-danish-political-drama-borgen-is-a-welcome-contrast-to-trumpism', 1, '2021-02-04 16:39:45', '2021-02-04 16:39:45', '032ecc50-82b9-4f3d-91ca-3a092a255f55'),
(331, 331, 1, 'the-danish-political-drama-borgen-is-a-welcome-contrast-to-trumpism', 'work/the-danish-political-drama-borgen-is-a-welcome-contrast-to-trumpism', 1, '2021-02-04 16:41:49', '2021-02-04 16:41:49', '6f30c25c-fa5c-4b06-ad4a-dc0abbb75123'),
(332, 332, 1, NULL, NULL, 1, '2021-02-04 17:31:38', '2021-02-04 17:31:38', '2f601aa3-97ca-4cc2-a7b2-5f85f1d2b33b'),
(333, 333, 1, 'at-t-codes-of-culture-campaign', 'work/at-t-codes-of-culture-campaign', 1, '2021-02-04 17:31:46', '2021-02-04 17:31:46', '71d8e73c-47a6-42cb-9425-5a6526a2892b'),
(334, 334, 1, NULL, NULL, 1, '2021-02-04 17:31:46', '2021-02-04 17:31:46', 'a09f0156-57a5-40de-9f36-4cfd219faefd'),
(335, 335, 1, NULL, NULL, 1, '2021-02-04 17:31:46', '2021-02-04 17:31:46', '56674a9e-f371-4692-b8c9-c531b2a7d58e'),
(336, 336, 1, NULL, NULL, 1, '2021-02-04 17:31:47', '2021-02-04 17:31:47', '509c704d-718e-4377-a0dc-edcd90359a0f'),
(337, 337, 1, NULL, NULL, 1, '2021-02-04 17:31:47', '2021-02-04 17:31:47', '4401aa5d-b039-4625-b7f3-2141557f4f63'),
(338, 338, 1, NULL, NULL, 1, '2021-02-04 17:31:47', '2021-02-04 17:31:47', '227f3fc7-2f5b-4d24-9d3b-8f61741cf848'),
(339, 339, 1, NULL, NULL, 1, '2021-02-04 17:31:47', '2021-02-04 17:31:47', '14f6a844-a4d8-4436-ac6d-b7d47d9ecbae'),
(340, 340, 1, NULL, NULL, 1, '2021-02-04 18:23:02', '2021-02-04 18:23:02', '4bc12653-d097-4fca-84c3-a0ed3636b121'),
(341, 341, 1, 'safe-and-well', 'work/safe-and-well', 1, '2021-02-04 18:23:17', '2021-02-04 18:23:17', 'd9334988-3df2-4991-aef0-39f5cf1cc386'),
(342, 342, 1, NULL, NULL, 1, '2021-02-04 18:23:17', '2021-02-04 18:23:17', 'dc588d6d-79e5-40a6-919b-a34b2f59ac6a'),
(343, 343, 1, NULL, NULL, 1, '2021-02-04 18:24:35', '2021-02-04 18:24:35', '82859238-80cc-4654-8e5a-7ea612e3a560'),
(344, 344, 1, 'my-shoes-my-way', 'work/my-shoes-my-way', 1, '2021-02-04 18:24:38', '2021-02-04 18:24:38', '3cb398ae-548f-455a-a02a-1e119c830d7a'),
(345, 345, 1, NULL, NULL, 1, '2021-02-04 18:24:38', '2021-02-04 18:24:38', 'f35c2a62-f6a2-45d1-ba10-b86c8bf1ec5b'),
(346, 346, 1, 'contact', 'contact', 1, '2021-02-04 20:30:05', '2021-02-04 20:30:05', 'ee32175d-93b4-45a9-b88a-ae53099e9af4'),
(348, 348, 1, NULL, NULL, 1, '2021-02-04 21:46:37', '2021-02-04 21:46:37', '0fd53f0f-3e11-47f7-9994-5de3ea05d0aa'),
(350, 350, 1, 'safe-and-well', 'video/safe-and-well', 1, '2021-02-04 21:46:53', '2021-02-04 21:46:53', '4ac13d76-aac2-44d3-ae14-0f4ef1e7da34'),
(351, 351, 1, NULL, NULL, 1, '2021-02-04 21:46:53', '2021-02-04 21:46:53', '57a27757-57ed-44ed-a4ed-d7f5394c6810'),
(352, 352, 1, 'safe-and-well', 'video/safe-and-well', 1, '2021-02-04 21:46:53', '2021-02-04 21:46:53', '19869afa-3c68-46af-98b2-a5db76bbfc1b'),
(353, 353, 1, NULL, NULL, 1, '2021-02-04 21:46:53', '2021-02-04 21:46:53', 'b90019ff-f865-4d87-9e87-a712c6e67f7f'),
(355, 355, 1, 'the-danish-political-drama-borgen-is-a-welcome-contrast-to-trumpism', 'editorial/the-danish-political-drama-borgen-is-a-welcome-contrast-to-trumpism', 1, '2021-02-04 21:47:53', '2021-02-04 21:47:53', 'c78d3409-7b57-4ec9-aa26-8f71b58230db'),
(356, 356, 1, 'the-danish-political-drama-borgen-is-a-welcome-contrast-to-trumpism', 'editorial/the-danish-political-drama-borgen-is-a-welcome-contrast-to-trumpism', 1, '2021-02-04 21:47:53', '2021-02-04 21:47:53', '7eac6c6d-392e-4e07-be08-1ef57b03925b'),
(357, 357, 1, '__temp_btbloliasrinxenxngnbcelpwhjbyllxiaya', 'campaign/__temp_btbloliasrinxenxngnbcelpwhjbyllxiaya', 1, '2021-02-04 22:52:33', '2021-02-04 22:52:33', '570255e9-7805-42df-ba70-642caeb43977');

-- --------------------------------------------------------

--
-- Table structure for table `entries`
--

CREATE TABLE `entries` (
  `id` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `parentId` int(11) DEFAULT NULL,
  `typeId` int(11) NOT NULL,
  `authorId` int(11) DEFAULT NULL,
  `postDate` datetime DEFAULT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `deletedWithEntryType` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `entries`
--

INSERT INTO `entries` (`id`, `sectionId`, `parentId`, `typeId`, `authorId`, `postDate`, `expiryDate`, `deletedWithEntryType`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 2, NULL, 2, NULL, '2021-01-30 17:04:00', NULL, NULL, '2021-01-30 17:04:54', '2021-01-30 17:04:54', 'b7b54585-ff74-4176-9ccd-613febbfd796'),
(2, 2, NULL, 2, NULL, '2021-01-30 17:04:00', NULL, NULL, '2021-01-30 17:04:54', '2021-01-30 17:04:54', '6bbc2266-4139-49d8-9f7d-627d5f78bb3d'),
(3, 4, NULL, 4, NULL, '2021-01-30 17:04:00', NULL, NULL, '2021-01-30 17:04:54', '2021-01-30 17:04:54', '492d22c0-a90c-4fba-a03f-5d341b173309'),
(4, 4, NULL, 4, NULL, '2021-01-30 17:04:00', NULL, NULL, '2021-01-30 17:04:54', '2021-01-30 17:04:54', '58da5edd-06a5-4611-88a3-90ddc08e9698'),
(6, 4, NULL, 4, NULL, '2021-01-30 17:04:00', NULL, NULL, '2021-01-30 17:07:27', '2021-01-30 17:07:27', '6f123e75-21a6-460d-a814-e79ff9fce0d9'),
(10, 1, NULL, 1, 5, '2021-01-31 19:23:00', NULL, 0, '2021-01-31 19:25:13', '2021-01-31 19:25:13', '6c265231-e238-45c9-9740-0eaca5c8d0e8'),
(11, 1, NULL, 1, 5, '2021-01-31 19:23:00', NULL, NULL, '2021-01-31 19:25:13', '2021-01-31 19:25:13', 'ba38d581-bae1-4737-922b-dbc0dfda5d65'),
(15, 1, NULL, 1, 5, '2021-01-31 19:25:00', NULL, 0, '2021-01-31 19:26:55', '2021-01-31 19:26:55', '09bb42e9-7fd7-4c62-87a0-cd17442e03f7'),
(16, 1, NULL, 1, 5, '2021-01-31 19:25:00', NULL, NULL, '2021-01-31 19:26:55', '2021-01-31 19:26:55', '57c75c03-48bc-41fe-ac78-7347fafcfafe'),
(17, 2, NULL, 2, NULL, '2021-01-30 17:04:00', NULL, NULL, '2021-01-31 19:29:26', '2021-01-31 19:29:26', '0dafdd7c-05fd-40f7-acc6-4cb50d77623c'),
(18, 2, NULL, 2, NULL, '2021-01-30 17:04:00', NULL, NULL, '2021-02-01 15:13:12', '2021-02-01 15:13:12', '0ffec03a-e4c6-4644-a1e6-df41bed47971'),
(19, 2, NULL, 2, NULL, '2021-01-30 17:04:00', NULL, NULL, '2021-02-01 15:14:33', '2021-02-01 15:14:33', '65465b00-323d-4f83-8627-48ec11e3dcc7'),
(21, 5, NULL, 5, 5, '2021-02-01 15:46:00', NULL, 0, '2021-02-01 15:47:20', '2021-02-01 15:47:20', '32a74714-536e-4be4-8ece-46b6a1e99b9f'),
(22, 5, NULL, 5, 5, '2021-02-01 15:46:00', NULL, NULL, '2021-02-01 15:47:20', '2021-02-01 15:47:20', '795a26dc-edac-4880-80f8-5ab8e292272b'),
(23, 5, NULL, 5, 5, '2021-02-01 15:46:00', NULL, NULL, '2021-02-01 15:47:44', '2021-02-01 15:47:44', 'd8e9d8da-0c69-42f3-a349-2476092b0792'),
(25, 5, NULL, 5, 5, '2021-02-01 15:46:00', NULL, NULL, '2021-02-01 15:51:39', '2021-02-01 15:51:39', '1d3fda27-90e6-4f90-971d-d65e9fd5727a'),
(27, 3, NULL, 3, 5, '2021-02-01 17:44:00', NULL, NULL, '2021-02-01 17:45:41', '2021-02-01 17:45:41', 'e0aadb6f-ee02-41cb-b47d-a2066fda2bde'),
(28, 3, NULL, 3, 5, '2021-02-01 17:44:00', NULL, NULL, '2021-02-01 17:45:41', '2021-02-01 17:45:41', '3b9a818a-50a5-4ca2-8998-214cc98927ad'),
(29, 3, NULL, 3, 5, '2021-02-01 20:00:00', NULL, NULL, '2021-02-01 20:00:23', '2021-02-01 20:00:23', '459bbc4b-063a-4b5f-8df8-076af7960686'),
(39, 3, NULL, 3, 5, '2021-02-01 17:44:00', NULL, NULL, '2021-02-01 21:14:54', '2021-02-01 21:14:54', '6a35078d-ce17-4b74-ba2d-3e458aeacf09'),
(45, 1, NULL, 1, 5, '2021-02-01 21:24:00', NULL, NULL, '2021-02-01 21:24:16', '2021-02-01 21:24:16', 'b4c0bd03-8a7c-4124-ac7b-39c0a1a60ade'),
(46, 1, NULL, 1, 5, '2021-02-01 21:30:00', NULL, NULL, '2021-02-01 21:30:21', '2021-02-01 21:30:21', '47e82059-cd1c-4ee6-91b2-f20a25db600e'),
(50, 1, NULL, 1, 5, '2021-02-01 21:38:00', NULL, NULL, '2021-02-01 21:38:57', '2021-02-01 21:38:57', 'b3593e9a-2692-4311-979e-11d4fbd30140'),
(51, 1, NULL, 1, 5, '2021-02-02 15:30:00', NULL, NULL, '2021-02-02 15:30:13', '2021-02-02 15:30:13', '05965194-9d4b-4c93-87c9-a2216b829d6f'),
(52, 1, NULL, 1, 5, '2021-01-31 19:25:00', NULL, NULL, '2021-02-02 15:36:44', '2021-02-02 15:36:44', '82eacc42-284d-48c4-a2fa-09b08e26d3e7'),
(53, 1, NULL, 1, 5, '2021-01-31 19:23:00', NULL, NULL, '2021-02-02 15:36:51', '2021-02-02 15:36:51', 'ab2533d8-bf2c-4e04-96a0-72bd8c620e5b'),
(56, 3, NULL, 3, 5, '2021-02-01 17:44:00', NULL, NULL, '2021-02-02 16:44:05', '2021-02-02 16:44:05', '023faeba-0529-4530-a73f-842b75f46980'),
(63, 3, NULL, 3, 5, '2021-02-01 17:44:00', NULL, NULL, '2021-02-02 18:31:01', '2021-02-02 18:31:01', '30330f45-a87f-44a1-b4b4-3235b27c4c1f'),
(69, 3, NULL, 3, 5, '2021-02-01 17:44:00', NULL, NULL, '2021-02-02 18:31:21', '2021-02-02 18:31:21', '5f06e3c8-a72d-41f1-ba1f-d3e56a120d9c'),
(72, 3, NULL, 3, 5, '2021-02-01 17:44:00', NULL, NULL, '2021-02-02 18:33:20', '2021-02-02 18:33:20', '68c3bee6-3cd2-49f4-9be5-c1d16a3a889b'),
(76, 3, NULL, 3, 5, '2021-02-01 17:44:00', NULL, NULL, '2021-02-02 18:39:02', '2021-02-02 18:39:02', 'cf208d74-946d-4ad3-8a40-9bf24eab9cb6'),
(80, 3, NULL, 3, 5, '2021-02-01 17:44:00', NULL, NULL, '2021-02-02 19:59:34', '2021-02-02 19:59:34', '66e0f836-56c8-43d9-b401-2cb86af8c7bc'),
(85, 5, NULL, 5, 5, '2021-02-01 15:46:00', NULL, NULL, '2021-02-02 20:01:19', '2021-02-02 20:01:19', 'c135c22c-7909-4805-87db-7ab32861e9f5'),
(91, 3, NULL, 3, 5, '2021-02-01 17:44:00', NULL, NULL, '2021-02-02 21:02:09', '2021-02-02 21:02:09', 'cdbf49ae-8d03-45b4-9518-902016205e07'),
(95, 3, NULL, 3, 5, '2021-02-01 17:44:00', NULL, NULL, '2021-02-02 22:07:18', '2021-02-02 22:07:18', '7e5236d8-b1db-404a-b287-320e49ef10e2'),
(99, 3, NULL, 3, 5, '2021-02-01 17:44:00', NULL, NULL, '2021-02-02 22:09:34', '2021-02-02 22:09:34', '21b80dc0-ce28-4eda-b5ce-76a0b4cbcb54'),
(103, 3, NULL, 3, 5, '2021-02-01 17:44:00', NULL, NULL, '2021-02-02 22:11:01', '2021-02-02 22:11:01', '95697bcf-85de-49c2-82c8-4f959e2aeef6'),
(107, 3, NULL, 3, 5, '2021-02-01 17:44:00', NULL, NULL, '2021-02-02 22:12:05', '2021-02-02 22:12:05', 'b6dace8f-3365-4b6b-8d71-d232dd96f9dd'),
(113, 3, NULL, 3, 5, '2021-02-01 17:44:00', NULL, NULL, '2021-02-02 22:14:57', '2021-02-02 22:14:57', 'e4650af6-1e50-45b4-9335-008dee98068d'),
(123, 3, NULL, 3, 5, '2021-02-01 17:44:00', NULL, NULL, '2021-02-02 22:33:05', '2021-02-02 22:33:05', '1228c28d-a3ac-4caa-b2f9-9ffd663b7d51'),
(129, 3, NULL, 3, 5, '2021-02-01 17:44:00', NULL, NULL, '2021-02-02 22:38:49', '2021-02-02 22:38:49', '9a8e6636-7fd6-45e3-b0ab-546573c272cb'),
(135, 3, NULL, 3, 5, '2021-02-01 17:44:00', NULL, NULL, '2021-02-02 22:45:48', '2021-02-02 22:45:48', '1e495b7e-6db7-4560-a064-7f8ad8d00bfa'),
(142, 3, NULL, 3, 5, '2021-02-01 17:44:00', NULL, NULL, '2021-02-03 15:35:06', '2021-02-03 15:35:06', 'e08315ba-6c0a-45a3-ba41-d0556b19638f'),
(150, 3, NULL, 3, 5, '2021-02-01 17:44:00', NULL, NULL, '2021-02-03 17:14:27', '2021-02-03 17:14:27', '4e86d6a9-3725-4ad4-9b3d-1a65bdf5cb81'),
(153, 3, NULL, 3, 5, '2021-02-01 17:44:00', NULL, NULL, '2021-02-03 17:33:23', '2021-02-03 17:33:23', 'ca3cadce-6866-4cc9-bf3c-c4d61a10c763'),
(157, 3, NULL, 3, 5, '2021-02-01 17:44:00', NULL, NULL, '2021-02-03 17:43:07', '2021-02-03 17:43:07', 'ac0f8a3d-40bf-40c8-89aa-e30b8a32ec4e'),
(162, 3, NULL, 3, 5, '2021-02-01 17:44:00', NULL, NULL, '2021-02-03 17:44:12', '2021-02-03 17:44:12', '43f88fd9-2ae9-4d13-a2ef-81f7ae7c9e85'),
(167, 3, NULL, 3, 5, '2021-02-01 17:44:00', NULL, NULL, '2021-02-03 17:45:24', '2021-02-03 17:45:24', 'c15090c0-a475-4c67-8c4b-25f2d939401d'),
(172, 3, NULL, 3, 5, '2021-02-01 17:44:00', NULL, NULL, '2021-02-03 18:14:21', '2021-02-03 18:14:21', '9bb9cb37-95a7-44bd-9574-191728c3ad23'),
(178, 3, NULL, 3, 5, '2021-02-01 17:44:00', NULL, NULL, '2021-02-03 18:20:26', '2021-02-03 18:20:26', 'bd8265a3-f29c-4b7c-ac4c-ea55c3f4d8ec'),
(184, 3, NULL, 3, 5, '2021-02-01 17:44:00', NULL, NULL, '2021-02-03 19:01:22', '2021-02-03 19:01:22', '8bcb8a46-f2e4-491d-91bd-4f122875c4be'),
(192, 3, NULL, 3, 5, '2021-02-01 17:44:00', NULL, NULL, '2021-02-03 19:03:20', '2021-02-03 19:03:20', 'a93c30f8-8819-4213-a93c-3bc1054ff475'),
(197, 3, NULL, 3, 5, '2021-02-01 17:44:00', NULL, NULL, '2021-02-03 19:08:10', '2021-02-03 19:08:10', '993b86a6-b55a-45c2-8954-8d137d79bdf5'),
(203, 3, NULL, 3, 5, '2021-02-01 17:44:00', NULL, NULL, '2021-02-03 19:10:09', '2021-02-03 19:10:09', '8025891e-45e6-40ea-8818-0928b42d7f27'),
(210, 3, NULL, 3, 5, '2021-02-01 17:44:00', NULL, NULL, '2021-02-03 19:10:53', '2021-02-03 19:10:53', 'cee0978d-8c76-4c81-9717-9e247d1258db'),
(217, 3, NULL, 3, 5, '2021-02-01 17:44:00', NULL, NULL, '2021-02-03 19:11:39', '2021-02-03 19:11:39', '94ee5be1-91bc-4d37-8413-686db2e7a8a5'),
(225, 3, NULL, 3, 5, '2021-02-01 17:44:00', NULL, NULL, '2021-02-03 19:15:29', '2021-02-03 19:15:29', 'bf2a43ef-7fd1-47e6-8cc4-3bab5ea4c87f'),
(233, 3, NULL, 3, 5, '2021-02-01 17:44:00', NULL, NULL, '2021-02-03 19:49:45', '2021-02-03 19:49:45', '7bfb8079-6ac7-4dd3-8c06-743ff75e6f23'),
(241, 3, NULL, 3, 5, '2021-02-01 17:44:00', NULL, NULL, '2021-02-03 19:57:19', '2021-02-03 19:57:19', 'fc5a2605-a784-439a-afef-194ee76af34c'),
(249, 3, NULL, 3, 5, '2021-02-01 17:44:00', NULL, NULL, '2021-02-03 19:57:57', '2021-02-03 19:57:57', '46480b43-8141-413b-b540-ef12e8746c82'),
(258, 3, NULL, 3, 5, '2021-02-01 17:44:00', NULL, NULL, '2021-02-03 20:41:48', '2021-02-03 20:41:48', 'd932322c-cdbf-4956-aa5a-34aebd2c6299'),
(267, 3, NULL, 3, 5, '2021-02-01 17:44:00', NULL, NULL, '2021-02-03 20:42:20', '2021-02-03 20:42:20', 'e4aeb5cb-2a1b-469a-abb5-577266fc88b4'),
(273, 3, NULL, 3, 5, '2021-02-01 17:44:00', NULL, NULL, '2021-02-03 20:43:23', '2021-02-03 20:43:23', 'fe0cecc7-407a-4331-8eb6-11a7c82dcba0'),
(283, 3, NULL, 3, 5, '2021-02-03 21:55:00', NULL, NULL, '2021-02-03 21:56:44', '2021-02-03 21:56:44', '84783383-635c-4927-8309-2cfc3365d4e5'),
(285, 3, NULL, 3, 5, '2021-02-03 21:55:00', NULL, NULL, '2021-02-03 21:56:44', '2021-02-03 21:56:44', 'cc9127ad-dd84-4638-9651-c19a0632c388'),
(287, 3, NULL, 3, 5, '2021-02-03 21:55:00', NULL, NULL, '2021-02-04 14:51:36', '2021-02-04 14:51:36', '979b028e-1e71-4cd5-a5a0-597861bdbfbb'),
(289, 3, NULL, 3, 5, '2021-02-03 21:55:00', NULL, NULL, '2021-02-04 15:15:01', '2021-02-04 15:15:01', 'c91c6d16-4a22-4429-82a3-40e2ef88e5d8'),
(292, 3, NULL, 3, 5, '2021-02-03 21:55:00', NULL, NULL, '2021-02-04 15:42:40', '2021-02-04 15:42:40', '37d31e4b-f542-4f8f-b5a2-622a347ee9dd'),
(294, 3, NULL, 3, 5, '2021-02-01 17:44:00', NULL, NULL, '2021-02-04 15:42:59', '2021-02-04 15:42:59', 'efcddff6-38e8-4d5e-936c-c80487aaa347'),
(303, 3, NULL, 3, 5, '2021-02-01 17:44:00', NULL, NULL, '2021-02-04 15:45:14', '2021-02-04 15:45:14', '238adbf3-bbd5-4afc-a2e4-cc03e2502a7a'),
(310, 3, NULL, 3, 5, '2021-02-01 17:44:00', NULL, NULL, '2021-02-04 15:49:23', '2021-02-04 15:49:23', '221cbba4-da82-4228-8128-378654451d4a'),
(321, 3, NULL, 3, 5, '2021-02-04 15:53:00', NULL, 0, '2021-02-04 15:57:13', '2021-02-04 15:57:13', '9a63c037-d1a7-430b-8d62-2480ad601da7'),
(323, 3, NULL, 3, 5, '2021-02-04 15:53:00', NULL, NULL, '2021-02-04 15:57:13', '2021-02-04 15:57:13', '43eba7fa-4145-417a-a9e4-6ffeb28b559d'),
(325, 3, NULL, 3, 5, '2021-02-04 15:53:00', NULL, NULL, '2021-02-04 16:09:13', '2021-02-04 16:09:13', '4ccbc9aa-5af0-4b10-ba4a-a7ccc5a5a6ac'),
(328, 3, NULL, 3, 5, '2021-02-04 16:15:00', NULL, 0, '2021-02-04 16:21:50', '2021-02-04 16:21:50', '054b8b05-3d48-49f4-8366-07f9f6323d9c'),
(329, 3, NULL, 3, 5, '2021-02-04 16:15:00', NULL, NULL, '2021-02-04 16:21:50', '2021-02-04 16:21:50', 'a839d594-1a67-4ecf-ae7d-c8b1783656ae'),
(330, 3, NULL, 3, 5, '2021-02-04 16:15:00', NULL, NULL, '2021-02-04 16:39:45', '2021-02-04 16:39:45', '3f5cbd48-7af6-428c-b7f7-3c544add9cf2'),
(331, 3, NULL, 3, 5, '2021-02-04 16:15:00', NULL, NULL, '2021-02-04 16:41:49', '2021-02-04 16:41:49', 'c1dd3f4d-564d-4cc0-9a26-ed0a6c3386c0'),
(333, 3, NULL, 3, 5, '2021-02-01 17:44:00', NULL, NULL, '2021-02-04 17:31:46', '2021-02-04 17:31:46', '864db3a2-7f93-490c-b885-4b8c1707d799'),
(341, 3, NULL, 3, 5, '2021-02-04 15:53:00', NULL, NULL, '2021-02-04 18:23:17', '2021-02-04 18:23:17', '355b1958-fecf-45a2-82be-cd2ee510927b'),
(344, 3, NULL, 3, 5, '2021-02-03 21:55:00', NULL, NULL, '2021-02-04 18:24:38', '2021-02-04 18:24:38', '8948c57f-1c6c-4bae-9b14-d3c467ffb3c3'),
(346, 4, NULL, 4, NULL, '2021-01-30 17:04:00', NULL, NULL, '2021-02-04 20:30:05', '2021-02-04 20:30:05', '576108ea-b2da-4d37-8c1d-4d934630efd0'),
(350, 7, NULL, 7, 5, '2021-02-04 21:45:00', NULL, NULL, '2021-02-04 21:46:53', '2021-02-04 21:46:53', '1074eefa-f2dd-46c3-b684-ec5316db449f'),
(352, 7, NULL, 7, 5, '2021-02-04 21:45:00', NULL, NULL, '2021-02-04 21:46:53', '2021-02-04 21:46:53', '648f5d15-98e6-4817-a92f-d6a6dc830980'),
(355, 6, NULL, 6, 5, '2021-02-04 21:47:00', NULL, NULL, '2021-02-04 21:47:53', '2021-02-04 21:47:53', 'f17fed39-3987-4215-aa51-377a103c6ffd'),
(356, 6, NULL, 6, 5, '2021-02-04 21:47:00', NULL, NULL, '2021-02-04 21:47:53', '2021-02-04 21:47:53', '6fbabb0e-b285-4d4a-976e-31d2375dbcd9'),
(357, 3, NULL, 3, 5, '2021-02-04 22:52:00', NULL, NULL, '2021-02-04 22:52:33', '2021-02-04 22:52:33', 'dbf38da0-4000-44c5-9dee-719c0a5294c0');

-- --------------------------------------------------------

--
-- Table structure for table `entrytypes`
--

CREATE TABLE `entrytypes` (
  `id` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `hasTitleField` tinyint(1) NOT NULL DEFAULT '1',
  `titleTranslationMethod` varchar(255) NOT NULL DEFAULT 'site',
  `titleTranslationKeyFormat` text,
  `titleFormat` varchar(255) DEFAULT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `entrytypes`
--

INSERT INTO `entrytypes` (`id`, `sectionId`, `fieldLayoutId`, `name`, `handle`, `hasTitleField`, `titleTranslationMethod`, `titleTranslationKeyFormat`, `titleFormat`, `sortOrder`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 1, 5, 'Editorial', 'editorial', 1, 'site', NULL, NULL, 1, '2021-01-30 17:04:54', '2021-02-02 15:30:45', '2021-02-04 18:55:27', '91b46bb2-e683-4896-b800-40278bd9b40f'),
(2, 2, 6, 'Home', 'home', 0, 'site', NULL, '{section.name|raw}', 1, '2021-01-30 17:04:54', '2021-01-30 17:04:54', NULL, 'fdfc6bee-ffb9-454c-aab6-34ec9abffb9c'),
(3, 3, 7, 'Work', 'work', 1, 'site', NULL, NULL, 1, '2021-01-30 17:04:54', '2021-02-04 16:25:35', NULL, '8a889dba-157c-48b2-9b36-ea711041fb9f'),
(4, 4, 8, 'Contact', 'contact', 0, 'site', NULL, '{section.name|raw}', 1, '2021-01-30 17:04:54', '2021-01-30 17:04:54', NULL, 'a2884940-974b-407b-95e2-0c75bf883beb'),
(5, 5, 9, 'Directing', 'directing', 1, 'site', NULL, NULL, 1, '2021-02-01 15:45:11', '2021-02-01 15:45:11', '2021-02-04 18:55:23', 'e7974875-0239-4dba-8bab-9b29244649db'),
(6, 6, 19, 'Editorial', 'editorial', 1, 'site', NULL, NULL, 1, '2021-02-04 21:35:05', '2021-02-04 21:35:05', NULL, 'd00648f2-89f5-4fae-a291-b2bb801e4579'),
(7, 7, 20, 'Video', 'video', 1, 'site', NULL, NULL, 1, '2021-02-04 21:38:25', '2021-02-04 21:38:25', NULL, 'c3a80522-5ec6-434b-9c78-6980d1f09fe1');

-- --------------------------------------------------------

--
-- Table structure for table `fieldgroups`
--

CREATE TABLE `fieldgroups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fieldgroups`
--

INSERT INTO `fieldgroups` (`id`, `name`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(3, 'Work', '2021-01-30 17:04:53', '2021-02-04 17:46:53', 'b729f8c2-6fbf-49b5-9428-60db6a9ec52c'),
(4, 'Home', '2021-01-30 17:04:53', '2021-01-30 17:04:53', 'ba7dea8e-3741-400a-befa-a7bd91ac3c82'),
(5, 'Contact', '2021-01-30 17:04:53', '2021-01-30 17:04:53', '1d5b7c7c-71e0-4112-bc90-386c93f1f181'),
(6, 'Global Fields', '2021-01-30 17:04:53', '2021-01-30 17:04:53', '90080efc-be99-4a29-87c9-88623c1200e7');

-- --------------------------------------------------------

--
-- Table structure for table `fieldlayoutfields`
--

CREATE TABLE `fieldlayoutfields` (
  `id` int(11) NOT NULL,
  `layoutId` int(11) NOT NULL,
  `tabId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fieldlayoutfields`
--

INSERT INTO `fieldlayoutfields` (`id`, `layoutId`, `tabId`, `fieldId`, `required`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(5, 6, 6, 3, 0, 1, '2021-01-30 17:04:54', '2021-01-30 17:04:54', '116a7de2-cbf7-4f1a-b1e1-c5757a89b210'),
(13, 8, 9, 14, 0, 0, '2021-01-30 17:04:54', '2021-01-30 17:04:54', 'c996ec5c-0383-4eb9-9fb3-31b39d7d94fd'),
(297, 7, 118, 32, 0, 1, '2021-02-04 16:25:35', '2021-02-04 16:25:35', 'b75011c9-08d2-4e51-b2d9-9b5b96947df1'),
(298, 7, 118, 45, 1, 2, '2021-02-04 16:25:35', '2021-02-04 16:25:35', '85f8fa20-cb3f-4230-92e5-3f8b5f2c5e7a'),
(299, 7, 118, 48, 0, 3, '2021-02-04 16:25:35', '2021-02-04 16:25:35', '53e78798-be97-4ff9-8942-778943595b91'),
(300, 7, 118, 46, 0, 4, '2021-02-04 16:25:35', '2021-02-04 16:25:35', '3552b30a-2e6a-4a52-965f-65c26cf161db'),
(301, 7, 118, 44, 0, 5, '2021-02-04 16:25:35', '2021-02-04 16:25:35', 'b2f896d2-8a6e-4bb3-baa7-a0ad6b9c80dd'),
(302, 7, 118, 47, 0, 6, '2021-02-04 16:25:35', '2021-02-04 16:25:35', '8d9efe74-9c6d-48d1-a92a-4f37077ad258'),
(303, 7, 119, 21, 0, 0, '2021-02-04 16:25:35', '2021-02-04 16:25:35', '1bf3815d-3fb3-403e-a267-82a7690988a4'),
(304, 7, 119, 25, 0, 2, '2021-02-04 16:25:35', '2021-02-04 16:25:35', 'f7b7ed48-6e6c-4910-a52d-a9b1895bd1c5'),
(305, 16, 120, 36, 1, 0, '2021-02-04 16:31:28', '2021-02-04 16:31:28', 'd2548629-2dbc-45d9-a105-2bcb35d7a8cf'),
(306, 14, 121, 31, 0, 0, '2021-02-04 16:31:28', '2021-02-04 16:31:28', '8a3ed3c2-fe0c-4ab7-acd4-6e1b26488452'),
(307, 14, 121, 43, 0, 1, '2021-02-04 16:31:28', '2021-02-04 16:31:28', 'e17bc77c-3736-4317-8d9e-bc83bc013cad'),
(308, 19, 127, 32, 1, 1, '2021-02-04 21:37:03', '2021-02-04 21:37:03', '02867e5f-fec5-4eed-8352-677dc30ccf96'),
(309, 19, 127, 45, 0, 2, '2021-02-04 21:37:03', '2021-02-04 21:37:03', '7252e706-3869-4a34-affd-1a0f08ad031a'),
(310, 19, 127, 48, 0, 3, '2021-02-04 21:37:03', '2021-02-04 21:37:03', '06050b27-06e4-4e7b-9303-55d6dacd0520'),
(311, 19, 127, 44, 1, 4, '2021-02-04 21:37:03', '2021-02-04 21:37:03', 'd5456493-024e-4493-840a-eea52688207f'),
(312, 19, 127, 47, 1, 5, '2021-02-04 21:37:03', '2021-02-04 21:37:03', '61261bcf-99b0-4582-9911-23100194756e'),
(313, 20, 129, 32, 0, 1, '2021-02-04 21:39:56', '2021-02-04 21:39:56', '98b0f26b-3287-4aae-a730-fd8c06d99fe8'),
(314, 20, 129, 45, 0, 2, '2021-02-04 21:39:56', '2021-02-04 21:39:56', 'a3f98b7d-f81f-42d8-9bfd-888191d5b9af'),
(315, 20, 129, 48, 0, 3, '2021-02-04 21:39:56', '2021-02-04 21:39:56', '3d6bcf87-5221-4368-83c1-4998597dbfb4'),
(316, 20, 129, 46, 0, 4, '2021-02-04 21:39:56', '2021-02-04 21:39:56', '7f756f89-674f-4395-96d6-c3f7f904d4c6'),
(317, 20, 129, 44, 0, 5, '2021-02-04 21:39:56', '2021-02-04 21:39:56', 'd99a2148-5374-48fb-9df5-74e6a6171ac8'),
(318, 20, 129, 21, 0, 6, '2021-02-04 21:39:56', '2021-02-04 21:39:56', '589af96a-4d29-4125-bffc-09ac12dc7526'),
(319, 20, 129, 25, 0, 7, '2021-02-04 21:39:56', '2021-02-04 21:39:56', '6f7e1445-5dff-4f15-a378-e3436a0c82bf');

-- --------------------------------------------------------

--
-- Table structure for table `fieldlayouts`
--

CREATE TABLE `fieldlayouts` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fieldlayouts`
--

INSERT INTO `fieldlayouts` (`id`, `type`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 'craft\\elements\\Asset', '2021-01-30 17:04:53', '2021-01-30 17:04:53', NULL, '9593686a-3f80-40fc-97ea-9bad6277d918'),
(2, 'craft\\elements\\Asset', '2021-01-30 17:04:53', '2021-01-30 17:04:53', NULL, '5b29ebd9-2f02-4a02-9862-d147e69314ac'),
(3, 'craft\\elements\\Asset', '2021-01-30 17:04:53', '2021-01-30 17:04:53', NULL, 'aa06ee47-833d-4bb3-ba95-8726d803c0e9'),
(4, 'craft\\elements\\Category', '2021-01-30 17:04:53', '2021-01-30 17:04:53', '2021-02-02 15:34:28', 'bfdbb391-dabf-4921-ad2a-c9d8e2de5176'),
(5, 'craft\\elements\\Entry', '2021-01-30 17:04:54', '2021-01-30 17:04:54', '2021-02-04 18:55:27', 'af12366b-a396-4dfe-8109-62ed07e676c2'),
(6, 'craft\\elements\\Entry', '2021-01-30 17:04:54', '2021-01-30 17:04:54', NULL, 'cd59cf76-166c-4449-9928-01503cb52ed1'),
(7, 'craft\\elements\\Entry', '2021-01-30 17:04:54', '2021-01-30 17:04:54', NULL, '99b65100-0720-4b4d-a4da-740178907284'),
(8, 'craft\\elements\\Entry', '2021-01-30 17:04:54', '2021-01-30 17:04:54', NULL, 'b416398c-e71b-4249-b8e4-032d23615857'),
(9, 'craft\\elements\\Entry', '2021-02-01 15:45:11', '2021-02-01 15:45:11', '2021-02-04 18:55:23', '19b82a86-2719-4550-b04b-f91f31881687'),
(10, 'craft\\elements\\MatrixBlock', '2021-02-01 19:59:47', '2021-02-01 19:59:47', '2021-02-03 16:55:13', 'bdfd331e-ec3f-4fb6-84ce-2d586f8b02b3'),
(11, 'craft\\elements\\MatrixBlock', '2021-02-01 19:59:47', '2021-02-01 19:59:47', '2021-02-02 18:30:37', '46d4d552-ebc0-42a5-b044-5ab23a2518ed'),
(12, 'craft\\elements\\MatrixBlock', '2021-02-01 21:08:59', '2021-02-01 21:08:59', '2021-02-02 20:59:15', 'fce73aa1-9946-47f8-be30-3aeeb6ed4903'),
(13, 'craft\\elements\\MatrixBlock', '2021-02-02 20:55:33', '2021-02-02 20:55:33', '2021-02-03 16:55:13', '6d08c1ce-1c7b-47f7-afdd-5b8f6b4365d6'),
(14, 'craft\\elements\\MatrixBlock', '2021-02-02 22:06:54', '2021-02-02 22:06:54', NULL, 'cd196988-4c7d-4b18-a3ad-2c173b490f1f'),
(15, 'craft\\elements\\MatrixBlock', '2021-02-03 16:47:58', '2021-02-03 16:47:58', '2021-02-03 16:55:13', 'e60de7e7-692f-46d2-8173-19a36a28585c'),
(16, 'craft\\elements\\MatrixBlock', '2021-02-03 16:55:14', '2021-02-03 16:55:14', NULL, '512ccb1b-c047-48de-83cb-74a27abca66e'),
(17, 'craft\\elements\\MatrixBlock', '2021-02-03 16:55:14', '2021-02-03 16:55:14', '2021-02-03 19:49:24', 'cfd1f781-1b76-4cf0-b5eb-f0124462dbc1'),
(18, 'craft\\elements\\Category', '2021-02-04 15:39:59', '2021-02-04 15:39:59', NULL, 'c7b6db94-a610-4b91-8bb7-6f54b908f19d'),
(19, 'craft\\elements\\Entry', '2021-02-04 21:35:05', '2021-02-04 21:35:05', NULL, '1a94cd7a-af97-4ba8-a258-b32a652bf5e7'),
(20, 'craft\\elements\\Entry', '2021-02-04 21:38:25', '2021-02-04 21:38:25', NULL, 'af3efd09-0987-4480-9772-4212b76fc6a7');

-- --------------------------------------------------------

--
-- Table structure for table `fieldlayouttabs`
--

CREATE TABLE `fieldlayouttabs` (
  `id` int(11) NOT NULL,
  `layoutId` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `elements` text,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fieldlayouttabs`
--

INSERT INTO `fieldlayouttabs` (`id`, `layoutId`, `name`, `elements`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(6, 6, 'Content', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\EntryTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":\"__blank__\",\"instructions\":\"\",\"tip\":null,\"warning\":null,\"width\":100},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"6d7b2f75-5d39-4fde-b5ee-f2de498baa4d\"}]', 1, '2021-01-30 17:04:54', '2021-01-30 17:04:54', '6517c596-1789-4dd2-b5ce-ca014711407a'),
(7, 1, 'Content', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\TitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100}]', 1, '2021-01-30 17:04:54', '2021-01-30 17:04:54', 'ff43c430-9c91-4911-b4cc-3fa52d573862'),
(9, 8, 'Content', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"a70d38dd-b6ff-49bc-9a34-00eef025c844\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\EntryTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":\"__blank__\",\"instructions\":\"\",\"tip\":null,\"warning\":null,\"width\":100}]', 1, '2021-01-30 17:04:54', '2021-01-30 17:04:54', '82c103ff-745f-4f4c-a7c2-6f570cd5ffd3'),
(10, 2, 'Content', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\TitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100}]', 1, '2021-01-30 17:04:54', '2021-01-30 17:04:54', '1203f48b-8ede-40a2-aa39-f76d95401b46'),
(11, 3, 'Content', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\TitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100}]', 1, '2021-01-30 17:04:54', '2021-01-30 17:04:54', '72d59e55-b4e0-460c-a282-912ee988e1d8'),
(15, 9, 'Content', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\EntryTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"01125810-50d0-4308-83d0-5718a381b039\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"c60d5940-e296-425b-af86-a1fe47c8a23a\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\HorizontalRule\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\Heading\",\"heading\":\"Metadata\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"46e64040-e5cd-4fc0-ae88-1ea98da79821\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"ffb4ed72-46da-40dc-a7a0-004f1f8fb8da\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"5e0c5e1a-67ba-40e2-bd35-50f8e5094162\"}]', 1, '2021-02-01 15:50:58', '2021-02-01 15:50:58', 'bac19355-2175-4df7-98c9-ca85bf4f51f9'),
(32, 4, 'Content', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\TitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":\"Name\",\"instructions\":\"\",\"tip\":null,\"warning\":null,\"width\":100}]', 1, '2021-02-01 21:36:49', '2021-02-01 21:36:49', '74545d74-7a2c-4994-9f7e-a819fe3a462a'),
(37, 5, 'Editorial', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\EntryTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":\"Article Title\",\"instructions\":\"\",\"tip\":null,\"warning\":null,\"width\":100},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":\"\",\"instructions\":\"\",\"tip\":null,\"warning\":null,\"required\":\"\",\"width\":100,\"fieldUid\":\"5002fc80-f216-499a-897e-e639dd1725b9\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":\"\",\"instructions\":\"\",\"tip\":null,\"warning\":null,\"required\":\"1\",\"width\":100,\"fieldUid\":\"a3889f0b-937e-4e22-bb02-79ef656c6470\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":\"\",\"instructions\":\"\",\"tip\":null,\"warning\":null,\"required\":\"1\",\"width\":100,\"fieldUid\":\"23523a1c-1d39-481f-ab93-340c443d472e\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":\"\",\"instructions\":\"\",\"tip\":null,\"warning\":null,\"required\":\"1\",\"width\":100,\"fieldUid\":\"04bdc1ad-954c-4b5d-8139-b7d9580fae9d\"}]', 1, '2021-02-02 15:34:03', '2021-02-02 15:34:03', 'e10ab00e-c2ad-4bf1-abc0-8a2ba36b4e5a'),
(39, 11, 'Content', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"1f750240-82a3-425d-8a3a-d6f47c7a2112\"}]', 1, '2021-02-02 16:41:36', '2021-02-02 16:41:36', '80994be8-5d47-4a24-a522-f2cd517e963a'),
(44, 12, 'Content', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"a028181c-5632-4b92-86f6-47a5b00dfa4f\"}]', 1, '2021-02-02 20:55:33', '2021-02-02 20:55:33', '806810a4-2b20-486f-ac7a-c24bc1281c76'),
(54, 10, 'Content', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"66f3d0a9-b8aa-43c1-bf5a-c161b48de7f4\"}]', 1, '2021-02-03 16:47:58', '2021-02-03 16:47:58', 'd0decfed-92e5-4c41-83e3-dd6b45dd8f92'),
(55, 13, 'Content', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"5ee5ac61-8bb1-4c86-b146-54a85723021a\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"117a23dd-0148-4957-a976-7476828435e6\"}]', 1, '2021-02-03 16:47:58', '2021-02-03 16:47:58', 'e85a22e0-e20e-4ba8-ab73-159d881a551f'),
(57, 15, 'Content', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"b58cfbab-7984-4ac3-b4ed-caf34ee15cd1\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":true,\"width\":100,\"fieldUid\":\"5503601a-ba13-40aa-b816-6399a5b51738\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":true,\"width\":100,\"fieldUid\":\"f0bc79dd-ee8c-4168-b4d3-1edad176e974\"}]', 1, '2021-02-03 16:47:58', '2021-02-03 16:47:58', 'c1fa9d89-f896-42d4-9b91-cafa7bc511ac'),
(78, 17, 'Content', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":true,\"width\":100,\"fieldUid\":\"598256f4-ba05-4cce-97f8-3b30f635e27e\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":true,\"width\":100,\"fieldUid\":\"8e1b875f-13c7-4da0-904c-e810b283d034\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":true,\"width\":100,\"fieldUid\":\"faf27d1d-20f5-4d10-9880-6ac201c98d39\"}]', 1, '2021-02-03 19:01:13', '2021-02-03 19:01:13', '026bcc1d-c42b-4eff-aff6-d0ddbb8dc17e'),
(118, 7, 'Metadata', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\EntryTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":50},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":\"\",\"instructions\":\"\",\"tip\":null,\"warning\":null,\"required\":\"\",\"width\":50,\"fieldUid\":\"64e2da7d-1386-46e4-9283-3710c968ef4a\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":\"\",\"instructions\":\"\",\"tip\":null,\"warning\":null,\"required\":\"1\",\"width\":50,\"fieldUid\":\"e4cbcc8b-70f8-4e29-942f-0f54bbf2572b\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":50,\"fieldUid\":\"b01f9258-7792-4fbe-86ae-42ab4327d7c1\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"08698ccd-1eb1-495e-b32e-3f8c51f9209b\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":50,\"fieldUid\":\"f9c5d406-a00a-4e29-9bcd-bbf8c190a8af\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":50,\"fieldUid\":\"4e41bdfd-969d-415c-aba8-37414994f239\"}]', 1, '2021-02-04 16:25:35', '2021-02-04 16:25:35', '5cabb757-ce4b-4c85-a2d7-65f2d4e50ece'),
(119, 7, 'Content', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"0d466c5d-123e-4c56-95fb-a2667cc6b29c\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\HorizontalRule\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"72beaf6b-40ae-4f91-9b56-f683de791f97\"}]', 2, '2021-02-04 16:25:35', '2021-02-04 16:25:35', '4b56f7f9-df9b-4b5e-88ec-2a9835614c92'),
(120, 16, 'Content', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":true,\"width\":100,\"fieldUid\":\"8bead974-8a62-4b51-8ce0-2eabe8ac1c4d\"}]', 1, '2021-02-04 16:31:28', '2021-02-04 16:31:28', 'd4c6b70e-dff4-43ef-a5b5-37e4ba8ec446'),
(121, 14, 'Content', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"c08f6107-f7dd-4071-a356-a6dc5443f19e\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"f103da70-aeec-4a0b-bed2-5b1d98e1d361\"}]', 1, '2021-02-04 16:31:28', '2021-02-04 16:31:28', 'cdbf2fc8-370a-4d07-b89e-5c749ac3a6b2'),
(125, 18, 'Content', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\TitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100}]', 1, '2021-02-04 21:25:46', '2021-02-04 21:25:46', '5b8585a1-1abe-4c1f-8ad7-1b807e9f393b'),
(127, 19, 'Content', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\EntryTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":\"Publication\",\"instructions\":\"\",\"tip\":null,\"warning\":null,\"required\":\"1\",\"width\":100,\"fieldUid\":\"64e2da7d-1386-46e4-9283-3710c968ef4a\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"e4cbcc8b-70f8-4e29-942f-0f54bbf2572b\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"b01f9258-7792-4fbe-86ae-42ab4327d7c1\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":\"\",\"instructions\":\"\",\"tip\":null,\"warning\":null,\"required\":\"1\",\"width\":100,\"fieldUid\":\"f9c5d406-a00a-4e29-9bcd-bbf8c190a8af\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":\"\",\"instructions\":\"\",\"tip\":null,\"warning\":null,\"required\":\"1\",\"width\":100,\"fieldUid\":\"4e41bdfd-969d-415c-aba8-37414994f239\"}]', 1, '2021-02-04 21:37:03', '2021-02-04 21:37:03', '39513cf8-fe98-4df6-af77-e95a21d6fd11'),
(129, 20, 'Content', '[{\"type\":\"craft\\\\fieldlayoutelements\\\\EntryTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":50,\"fieldUid\":\"64e2da7d-1386-46e4-9283-3710c968ef4a\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":50,\"fieldUid\":\"e4cbcc8b-70f8-4e29-942f-0f54bbf2572b\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"b01f9258-7792-4fbe-86ae-42ab4327d7c1\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"08698ccd-1eb1-495e-b32e-3f8c51f9209b\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":50,\"fieldUid\":\"f9c5d406-a00a-4e29-9bcd-bbf8c190a8af\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"0d466c5d-123e-4c56-95fb-a2667cc6b29c\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"72beaf6b-40ae-4f91-9b56-f683de791f97\"}]', 1, '2021-02-04 21:39:56', '2021-02-04 21:39:56', '35554c14-59af-41cd-9da0-6dd376c94e78');

-- --------------------------------------------------------

--
-- Table structure for table `fields`
--

CREATE TABLE `fields` (
  `id` int(11) NOT NULL,
  `groupId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(64) NOT NULL,
  `context` varchar(255) NOT NULL DEFAULT 'global',
  `instructions` text,
  `searchable` tinyint(1) NOT NULL DEFAULT '1',
  `translationMethod` varchar(255) NOT NULL DEFAULT 'none',
  `translationKeyFormat` text,
  `type` varchar(255) NOT NULL,
  `settings` text,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fields`
--

INSERT INTO `fields` (`id`, `groupId`, `name`, `handle`, `context`, `instructions`, `searchable`, `translationMethod`, `translationKeyFormat`, `type`, `settings`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(3, 4, 'Site Intro', 'siteIntro', 'global', '', 0, 'none', NULL, 'craft\\redactor\\Field', '{\"availableTransforms\":\"*\",\"availableVolumes\":\"*\",\"cleanupHtml\":true,\"columnType\":\"text\",\"configSelectionMode\":\"choose\",\"defaultTransform\":\"\",\"manualConfig\":\"\",\"purifierConfig\":\"\",\"purifyHtml\":\"1\",\"redactorConfig\":\"\",\"removeEmptyTags\":\"1\",\"removeInlineStyles\":\"1\",\"removeNbsp\":\"1\",\"showHtmlButtonForNonAdmins\":\"\",\"showUnpermittedFiles\":false,\"showUnpermittedVolumes\":false,\"uiMode\":\"enlarged\"}', '2021-01-30 17:04:53', '2021-01-30 17:04:53', '6d7b2f75-5d39-4fde-b5ee-f2de498baa4d'),
(11, 6, 'Site Title', 'siteTitle', 'global', 'Edit your site\'s title', 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":30,\"code\":\"\",\"columnType\":null,\"initialRows\":\"4\",\"multiline\":\"\",\"placeholder\":\"Add a title\",\"uiMode\":\"normal\"}', '2021-01-30 17:04:53', '2021-01-30 17:04:53', 'd07b31c9-d5d1-4359-962b-2f7a669ab1a8'),
(14, 5, 'Paragraph', 'paragraph', 'global', '', 0, 'none', NULL, 'craft\\redactor\\Field', '{\"availableTransforms\":\"*\",\"availableVolumes\":\"*\",\"cleanupHtml\":true,\"columnType\":\"text\",\"configSelectionMode\":\"choose\",\"defaultTransform\":\"\",\"manualConfig\":\"\",\"purifierConfig\":\"\",\"purifyHtml\":\"1\",\"redactorConfig\":\"\",\"removeEmptyTags\":\"1\",\"removeInlineStyles\":\"1\",\"removeNbsp\":\"1\",\"showHtmlButtonForNonAdmins\":\"\",\"showUnpermittedFiles\":false,\"showUnpermittedVolumes\":false,\"uiMode\":\"enlarged\"}', '2021-01-30 17:04:53', '2021-01-30 17:04:53', 'a70d38dd-b6ff-49bc-9a34-00eef025c844'),
(21, 3, 'Sections', 'sections', 'global', '', 0, 'site', NULL, 'craft\\fields\\Matrix', '{\"contentTable\":\"{{%matrixcontent_sections}}\",\"maxBlocks\":\"\",\"minBlocks\":\"\",\"propagationMethod\":\"all\"}', '2021-02-01 19:59:47', '2021-02-04 16:31:28', '0d466c5d-123e-4c56-95fb-a2667cc6b29c'),
(25, 3, 'Credits', 'credits', 'global', '', 0, 'none', NULL, 'craft\\fields\\Table', '{\"addRowLabel\":\"Add a row\",\"columnType\":\"text\",\"columns\":{\"col1\":{\"heading\":\"Role\",\"handle\":\"creditsRole\",\"width\":\"\",\"type\":\"singleline\"},\"col2\":{\"heading\":\"Name\",\"handle\":\"creditsName\",\"width\":\"\",\"type\":\"singleline\"}},\"defaults\":[{\"col1\":\"Agency\",\"col2\":\"\"}],\"maxRows\":\"\",\"minRows\":\"\"}', '2021-02-01 21:20:37', '2021-02-04 16:31:03', '72beaf6b-40ae-4f91-9b56-f683de791f97'),
(31, NULL, 'Section Height', 'sectionHeight', 'matrixBlockType:8bd946c5-ddc9-47c2-a007-937fd7f2a541', '', 0, 'none', NULL, 'craft\\fields\\Dropdown', '{\"optgroups\":true,\"options\":[{\"label\":\"Small\",\"value\":\"small\",\"default\":\"1\"},{\"label\":\"Large\",\"value\":\"large\",\"default\":\"\"}]}', '2021-02-02 22:06:54', '2021-02-03 20:38:49', 'c08f6107-f7dd-4071-a356-a6dc5443f19e'),
(32, 3, 'Client', 'client', 'global', '', 0, 'none', NULL, 'craft\\fields\\PlainText', '{\"byteLimit\":null,\"charLimit\":null,\"code\":\"\",\"columnType\":null,\"initialRows\":\"4\",\"multiline\":\"\",\"placeholder\":\"\",\"uiMode\":\"normal\"}', '2021-02-02 22:10:43', '2021-02-02 22:10:43', '64e2da7d-1386-46e4-9283-3710c968ef4a'),
(36, NULL, 'Assets', 'assets', 'matrixBlockType:75385f9b-8a0a-41ca-93e2-bb2e51aa5f9e', '', 0, 'site', NULL, 'craft\\fields\\Assets', '{\"allowSelfRelations\":false,\"allowUploads\":true,\"allowedKinds\":null,\"defaultUploadLocationSource\":\"volume:8182eadf-ef29-4df4-b0b7-ff9afd8a6d8a\",\"defaultUploadLocationSubpath\":\"\",\"limit\":\"\",\"localizeRelations\":false,\"previewMode\":\"full\",\"restrictFiles\":\"\",\"selectionLabel\":\"\",\"showSiteMenu\":true,\"showUnpermittedFiles\":false,\"showUnpermittedVolumes\":false,\"singleUploadLocationSource\":\"volume:8182eadf-ef29-4df4-b0b7-ff9afd8a6d8a\",\"singleUploadLocationSubpath\":\"\",\"source\":null,\"sources\":\"*\",\"targetSiteId\":null,\"useSingleFolder\":false,\"validateRelatedElements\":false,\"viewMode\":\"list\"}', '2021-02-03 16:55:13', '2021-02-03 18:19:28', '8bead974-8a62-4b51-8ce0-2eabe8ac1c4d'),
(43, NULL, 'Copy', 'copy', 'matrixBlockType:8bd946c5-ddc9-47c2-a007-937fd7f2a541', '', 0, 'none', NULL, 'craft\\redactor\\Field', '{\"availableTransforms\":\"*\",\"availableVolumes\":\"*\",\"cleanupHtml\":true,\"columnType\":\"text\",\"configSelectionMode\":\"choose\",\"defaultTransform\":\"\",\"manualConfig\":\"\",\"purifierConfig\":\"\",\"purifyHtml\":\"1\",\"redactorConfig\":\"\",\"removeEmptyTags\":\"1\",\"removeInlineStyles\":\"1\",\"removeNbsp\":\"1\",\"showHtmlButtonForNonAdmins\":\"\",\"showUnpermittedFiles\":false,\"showUnpermittedVolumes\":false,\"uiMode\":\"enlarged\"}', '2021-02-03 19:49:24', '2021-02-03 19:49:24', 'f103da70-aeec-4a0b-bed2-5b1d98e1d361'),
(44, 3, 'Date', 'date', 'global', '', 0, 'none', NULL, 'craft\\fields\\Date', '{\"max\":null,\"min\":null,\"minuteIncrement\":\"30\",\"showDate\":true,\"showTime\":false}', '2021-02-04 15:13:47', '2021-02-04 16:31:13', 'f9c5d406-a00a-4e29-9bcd-bbf8c190a8af'),
(45, 3, 'Role', 'role', 'global', '', 0, 'site', NULL, 'craft\\fields\\Categories', '{\"allowLimit\":false,\"allowMultipleSources\":false,\"allowSelfRelations\":false,\"branchLimit\":\"\",\"limit\":null,\"localizeRelations\":false,\"selectionLabel\":\"\",\"showSiteMenu\":false,\"source\":\"group:c40b2bfd-2b3c-4d7a-8973-92eca28355a3\",\"sources\":\"*\",\"targetSiteId\":null,\"validateRelatedElements\":false,\"viewMode\":null}', '2021-02-04 15:41:14', '2021-02-04 15:41:14', 'e4cbcc8b-70f8-4e29-942f-0f54bbf2572b'),
(46, 3, 'Description', 'description', 'global', '', 0, 'none', NULL, 'craft\\redactor\\Field', '{\"availableTransforms\":\"*\",\"availableVolumes\":\"*\",\"cleanupHtml\":true,\"columnType\":\"text\",\"configSelectionMode\":\"choose\",\"defaultTransform\":\"\",\"manualConfig\":\"\",\"purifierConfig\":\"\",\"purifyHtml\":\"1\",\"redactorConfig\":\"\",\"removeEmptyTags\":\"1\",\"removeInlineStyles\":\"1\",\"removeNbsp\":\"1\",\"showHtmlButtonForNonAdmins\":\"\",\"showUnpermittedFiles\":false,\"showUnpermittedVolumes\":false,\"uiMode\":\"enlarged\"}', '2021-02-04 16:07:56', '2021-02-04 16:07:56', '08698ccd-1eb1-495e-b32e-3f8c51f9209b'),
(47, 3, 'External Link', 'externalLink', 'global', '', 0, 'none', NULL, 'craft\\fields\\Url', '{\"maxLength\":\"255\",\"placeholder\":\"\"}', '2021-02-04 16:17:14', '2021-02-04 16:17:14', '4e41bdfd-969d-415c-aba8-37414994f239'),
(48, 3, 'Thumbnail', 'thumbnail', 'global', '', 0, 'site', NULL, 'craft\\fields\\Assets', '{\"allowSelfRelations\":false,\"allowUploads\":true,\"allowedKinds\":null,\"defaultUploadLocationSource\":\"volume:8182eadf-ef29-4df4-b0b7-ff9afd8a6d8a\",\"defaultUploadLocationSubpath\":\"\",\"limit\":\"1\",\"localizeRelations\":false,\"previewMode\":\"full\",\"restrictFiles\":\"\",\"selectionLabel\":\"\",\"showSiteMenu\":false,\"showUnpermittedFiles\":false,\"showUnpermittedVolumes\":false,\"singleUploadLocationSource\":\"volume:8182eadf-ef29-4df4-b0b7-ff9afd8a6d8a\",\"singleUploadLocationSubpath\":\"\",\"source\":null,\"sources\":\"*\",\"targetSiteId\":null,\"useSingleFolder\":false,\"validateRelatedElements\":false,\"viewMode\":\"list\"}', '2021-02-04 16:23:04', '2021-02-04 16:23:04', 'b01f9258-7792-4fbe-86ae-42ab4327d7c1');

-- --------------------------------------------------------

--
-- Table structure for table `globalsets`
--

CREATE TABLE `globalsets` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gqlschemas`
--

CREATE TABLE `gqlschemas` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `scope` text,
  `isPublic` tinyint(1) NOT NULL DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gqltokens`
--

CREATE TABLE `gqltokens` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `accessToken` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `expiryDate` datetime DEFAULT NULL,
  `lastUsed` datetime DEFAULT NULL,
  `schemaId` int(11) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `id` int(11) NOT NULL,
  `version` varchar(50) NOT NULL,
  `schemaVersion` varchar(15) NOT NULL,
  `maintenance` tinyint(1) NOT NULL DEFAULT '0',
  `configVersion` char(12) NOT NULL DEFAULT '000000000000',
  `fieldVersion` char(12) NOT NULL DEFAULT '000000000000',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`id`, `version`, `schemaVersion`, `maintenance`, `configVersion`, `fieldVersion`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, '3.5.17.1', '3.5.13', 0, 'vfvrmxzqnkvq', 'zjdazvzqgmau', '2021-01-30 17:04:52', '2021-02-05 00:56:48', 'e9f2db3d-0bc6-4564-bae4-643760446eb0');

-- --------------------------------------------------------

--
-- Table structure for table `matrixblocks`
--

CREATE TABLE `matrixblocks` (
  `id` int(11) NOT NULL,
  `ownerId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `typeId` int(11) NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `deletedWithOwner` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `matrixblocks`
--

INSERT INTO `matrixblocks` (`id`, `ownerId`, `fieldId`, `typeId`, `sortOrder`, `deletedWithOwner`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(149, 27, 21, 7, 2, 0, '2021-02-03 17:14:27', '2021-02-03 17:33:23', '8a310378-6d70-477d-81b0-5e9100c38d27'),
(151, 150, 21, 7, 1, NULL, '2021-02-03 17:14:27', '2021-02-03 17:14:27', '8cdd7d62-3990-4a0a-9184-c25400407929'),
(155, 153, 21, 7, 2, NULL, '2021-02-03 17:33:23', '2021-02-03 17:33:23', '1ffd0d9d-68db-412a-90ef-a8396668eac2'),
(159, 157, 21, 7, 2, NULL, '2021-02-03 17:43:07', '2021-02-03 17:43:07', '44ad06d8-7b30-482a-8f41-4e4113c4b0a1'),
(164, 162, 21, 7, 2, NULL, '2021-02-03 17:44:12', '2021-02-03 17:44:12', 'f3a53ff2-ba80-4a80-bd0a-538cd6f83663'),
(169, 167, 21, 7, 2, NULL, '2021-02-03 17:45:24', '2021-02-03 17:45:24', '01c089f6-6c4c-431d-8885-c7767791465d'),
(174, 172, 21, 7, 2, NULL, '2021-02-03 18:14:21', '2021-02-03 18:14:21', '7946ae09-b86f-4e9d-9da4-83173b909d50'),
(177, 27, 21, 7, 5, NULL, '2021-02-03 18:20:26', '2021-02-04 15:45:14', '72412505-5fa6-4d5d-83ad-5406a93f7beb'),
(180, 178, 21, 7, 2, NULL, '2021-02-03 18:20:26', '2021-02-03 18:20:26', 'bc81c785-3be7-4706-a90c-b117afdadbfc'),
(183, 178, 21, 7, 5, NULL, '2021-02-03 18:20:26', '2021-02-03 18:20:26', 'ee28c55c-87d2-4cd0-b795-6a829009870e'),
(186, 184, 21, 7, 2, NULL, '2021-02-03 19:01:23', '2021-02-03 19:01:23', 'cb9cd5ec-3cd6-48ae-ac25-cfe1e7b29395'),
(189, 184, 21, 7, 5, NULL, '2021-02-03 19:01:23', '2021-02-03 19:01:23', '8f8e16ab-ec96-4cb7-b496-042e7b64ba09'),
(190, 27, 21, 7, 2, NULL, '2021-02-03 19:03:20', '2021-02-04 15:45:14', 'd9b396a2-b08b-4cca-8090-ddede7ea697c'),
(191, 27, 21, 7, 3, NULL, '2021-02-03 19:03:20', '2021-02-04 15:45:14', 'ebc797df-4997-499a-bcb7-feda2ec7c513'),
(193, 192, 21, 7, 1, NULL, '2021-02-03 19:03:20', '2021-02-03 19:03:20', '95ef7314-a8c7-4f5e-8cff-4bc8b971e343'),
(194, 192, 21, 7, 2, NULL, '2021-02-03 19:03:20', '2021-02-03 19:03:20', '927dde4d-cf98-4f86-bb69-c80d68de58cc'),
(195, 192, 21, 7, 3, NULL, '2021-02-03 19:03:20', '2021-02-03 19:03:20', '80304e6c-90c5-4714-80e1-4e74e2972bc7'),
(196, 27, 21, 7, 6, NULL, '2021-02-03 19:08:10', '2021-02-04 15:45:14', '96af1068-210d-4d2f-a5b6-695e0eb90331'),
(198, 197, 21, 7, 1, NULL, '2021-02-03 19:08:10', '2021-02-03 19:08:10', 'c1bd6c70-2ec4-44ee-8488-e018e4386744'),
(199, 197, 21, 7, 2, NULL, '2021-02-03 19:08:10', '2021-02-03 19:08:10', '01f362ef-924c-4fee-83bf-e3a45a1dd3f9'),
(200, 197, 21, 7, 3, NULL, '2021-02-03 19:08:10', '2021-02-03 19:08:10', '5254d5d8-5e96-4d1d-af5d-f52d1d250085'),
(201, 197, 21, 7, 4, NULL, '2021-02-03 19:08:10', '2021-02-03 19:08:10', '1fb16ca0-4179-4392-bf2d-13cdd3a30d1a'),
(202, 27, 21, 7, 5, 0, '2021-02-03 19:10:09', '2021-02-03 19:10:09', '8f25b4b9-f10d-435a-a01c-f5cea5840a1c'),
(204, 203, 21, 7, 1, NULL, '2021-02-03 19:10:09', '2021-02-03 19:10:09', '4b294633-e156-4ee9-8b68-2c97f0f6da6d'),
(205, 203, 21, 7, 2, NULL, '2021-02-03 19:10:09', '2021-02-03 19:10:09', 'aacd1d83-4990-412a-b58a-a4a3a8f4dd32'),
(206, 203, 21, 7, 3, NULL, '2021-02-03 19:10:09', '2021-02-03 19:10:09', '1dcc215e-e5c4-40a5-b05b-b2e11e4e156b'),
(207, 203, 21, 7, 4, NULL, '2021-02-03 19:10:09', '2021-02-03 19:10:09', '49002f54-3445-4fb4-bcb3-9f7700862b0b'),
(208, 203, 21, 7, 5, NULL, '2021-02-03 19:10:09', '2021-02-03 19:10:09', '63044634-2483-458c-bb1e-104f7eabeaad'),
(209, 27, 21, 7, 6, 0, '2021-02-03 19:10:53', '2021-02-03 19:10:53', '7db201f4-1c8a-4c9b-84ec-88a1bb329134'),
(211, 210, 21, 7, 1, NULL, '2021-02-03 19:10:53', '2021-02-03 19:10:53', '4721d831-00af-4dc8-9cc8-58ca46f6e6c8'),
(212, 210, 21, 7, 2, NULL, '2021-02-03 19:10:53', '2021-02-03 19:10:53', 'f8979c32-9f17-4dbb-ac9c-4581c5b5d2aa'),
(213, 210, 21, 7, 3, NULL, '2021-02-03 19:10:53', '2021-02-03 19:10:53', '813ca221-8348-4dbb-af1f-22b7cfc3b6af'),
(214, 210, 21, 7, 4, NULL, '2021-02-03 19:10:53', '2021-02-03 19:10:53', '11bcd518-cb01-4f92-8f74-2c40844fa20d'),
(215, 210, 21, 7, 5, NULL, '2021-02-03 19:10:53', '2021-02-03 19:10:53', '1d405bcb-4071-469c-8c81-818c809139e2'),
(216, 210, 21, 7, 6, NULL, '2021-02-03 19:10:53', '2021-02-03 19:10:53', '979be075-0962-44ba-a6e7-a7506ba7e990'),
(218, 217, 21, 7, 1, NULL, '2021-02-03 19:11:39', '2021-02-03 19:11:39', '8b6d1557-d4d3-4079-9f69-99ef27c8440c'),
(219, 217, 21, 7, 2, NULL, '2021-02-03 19:11:39', '2021-02-03 19:11:39', 'cbcc9c00-1859-4afd-a96c-3d15777dcf01'),
(220, 217, 21, 7, 3, NULL, '2021-02-03 19:11:39', '2021-02-03 19:11:39', 'bd7041b4-919f-4354-a9ba-ed6b62242864'),
(221, 217, 21, 7, 4, NULL, '2021-02-03 19:11:39', '2021-02-03 19:11:39', 'bb4e9631-5171-4a71-80bf-7093f45ea55b'),
(222, 217, 21, 7, 5, NULL, '2021-02-03 19:11:39', '2021-02-03 19:11:39', 'c8371288-585b-449a-a303-fac24ac8f520'),
(223, 217, 21, 7, 6, NULL, '2021-02-03 19:11:39', '2021-02-03 19:11:39', 'c3963487-526c-4a0a-bab0-0a3c13b35bc8'),
(224, 27, 21, 7, 7, 0, '2021-02-03 19:15:28', '2021-02-03 19:15:28', '63986fbf-9bec-4088-9192-98ef0d41c0f1'),
(226, 225, 21, 7, 1, NULL, '2021-02-03 19:15:29', '2021-02-03 19:15:29', '5ab0b2ee-8aa2-427b-b9bf-b4ec5c8ecf4f'),
(227, 225, 21, 7, 2, NULL, '2021-02-03 19:15:29', '2021-02-03 19:15:29', '8d8fc889-fc54-4dd4-bf1d-f3b9b3e8a123'),
(228, 225, 21, 7, 3, NULL, '2021-02-03 19:15:29', '2021-02-03 19:15:29', '873703b5-8327-44f3-8452-af70b6769d4c'),
(229, 225, 21, 7, 4, NULL, '2021-02-03 19:15:29', '2021-02-03 19:15:29', '72c5cd7d-9252-4f3d-921e-dde5f87ed2b0'),
(230, 225, 21, 7, 5, NULL, '2021-02-03 19:15:29', '2021-02-03 19:15:29', '42ce05aa-0b4d-40e3-9935-280477996bb1'),
(231, 225, 21, 7, 6, NULL, '2021-02-03 19:15:29', '2021-02-03 19:15:29', '344107c7-41e8-4d4a-adaf-1766b0e6f6da'),
(232, 225, 21, 7, 7, NULL, '2021-02-03 19:15:29', '2021-02-03 19:15:29', '0f3c4687-44be-4946-b679-10be0458096c'),
(234, 233, 21, 7, 1, NULL, '2021-02-03 19:49:45', '2021-02-03 19:49:45', 'c0199505-5128-4b80-8f27-d55c945c6cd2'),
(235, 233, 21, 7, 2, NULL, '2021-02-03 19:49:45', '2021-02-03 19:49:45', '4af89dcb-cd94-4f5c-935a-15afe7e7d704'),
(236, 233, 21, 7, 3, NULL, '2021-02-03 19:49:45', '2021-02-03 19:49:45', '386c1ed7-5740-48be-96a3-d802ebf732ff'),
(237, 233, 21, 7, 4, NULL, '2021-02-03 19:49:45', '2021-02-03 19:49:45', 'dd6dee51-43eb-461f-b7da-980958123911'),
(238, 233, 21, 7, 5, NULL, '2021-02-03 19:49:46', '2021-02-03 19:49:46', '5e05e407-09a4-4fb2-af1d-22455ffbc1bb'),
(239, 233, 21, 7, 6, NULL, '2021-02-03 19:49:46', '2021-02-03 19:49:46', '73ead9da-7642-4f7c-afa2-462f6b19f180'),
(240, 233, 21, 7, 7, NULL, '2021-02-03 19:49:46', '2021-02-03 19:49:46', 'c6cc104f-0eff-433b-9adc-52fae6c8f927'),
(242, 241, 21, 7, 1, NULL, '2021-02-03 19:57:19', '2021-02-03 19:57:19', '8516c119-17e8-4ce8-9e46-538fba95aaf6'),
(243, 241, 21, 7, 2, NULL, '2021-02-03 19:57:19', '2021-02-03 19:57:19', 'be9dab68-6c22-464b-a1fa-fd8c13863157'),
(244, 241, 21, 7, 3, NULL, '2021-02-03 19:57:19', '2021-02-03 19:57:19', 'd5c30ced-5371-4771-b338-bd972904043f'),
(245, 241, 21, 7, 4, NULL, '2021-02-03 19:57:19', '2021-02-03 19:57:19', 'c63a745a-d60f-42c1-bc0f-717730abbca3'),
(246, 241, 21, 7, 5, NULL, '2021-02-03 19:57:19', '2021-02-03 19:57:19', 'a2d8c0b5-cab9-4bb1-9aeb-e1fa3b8587cd'),
(247, 241, 21, 7, 6, NULL, '2021-02-03 19:57:19', '2021-02-03 19:57:19', 'ae698879-8ce0-4956-b9d5-20a8556d6c09'),
(248, 241, 21, 7, 7, NULL, '2021-02-03 19:57:19', '2021-02-03 19:57:19', '61982584-83ec-4dfe-b701-43c42e592131'),
(250, 249, 21, 7, 1, NULL, '2021-02-03 19:57:57', '2021-02-03 19:57:57', '54096ba7-f022-40e5-8acc-b3741d360040'),
(251, 249, 21, 7, 2, NULL, '2021-02-03 19:57:57', '2021-02-03 19:57:57', 'c9666775-3167-48e2-a11d-029c9b88d0a0'),
(252, 249, 21, 7, 3, NULL, '2021-02-03 19:57:57', '2021-02-03 19:57:57', 'c04cf88d-8224-4643-be74-4bde81d83ecb'),
(253, 249, 21, 7, 4, NULL, '2021-02-03 19:57:57', '2021-02-03 19:57:57', 'c806e49e-7a45-4a9b-9df3-956344891525'),
(254, 249, 21, 7, 5, NULL, '2021-02-03 19:57:57', '2021-02-03 19:57:57', 'fecb0a19-abfc-4d67-9b72-ff00c58ca865'),
(255, 249, 21, 7, 6, NULL, '2021-02-03 19:57:57', '2021-02-03 19:57:57', '902ea4f4-2dfa-46bd-bae4-0f31f8eb6381'),
(256, 249, 21, 7, 7, NULL, '2021-02-03 19:57:57', '2021-02-03 19:57:57', 'd2fbb995-c791-4d3b-9041-ec704b83237c'),
(257, 27, 21, 5, 4, NULL, '2021-02-03 20:41:48', '2021-02-04 15:45:14', '3acb8db6-ad95-411f-85e8-47b73016a4e8'),
(259, 258, 21, 7, 1, NULL, '2021-02-03 20:41:48', '2021-02-03 20:41:48', '07bfc4f9-bbfe-413a-be9d-3ac707bee1e6'),
(260, 258, 21, 7, 2, NULL, '2021-02-03 20:41:48', '2021-02-03 20:41:48', '85775cad-f276-4242-90e3-cbd29f466359'),
(261, 258, 21, 7, 3, NULL, '2021-02-03 20:41:48', '2021-02-03 20:41:48', '9617f37e-517e-4cc1-b8d7-b54d021e72da'),
(262, 258, 21, 7, 4, NULL, '2021-02-03 20:41:48', '2021-02-03 20:41:48', '0605bc38-bb15-45d0-be3d-927490fd6576'),
(263, 258, 21, 7, 5, NULL, '2021-02-03 20:41:48', '2021-02-03 20:41:48', '747e7885-c710-4a29-b5ee-04f0e3baf8c3'),
(264, 258, 21, 7, 6, NULL, '2021-02-03 20:41:48', '2021-02-03 20:41:48', '66feb220-7bf7-44fc-97de-f0bf506b2e0a'),
(265, 258, 21, 7, 7, NULL, '2021-02-03 20:41:48', '2021-02-03 20:41:48', '7777bca9-fa8b-4cc9-9f07-bca589d39991'),
(266, 258, 21, 5, 8, NULL, '2021-02-03 20:41:48', '2021-02-03 20:41:48', 'fc22f150-4c6f-4ce2-95d4-98602d71b55b'),
(268, 267, 21, 7, 1, NULL, '2021-02-03 20:42:20', '2021-02-03 20:42:20', '56b47ec5-d704-4968-ac8c-29f1948f7449'),
(269, 267, 21, 7, 2, NULL, '2021-02-03 20:42:20', '2021-02-03 20:42:20', 'df3578e3-0e98-404a-a623-738c96d8adf9'),
(270, 267, 21, 5, 3, NULL, '2021-02-03 20:42:20', '2021-02-03 20:42:20', 'f7567ce2-5630-44fa-a982-d17ed5728cef'),
(271, 267, 21, 7, 4, NULL, '2021-02-03 20:42:20', '2021-02-03 20:42:20', '15a59316-47cd-4cb9-acf0-b1158212ccf2'),
(272, 267, 21, 7, 5, NULL, '2021-02-03 20:42:20', '2021-02-03 20:42:20', 'f723adc3-6f23-4574-a3f6-d78d97a84902'),
(274, 273, 21, 7, 1, NULL, '2021-02-03 20:43:23', '2021-02-03 20:43:23', '01a1d019-b7d1-4af6-86e1-a2e9136a28e2'),
(275, 273, 21, 7, 2, NULL, '2021-02-03 20:43:23', '2021-02-03 20:43:23', '89bc6ab7-d2eb-43bc-a7f4-b6033142273a'),
(276, 273, 21, 5, 3, NULL, '2021-02-03 20:43:23', '2021-02-03 20:43:23', 'ab7212ad-35d8-4d8b-bcb4-f096a647afd0'),
(277, 273, 21, 7, 4, NULL, '2021-02-03 20:43:23', '2021-02-03 20:43:23', '3ab2c9ab-9950-4723-aa66-96cd7e0f3846'),
(278, 273, 21, 7, 5, NULL, '2021-02-03 20:43:23', '2021-02-03 20:43:23', '0f191534-c941-4878-916d-607234dca270'),
(284, 283, 21, 7, 1, NULL, '2021-02-03 21:56:44', '2021-02-03 21:56:44', 'b290e02c-9006-4ce8-975f-d379dd41fd7b'),
(286, 285, 21, 7, 1, NULL, '2021-02-03 21:56:44', '2021-02-03 21:56:44', '87a0e010-0863-4925-a111-637aa418d484'),
(288, 287, 21, 7, 1, NULL, '2021-02-04 14:51:36', '2021-02-04 14:51:36', '0300d646-ce52-41e1-ac77-84c2ce80d22b'),
(290, 289, 21, 7, 1, NULL, '2021-02-04 15:15:01', '2021-02-04 15:15:01', 'd8db09c3-a8a7-4890-ac26-f7a929a9a759'),
(293, 292, 21, 7, 1, NULL, '2021-02-04 15:42:40', '2021-02-04 15:42:40', '9df3bfed-ebb4-43f5-b76f-17e3cf5f9109'),
(295, 294, 21, 7, 1, NULL, '2021-02-04 15:42:59', '2021-02-04 15:42:59', '3f2e8520-802d-47d0-9cfb-5725eb26949f'),
(296, 294, 21, 7, 2, NULL, '2021-02-04 15:42:59', '2021-02-04 15:42:59', '3f5df791-a709-4600-9948-34e06e723875'),
(297, 294, 21, 5, 3, NULL, '2021-02-04 15:42:59', '2021-02-04 15:42:59', '600c5b18-232f-493c-9dc3-ebc722566234'),
(298, 294, 21, 7, 4, NULL, '2021-02-04 15:42:59', '2021-02-04 15:42:59', '867f4380-1984-4e9b-97b2-fc3271c97a76'),
(299, 294, 21, 7, 5, NULL, '2021-02-04 15:42:59', '2021-02-04 15:42:59', '67a51880-107b-4e5c-9ca6-4d328587b0fd'),
(302, 27, 21, 5, 1, NULL, '2021-02-04 15:45:14', '2021-02-04 15:45:14', '2b1f2f25-93fe-4977-af12-f10b9ceb336a'),
(304, 303, 21, 5, 1, NULL, '2021-02-04 15:45:14', '2021-02-04 15:45:14', '0f8368ee-d0d2-425b-932a-29ab56dddb77'),
(305, 303, 21, 7, 2, NULL, '2021-02-04 15:45:14', '2021-02-04 15:45:14', 'bb0c745a-7fd0-4764-99ea-9f1e9ed15276'),
(306, 303, 21, 7, 3, NULL, '2021-02-04 15:45:14', '2021-02-04 15:45:14', '07dffff1-7b3b-44cd-9dad-f963469f63e7'),
(307, 303, 21, 5, 4, NULL, '2021-02-04 15:45:14', '2021-02-04 15:45:14', 'e3cd9fb1-7af8-48ee-be39-5ed798aba7a1'),
(308, 303, 21, 7, 5, NULL, '2021-02-04 15:45:14', '2021-02-04 15:45:14', '29097505-cb06-4dde-8dc3-360cff2121de'),
(309, 303, 21, 7, 6, NULL, '2021-02-04 15:45:14', '2021-02-04 15:45:14', '021cae6e-18c2-4e60-9ea1-f45b60de3158'),
(311, 310, 21, 5, 1, NULL, '2021-02-04 15:49:23', '2021-02-04 15:49:23', 'c8f0ad72-0d37-44d2-88e4-d12f6fa3f95d'),
(312, 310, 21, 7, 2, NULL, '2021-02-04 15:49:23', '2021-02-04 15:49:23', 'fed18af6-8c7c-4b34-aee1-9b5f81f64c83'),
(313, 310, 21, 7, 3, NULL, '2021-02-04 15:49:23', '2021-02-04 15:49:23', '94cdf174-8ab2-45a9-9dda-0e33847544d8'),
(314, 310, 21, 5, 4, NULL, '2021-02-04 15:49:23', '2021-02-04 15:49:23', 'f51cf4af-4acf-4c3b-ad2a-1309894c5326'),
(315, 310, 21, 7, 5, NULL, '2021-02-04 15:49:23', '2021-02-04 15:49:23', 'dbc531f5-bc27-4d89-8a40-91b3457818c1'),
(316, 310, 21, 7, 6, NULL, '2021-02-04 15:49:23', '2021-02-04 15:49:23', 'b84356d6-f943-443c-9fe3-c09a93e12ed7'),
(322, 321, 21, 7, 1, 1, '2021-02-04 15:57:13', '2021-02-04 15:57:13', 'f5f17dad-6cbd-4da9-a96b-a23b0bfbaf40'),
(324, 323, 21, 7, 1, NULL, '2021-02-04 15:57:13', '2021-02-04 15:57:13', 'a159fa98-4e62-480f-b894-61fa05c1dc1d'),
(326, 325, 21, 7, 1, NULL, '2021-02-04 16:09:13', '2021-02-04 16:09:13', 'a4f908e1-533a-4c42-bde9-cdcd41ebd94e'),
(334, 333, 21, 5, 1, NULL, '2021-02-04 17:31:46', '2021-02-04 17:31:46', 'eea8ba50-97c1-4803-b936-4c7181211a70'),
(335, 333, 21, 7, 2, NULL, '2021-02-04 17:31:46', '2021-02-04 17:31:46', '4ed9748d-b5f7-4209-a59b-7c3e3a57d216'),
(336, 333, 21, 7, 3, NULL, '2021-02-04 17:31:47', '2021-02-04 17:31:47', '7f1aa09d-56aa-45af-bbc8-1aa790f28cc6'),
(337, 333, 21, 5, 4, NULL, '2021-02-04 17:31:47', '2021-02-04 17:31:47', '4a39271b-a2de-47c4-aaff-f39cbcb44c0a'),
(338, 333, 21, 7, 5, NULL, '2021-02-04 17:31:47', '2021-02-04 17:31:47', 'fdd04492-0ac6-43fc-b053-2a69e575a51f'),
(339, 333, 21, 7, 6, NULL, '2021-02-04 17:31:47', '2021-02-04 17:31:47', 'afd239c1-8659-4e91-9a86-211eee641820'),
(342, 341, 21, 7, 1, NULL, '2021-02-04 18:23:17', '2021-02-04 18:23:17', '4243031a-994d-485b-a1f2-22831a8ee3e4'),
(345, 344, 21, 7, 1, NULL, '2021-02-04 18:24:38', '2021-02-04 18:24:38', '9513d7dd-5159-44c4-bed8-f012607edb82'),
(351, 350, 21, 7, 1, NULL, '2021-02-04 21:46:53', '2021-02-04 21:46:53', 'fb84e0b7-1cca-4012-a979-39aea37fd764'),
(353, 352, 21, 7, 1, NULL, '2021-02-04 21:46:53', '2021-02-04 21:46:53', 'e4ef8bcd-aa5b-479a-a0f0-821f9a7bf3d2');

-- --------------------------------------------------------

--
-- Table structure for table `matrixblocktypes`
--

CREATE TABLE `matrixblocktypes` (
  `id` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `matrixblocktypes`
--

INSERT INTO `matrixblocktypes` (`id`, `fieldId`, `fieldLayoutId`, `name`, `handle`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(5, 21, 14, 'Text', 'text', 2, '2021-02-02 22:06:54', '2021-02-03 20:40:37', '8bd946c5-ddc9-47c2-a007-937fd7f2a541'),
(7, 21, 16, 'Media', 'media', 1, '2021-02-03 16:55:14', '2021-02-03 19:50:50', '75385f9b-8a0a-41ca-93e2-bb2e51aa5f9e');

-- --------------------------------------------------------

--
-- Table structure for table `matrixcontent_sections`
--

CREATE TABLE `matrixcontent_sections` (
  `id` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0',
  `field_text_sectionHeight` varchar(255) DEFAULT NULL,
  `field_text_copy` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `matrixcontent_sections`
--

INSERT INTO `matrixcontent_sections` (`id`, `elementId`, `siteId`, `dateCreated`, `dateUpdated`, `uid`, `field_text_sectionHeight`, `field_text_copy`) VALUES
(1, 34, 1, '2021-02-01 21:14:54', '2021-02-02 16:44:05', 'df9f325f-108c-4432-807c-f406be7105ef', NULL, NULL),
(2, 35, 1, '2021-02-01 21:14:54', '2021-02-02 16:44:05', '290f22e2-218a-4693-b4f7-d859889d8a1a', NULL, NULL),
(3, 36, 1, '2021-02-01 21:14:54', '2021-02-02 16:44:05', '2ffdd2f6-525c-4de9-a250-5e2a41b300e7', NULL, NULL),
(4, 37, 1, '2021-02-01 21:14:54', '2021-02-02 16:44:05', '15398c44-e912-441b-921d-f781a22e85e6', NULL, NULL),
(5, 38, 1, '2021-02-01 21:14:54', '2021-02-02 16:44:05', '04b37595-4f46-41f6-84fb-b87e083f604a', NULL, NULL),
(6, 40, 1, '2021-02-01 21:14:54', '2021-02-01 21:14:54', 'f0c28b72-73c1-4a23-9495-51d9468f7327', NULL, NULL),
(7, 41, 1, '2021-02-01 21:14:54', '2021-02-01 21:14:54', 'cbb8fbc7-9611-4bfd-926f-736895776cb7', NULL, NULL),
(8, 42, 1, '2021-02-01 21:14:54', '2021-02-01 21:14:54', '9f94e024-dc92-48e6-8f4e-988550d943d8', NULL, NULL),
(9, 43, 1, '2021-02-01 21:14:54', '2021-02-01 21:14:54', '0d948c0e-3599-477f-bbd5-a1fec589add0', NULL, NULL),
(10, 44, 1, '2021-02-01 21:14:54', '2021-02-01 21:14:54', '05c8f6db-6a20-48e8-883b-6ae7b4abae71', NULL, NULL),
(11, 55, 1, '2021-02-02 16:44:05', '2021-02-02 16:44:05', '0c286217-22bd-4922-9863-e530d08bcf15', NULL, NULL),
(12, 57, 1, '2021-02-02 16:44:05', '2021-02-02 16:44:05', '081beb6c-5bfa-4319-8fa0-603fe96ae51f', NULL, NULL),
(13, 58, 1, '2021-02-02 16:44:05', '2021-02-02 16:44:05', '08c78bc4-5bfe-4809-92cb-5ed115365e01', NULL, NULL),
(14, 59, 1, '2021-02-02 16:44:05', '2021-02-02 16:44:05', 'ebd1e555-d96c-4e58-97de-80e90737489c', NULL, NULL),
(15, 60, 1, '2021-02-02 16:44:05', '2021-02-02 16:44:05', 'c4e336d7-d1b5-476d-860c-777645c1e47f', NULL, NULL),
(16, 61, 1, '2021-02-02 16:44:05', '2021-02-02 16:44:05', 'bf8a6497-f3ac-406d-b01e-e88b4e4bfa09', NULL, NULL),
(17, 62, 1, '2021-02-02 16:44:05', '2021-02-02 16:44:05', '49625fcf-0e69-4eb2-81ba-fc001a0a3dea', NULL, NULL),
(18, 64, 1, '2021-02-02 18:31:01', '2021-02-02 18:31:01', '1a298985-0140-4aa9-8bde-d6c2e797ca6a', NULL, NULL),
(19, 65, 1, '2021-02-02 18:31:01', '2021-02-02 18:31:01', '00facdbb-adb4-45e8-a4ea-3c0178cc3328', NULL, NULL),
(20, 66, 1, '2021-02-02 18:31:01', '2021-02-02 18:31:01', '91ae6718-2d16-4c2c-8863-c258eb582899', NULL, NULL),
(21, 67, 1, '2021-02-02 18:31:01', '2021-02-02 18:31:01', '376808f3-bc7f-48eb-83c4-f801c702fc48', NULL, NULL),
(22, 68, 1, '2021-02-02 18:31:01', '2021-02-02 18:31:01', 'f0f1a78d-5fb4-4934-91e1-267ee83122e3', NULL, NULL),
(23, 70, 1, '2021-02-02 18:33:20', '2021-02-02 22:14:57', '553a23a5-9d70-488d-b7bd-493a6f8f6c32', NULL, NULL),
(24, 71, 1, '2021-02-02 18:33:20', '2021-02-02 18:39:02', '7fb7fa2f-8f5c-4b58-821d-11f35dc93144', NULL, NULL),
(25, 73, 1, '2021-02-02 18:33:20', '2021-02-02 18:33:20', '5b26f077-f906-480b-8963-4e157bfd0a51', NULL, NULL),
(26, 74, 1, '2021-02-02 18:33:21', '2021-02-02 18:33:21', '03c851aa-4e04-4f85-bf8c-57672b097883', NULL, NULL),
(27, 75, 1, '2021-02-02 18:39:02', '2021-02-03 15:35:06', 'e297cb12-2261-4cec-9b02-27be7e4a49d9', NULL, NULL),
(28, 77, 1, '2021-02-02 18:39:02', '2021-02-02 18:39:02', 'c6210b3f-c79f-4524-bce5-bbb5c991f543', NULL, NULL),
(29, 78, 1, '2021-02-02 18:39:02', '2021-02-02 18:39:02', '09f7b4cc-75b5-4f20-87d2-8e7c083df958', NULL, NULL),
(30, 79, 1, '2021-02-02 18:39:02', '2021-02-02 18:39:02', '8ec3fbc1-1b26-4a0c-8393-de061bb68f9a', NULL, NULL),
(31, 81, 1, '2021-02-02 19:59:34', '2021-02-02 19:59:34', 'c33abd36-1c9f-40eb-b9d6-c18d96647d7d', NULL, NULL),
(32, 82, 1, '2021-02-02 19:59:34', '2021-02-02 19:59:34', '26d4ff3c-0109-46ea-8b1d-fa23c7f4b240', NULL, NULL),
(33, 83, 1, '2021-02-02 19:59:34', '2021-02-02 19:59:34', 'ede37ce6-b7a4-4838-a212-29e0a33c008d', NULL, NULL),
(34, 90, 1, '2021-02-02 21:02:09', '2021-02-03 15:35:06', '10ac400f-966c-4fdb-b91f-6babb175c86f', NULL, NULL),
(35, 92, 1, '2021-02-02 21:02:09', '2021-02-02 21:02:09', '50f5a644-bb02-472a-9435-4fef36691782', NULL, NULL),
(36, 93, 1, '2021-02-02 21:02:09', '2021-02-02 21:02:09', '8d91f1c7-9115-40b8-be3a-fd625121c051', NULL, NULL),
(37, 94, 1, '2021-02-02 21:02:09', '2021-02-02 21:02:09', 'e586f787-6dc6-475d-9f8b-31b1ed68ff26', NULL, NULL),
(38, 96, 1, '2021-02-02 22:07:18', '2021-02-02 22:07:18', 'd5a469ff-a081-493e-85e7-a2c1e61563e5', NULL, NULL),
(39, 97, 1, '2021-02-02 22:07:18', '2021-02-02 22:07:18', 'ac193f38-64b9-488a-91e7-42e1af5d4b78', NULL, NULL),
(40, 98, 1, '2021-02-02 22:07:18', '2021-02-02 22:07:18', '2206c64c-a8cd-42c5-b935-8a2beae5d7fb', NULL, NULL),
(41, 100, 1, '2021-02-02 22:09:34', '2021-02-02 22:09:34', '3f1c4975-2cb2-4f9b-ab0c-c661b4a0ee79', NULL, NULL),
(42, 101, 1, '2021-02-02 22:09:34', '2021-02-02 22:09:34', '099676f8-49b5-4fb2-950e-c2a956ed5017', NULL, NULL),
(43, 102, 1, '2021-02-02 22:09:34', '2021-02-02 22:09:34', 'b883bb5e-d5ee-45dc-a53f-3f4dc0245519', NULL, NULL),
(44, 104, 1, '2021-02-02 22:11:01', '2021-02-02 22:11:01', '0b269301-01af-4088-bd79-425bc245b5a3', NULL, NULL),
(45, 105, 1, '2021-02-02 22:11:02', '2021-02-02 22:11:02', '9a877d58-0799-4eca-b6a7-879614ccf613', NULL, NULL),
(46, 106, 1, '2021-02-02 22:11:02', '2021-02-02 22:11:02', 'be2ac75e-906e-42ba-9de8-6f35a3b8198a', NULL, NULL),
(47, 108, 1, '2021-02-02 22:12:05', '2021-02-02 22:12:05', 'ce27cdf0-ae70-409e-a10f-86c89d63cd6a', NULL, NULL),
(48, 109, 1, '2021-02-02 22:12:05', '2021-02-02 22:12:05', 'e6cfbd47-4db3-47d0-81d9-fbf256a336fa', NULL, NULL),
(49, 110, 1, '2021-02-02 22:12:05', '2021-02-02 22:12:05', 'a09acb52-94e9-4ed3-9680-c919d01828cd', NULL, NULL),
(50, 112, 1, '2021-02-02 22:14:57', '2021-02-03 15:35:06', '35919032-31db-49e5-a2c4-bc9d3e4ef631', NULL, NULL),
(51, 114, 1, '2021-02-02 22:14:57', '2021-02-02 22:14:57', '004038dd-c65d-48f0-a38e-b267ec71930a', NULL, NULL),
(52, 115, 1, '2021-02-02 22:14:57', '2021-02-02 22:14:57', 'b41941fc-d757-4339-9f88-0cf4140d0a5b', NULL, NULL),
(53, 116, 1, '2021-02-02 22:14:57', '2021-02-02 22:14:57', '94f74183-faf6-4f00-9dee-bbcdd8a08fdf', NULL, NULL),
(54, 117, 1, '2021-02-02 22:14:57', '2021-02-02 22:14:57', '9ace2b1c-0d05-4223-87fe-672d143be825', NULL, NULL),
(55, 121, 1, '2021-02-02 22:33:05', '2021-02-03 15:35:06', 'ac655c0c-00a0-4856-870a-c8c18e74b198', NULL, NULL),
(56, 122, 1, '2021-02-02 22:33:05', '2021-02-03 15:35:06', 'bafaebbc-4cec-4a10-a45a-6fe563008831', NULL, NULL),
(57, 124, 1, '2021-02-02 22:33:05', '2021-02-02 22:33:05', '03bc6165-70ca-4b00-80b4-12af0bcee485', NULL, NULL),
(58, 125, 1, '2021-02-02 22:33:05', '2021-02-02 22:33:05', 'fd543d11-e077-47ed-9de4-27e2cad6879d', NULL, NULL),
(59, 126, 1, '2021-02-02 22:33:05', '2021-02-02 22:33:05', '80600575-19e1-41a3-9d82-148738462f8a', NULL, NULL),
(60, 127, 1, '2021-02-02 22:33:05', '2021-02-02 22:33:05', 'fd375188-bce7-4cdd-afa7-5b3c939623fb', NULL, NULL),
(61, 128, 1, '2021-02-02 22:33:05', '2021-02-02 22:33:05', 'e95e0745-abd6-416c-9b3d-e757ea302cc3', NULL, NULL),
(62, 130, 1, '2021-02-02 22:38:49', '2021-02-02 22:38:49', 'a31e6ba7-58bb-4ac4-959c-15a7541f7d00', NULL, NULL),
(63, 131, 1, '2021-02-02 22:38:49', '2021-02-02 22:38:49', '6a841f46-7688-42e9-9d3f-429950f882b3', NULL, NULL),
(64, 132, 1, '2021-02-02 22:38:49', '2021-02-02 22:38:49', '146c5f2c-7465-47af-983d-9a88460ba49e', NULL, NULL),
(65, 133, 1, '2021-02-02 22:38:49', '2021-02-02 22:38:49', 'c767fdc8-9516-4ce1-a302-ad23112d3258', NULL, NULL),
(66, 134, 1, '2021-02-02 22:38:49', '2021-02-02 22:38:49', 'c27a8dc7-ee71-426f-8ff4-28a5e0d5f96a', NULL, NULL),
(67, 136, 1, '2021-02-02 22:45:48', '2021-02-02 22:45:48', 'fd595701-8697-4820-82de-1422ce9817d7', NULL, NULL),
(68, 137, 1, '2021-02-02 22:45:48', '2021-02-02 22:45:48', 'f08373ee-79cf-4426-a354-6f8cc8886acd', NULL, NULL),
(69, 138, 1, '2021-02-02 22:45:48', '2021-02-02 22:45:48', '8889abae-cadc-4aaa-90ad-640a41f6d55a', NULL, NULL),
(70, 139, 1, '2021-02-02 22:45:48', '2021-02-02 22:45:48', '258e5d81-1f0e-4776-a1a9-c61227a6fc3a', NULL, NULL),
(71, 140, 1, '2021-02-02 22:45:48', '2021-02-02 22:45:48', '0bdb307f-040f-4e63-8260-ac3b1b0b6c12', NULL, NULL),
(72, 141, 1, '2021-02-03 15:35:06', '2021-02-03 15:35:06', '75bdc652-1f53-4ac7-879e-cf136dc8e637', NULL, NULL),
(73, 143, 1, '2021-02-03 15:35:06', '2021-02-03 15:35:06', 'a59d36f1-89b2-4d72-8dc2-12de702491fd', NULL, NULL),
(74, 144, 1, '2021-02-03 15:35:06', '2021-02-03 15:35:06', 'be7f1afe-0870-4d0b-9913-329676262809', NULL, NULL),
(75, 145, 1, '2021-02-03 15:35:06', '2021-02-03 15:35:06', '6e3b32d2-4352-46b6-9394-8dddbfdb31d4', NULL, NULL),
(76, 146, 1, '2021-02-03 15:35:06', '2021-02-03 15:35:06', 'cd04b9e7-8c51-46ff-96d6-f46374826064', NULL, NULL),
(77, 147, 1, '2021-02-03 15:35:06', '2021-02-03 15:35:06', 'abaa2ae5-2f58-44c8-8117-da8a01910cc6', NULL, NULL),
(78, 148, 1, '2021-02-03 15:35:07', '2021-02-03 15:35:07', '98aeb2c9-891a-444b-a410-007851822af9', NULL, NULL),
(79, 149, 1, '2021-02-03 17:14:27', '2021-02-03 18:20:26', '9042497d-32f1-4e46-a214-61da1c21296b', NULL, NULL),
(80, 151, 1, '2021-02-03 17:14:27', '2021-02-03 17:14:27', 'dd032dc4-ed33-48cd-a644-4b5c57335f1c', NULL, NULL),
(81, 152, 1, '2021-02-03 17:33:22', '2021-02-03 18:20:26', 'eba55628-2e7f-4768-a313-f7cb97938886', NULL, NULL),
(82, 154, 1, '2021-02-03 17:33:23', '2021-02-03 17:33:23', '94b3190f-f8f3-4435-af9b-74a2c1ce6024', NULL, NULL),
(83, 155, 1, '2021-02-03 17:33:23', '2021-02-03 17:33:23', '5afc21c0-96e6-42bb-8fa0-dc9450135fdd', NULL, NULL),
(84, 156, 1, '2021-02-03 17:43:07', '2021-02-03 18:20:26', '7003cfef-520b-4a1e-a37f-f69149a5c337', NULL, NULL),
(85, 158, 1, '2021-02-03 17:43:07', '2021-02-03 17:43:07', '43f9ef46-942a-498e-81d6-8ed09b1f1fcf', NULL, NULL),
(86, 159, 1, '2021-02-03 17:43:07', '2021-02-03 17:43:07', '50ad7f7d-a555-4b62-8656-114e2387e0ee', NULL, NULL),
(87, 160, 1, '2021-02-03 17:43:07', '2021-02-03 17:43:07', 'e88a6c3b-0fa4-4ea2-bdc2-c159ef6b8218', NULL, NULL),
(88, 161, 1, '2021-02-03 17:44:12', '2021-02-03 18:20:26', '17189a51-f540-4492-addd-c452cbcab4c8', NULL, NULL),
(89, 163, 1, '2021-02-03 17:44:12', '2021-02-03 17:44:12', '5ddcd591-26fd-4059-97e6-33e0fc4765d5', NULL, NULL),
(90, 164, 1, '2021-02-03 17:44:12', '2021-02-03 17:44:12', '6eed26eb-e87e-4c3e-9b1e-5f75b55c3d21', NULL, NULL),
(91, 165, 1, '2021-02-03 17:44:12', '2021-02-03 17:44:12', 'a5877cb1-3a08-4d51-a0fb-c5727515e5f1', NULL, NULL),
(92, 166, 1, '2021-02-03 17:44:12', '2021-02-03 17:44:12', '2c9da787-35a2-4dac-9c38-c2f82173d512', NULL, NULL),
(93, 168, 1, '2021-02-03 17:45:24', '2021-02-03 17:45:24', 'b4dd910c-cd31-4d45-9ceb-45704607c269', NULL, NULL),
(94, 169, 1, '2021-02-03 17:45:24', '2021-02-03 17:45:24', '6f8dca7b-29e9-428e-a123-cd1484cb70dc', NULL, NULL),
(95, 170, 1, '2021-02-03 17:45:24', '2021-02-03 17:45:24', '4917fb09-7de0-4ede-b8a9-4ea2e08eadb0', NULL, NULL),
(96, 171, 1, '2021-02-03 17:45:24', '2021-02-03 17:45:24', 'c86cf638-cf4d-46db-bcac-ff089fd28161', NULL, NULL),
(97, 173, 1, '2021-02-03 18:14:21', '2021-02-03 18:14:21', '90d42e7d-d2fe-4b4d-a39e-407a63b67d23', NULL, NULL),
(98, 174, 1, '2021-02-03 18:14:21', '2021-02-03 18:14:21', '35cf806a-5f66-4ead-a5c5-eb2c11292fc4', NULL, NULL),
(99, 175, 1, '2021-02-03 18:14:21', '2021-02-03 18:14:21', 'bc1c501c-546e-499b-88c6-f991e2a137b0', NULL, NULL),
(100, 176, 1, '2021-02-03 18:14:21', '2021-02-03 18:14:21', 'c7cc2856-d46b-4e19-bb90-eff209e24e6a', NULL, NULL),
(101, 177, 1, '2021-02-03 18:20:26', '2021-02-04 21:41:13', '35944773-25c2-4606-bc60-462ff0a11282', NULL, NULL),
(102, 179, 1, '2021-02-03 18:20:26', '2021-02-03 18:20:26', '6338e2df-857b-47d1-885b-90f79aa5271a', NULL, NULL),
(103, 180, 1, '2021-02-03 18:20:26', '2021-02-03 18:20:26', '54c2910b-4349-4045-831e-4f3841aaea38', NULL, NULL),
(104, 181, 1, '2021-02-03 18:20:26', '2021-02-03 18:20:26', '5291fdc5-4c2b-4023-8a5a-d51313a7fe78', NULL, NULL),
(105, 182, 1, '2021-02-03 18:20:26', '2021-02-03 18:20:26', 'b0401653-89f1-4690-b7c3-ded88209a09a', NULL, NULL),
(106, 183, 1, '2021-02-03 18:20:26', '2021-02-03 18:20:26', 'e288ef4e-78e0-4edb-bed2-7d3906663712', NULL, NULL),
(107, 185, 1, '2021-02-03 19:01:22', '2021-02-03 19:01:22', '176f4eef-f644-4866-9479-64b09e075b49', NULL, NULL),
(108, 186, 1, '2021-02-03 19:01:23', '2021-02-03 19:01:23', 'f0049d16-6180-41bd-a39e-9881e87371a0', NULL, NULL),
(109, 187, 1, '2021-02-03 19:01:23', '2021-02-03 19:01:23', '68870672-1c9a-4d35-a56b-04696807b916', NULL, NULL),
(110, 188, 1, '2021-02-03 19:01:23', '2021-02-03 19:01:23', '3a052052-f0a9-42aa-a2b1-5a3acce3cb81', NULL, NULL),
(111, 189, 1, '2021-02-03 19:01:23', '2021-02-03 19:01:23', 'a461b5ca-9ee5-4665-b042-5b2c99c9cf36', NULL, NULL),
(112, 190, 1, '2021-02-03 19:03:20', '2021-02-04 21:41:13', '497bbc0c-cce7-4239-87c1-c471714ab4fb', NULL, NULL),
(113, 191, 1, '2021-02-03 19:03:20', '2021-02-04 21:41:13', '1709e342-99f2-4fc4-9813-6f7537cecb41', NULL, NULL),
(114, 193, 1, '2021-02-03 19:03:20', '2021-02-03 19:03:20', 'a9cfd668-02b4-4eeb-baa1-d2299ed0ead8', NULL, NULL),
(115, 194, 1, '2021-02-03 19:03:20', '2021-02-03 19:03:20', 'f499ad58-f9a8-4833-92fe-5b916426e383', NULL, NULL),
(116, 195, 1, '2021-02-03 19:03:20', '2021-02-03 19:03:20', '768c0295-b2b6-4ddb-817b-b65faf9243e3', NULL, NULL),
(117, 196, 1, '2021-02-03 19:08:10', '2021-02-04 21:41:13', 'c7bcc113-5b63-4100-bda1-5e37960e02d2', NULL, NULL),
(118, 198, 1, '2021-02-03 19:08:10', '2021-02-03 19:08:10', '7b070ddb-6e48-4f36-805c-f1a6ede7414a', NULL, NULL),
(119, 199, 1, '2021-02-03 19:08:10', '2021-02-03 19:08:10', '6d367400-f42e-4acf-be83-8cda3cee59d2', NULL, NULL),
(120, 200, 1, '2021-02-03 19:08:10', '2021-02-03 19:08:10', '42b38ad0-0251-43f4-aa60-b62ecd644693', NULL, NULL),
(121, 201, 1, '2021-02-03 19:08:10', '2021-02-03 19:08:10', '5ddf8c6a-4ae3-4b1d-b068-0c4407c1d25f', NULL, NULL),
(122, 202, 1, '2021-02-03 19:10:09', '2021-02-03 20:41:48', '15dec832-287c-4477-b148-9c2f4bc01294', NULL, NULL),
(123, 204, 1, '2021-02-03 19:10:09', '2021-02-03 19:10:09', '7fb0dd9a-36c8-4796-8b64-f078818087c2', NULL, NULL),
(124, 205, 1, '2021-02-03 19:10:09', '2021-02-03 19:10:09', '3153af11-9c12-4cf2-929b-fb95a9c1c985', NULL, NULL),
(125, 206, 1, '2021-02-03 19:10:09', '2021-02-03 19:10:09', 'da71972e-ec15-4559-81ad-d567aa2faf38', NULL, NULL),
(126, 207, 1, '2021-02-03 19:10:09', '2021-02-03 19:10:09', 'eea629c6-2b16-4090-81a9-f0b50e3e5af7', NULL, NULL),
(127, 208, 1, '2021-02-03 19:10:09', '2021-02-03 19:10:09', '770fa636-4386-4928-be43-fd8a9c3398a5', NULL, NULL),
(128, 209, 1, '2021-02-03 19:10:53', '2021-02-03 20:41:48', 'aaf232fb-d6c2-4162-a19f-98bb4044536e', NULL, NULL),
(129, 211, 1, '2021-02-03 19:10:53', '2021-02-03 19:10:53', 'f5739ed0-c667-4832-bfae-fe59bdb06e56', NULL, NULL),
(130, 212, 1, '2021-02-03 19:10:53', '2021-02-03 19:10:53', '25792db7-2144-4afb-ab09-b183284e576e', NULL, NULL),
(131, 213, 1, '2021-02-03 19:10:53', '2021-02-03 19:10:53', '19164bc3-2462-4572-a45b-29e9bf0d0cbe', NULL, NULL),
(132, 214, 1, '2021-02-03 19:10:53', '2021-02-03 19:10:53', 'd5e2cc61-c180-456f-8471-0a2b660c443a', NULL, NULL),
(133, 215, 1, '2021-02-03 19:10:53', '2021-02-03 19:10:53', 'd337f819-9384-4ebf-9f8b-159076fc549e', NULL, NULL),
(134, 216, 1, '2021-02-03 19:10:53', '2021-02-03 19:10:53', '06f7af08-bd06-49a4-80c1-275a436d4606', NULL, NULL),
(135, 218, 1, '2021-02-03 19:11:39', '2021-02-03 19:11:39', 'f804b893-6405-485d-85e1-2482ffdea0e6', NULL, NULL),
(136, 219, 1, '2021-02-03 19:11:39', '2021-02-03 19:11:39', '3e26b9bb-58f7-462a-bf1e-f1fbb3874b5d', NULL, NULL),
(137, 220, 1, '2021-02-03 19:11:39', '2021-02-03 19:11:39', 'db2c263c-10ed-486e-a53d-1a50ad812be4', NULL, NULL),
(138, 221, 1, '2021-02-03 19:11:39', '2021-02-03 19:11:39', '74febb31-ca7b-45c3-a437-f23e80ce0963', NULL, NULL),
(139, 222, 1, '2021-02-03 19:11:39', '2021-02-03 19:11:39', 'a3c3bbcc-6465-453d-a942-877e43fd32c7', NULL, NULL),
(140, 223, 1, '2021-02-03 19:11:39', '2021-02-03 19:11:39', 'a8d70273-6a14-4797-8a5b-0b42af4c7a1b', NULL, NULL),
(141, 224, 1, '2021-02-03 19:15:28', '2021-02-03 20:41:48', '54d18951-3e6d-4651-9362-2be0c3a4cdb4', NULL, NULL),
(142, 226, 1, '2021-02-03 19:15:29', '2021-02-03 19:15:29', '8f4b74ff-2571-4e63-9fb2-8c523c645bfb', NULL, NULL),
(143, 227, 1, '2021-02-03 19:15:29', '2021-02-03 19:15:29', '14116157-5e21-4f7b-9f67-f6274dec5b41', NULL, NULL),
(144, 228, 1, '2021-02-03 19:15:29', '2021-02-03 19:15:29', '01e9c3ae-aadc-446b-adc4-09875fe059dd', NULL, NULL),
(145, 229, 1, '2021-02-03 19:15:29', '2021-02-03 19:15:29', 'c9ead3f5-6dae-46aa-aa41-6f2a20464521', NULL, NULL),
(146, 230, 1, '2021-02-03 19:15:29', '2021-02-03 19:15:29', '57f27ba4-6b22-4ceb-ad59-6306aadf5944', NULL, NULL),
(147, 231, 1, '2021-02-03 19:15:29', '2021-02-03 19:15:29', '91a327bb-1024-481d-9ba2-ae1099bd16e9', NULL, NULL),
(148, 232, 1, '2021-02-03 19:15:29', '2021-02-03 19:15:29', 'f39ec2cd-de21-4419-9eea-9cd90f617a75', NULL, NULL),
(149, 234, 1, '2021-02-03 19:49:45', '2021-02-03 19:49:45', 'ea95b24f-2267-4d28-8dd1-29c67004c023', NULL, NULL),
(150, 235, 1, '2021-02-03 19:49:45', '2021-02-03 19:49:45', '9ee78446-5e3c-4d80-9180-c1b72ff4af32', NULL, NULL),
(151, 236, 1, '2021-02-03 19:49:45', '2021-02-03 19:49:45', '8215572b-c636-49aa-8a07-a704c7f7e77a', NULL, NULL),
(152, 237, 1, '2021-02-03 19:49:45', '2021-02-03 19:49:45', '8f5144ff-c24f-4f49-954a-5899fed05484', NULL, NULL),
(153, 238, 1, '2021-02-03 19:49:46', '2021-02-03 19:49:46', '20e7cabd-a36b-48ca-8a50-7a7946444e6c', NULL, NULL),
(154, 239, 1, '2021-02-03 19:49:46', '2021-02-03 19:49:46', '519d56cc-fd17-4ba8-8cb7-686746faf3ab', NULL, NULL),
(155, 240, 1, '2021-02-03 19:49:46', '2021-02-03 19:49:46', 'd5d6e8e6-6662-4843-a098-d07ce7afa57c', NULL, NULL),
(156, 242, 1, '2021-02-03 19:57:19', '2021-02-03 19:57:19', 'e2515236-ac1d-4cd6-9e80-8729f70b48ee', NULL, NULL),
(157, 243, 1, '2021-02-03 19:57:19', '2021-02-03 19:57:19', '9fb6e771-c212-4a47-a504-bfc7276233ae', NULL, NULL),
(158, 244, 1, '2021-02-03 19:57:19', '2021-02-03 19:57:19', 'd8524523-a7b9-465a-bdb2-df8203cea2f6', NULL, NULL),
(159, 245, 1, '2021-02-03 19:57:19', '2021-02-03 19:57:19', '6e4f66f2-97ee-4d2e-96db-41db00e4b831', NULL, NULL),
(160, 246, 1, '2021-02-03 19:57:19', '2021-02-03 19:57:19', '530d0abf-1c45-40fe-998b-f87d123b81aa', NULL, NULL),
(161, 247, 1, '2021-02-03 19:57:19', '2021-02-03 19:57:19', '587e7af1-67ca-4c75-b9c6-ce138b3a3a52', NULL, NULL),
(162, 248, 1, '2021-02-03 19:57:19', '2021-02-03 19:57:19', '7cd0443a-6097-454a-9c72-e8c4edbdec56', NULL, NULL),
(163, 250, 1, '2021-02-03 19:57:57', '2021-02-03 19:57:57', '68790501-7580-4e8b-b3ed-d8d085c2f2e2', NULL, NULL),
(164, 251, 1, '2021-02-03 19:57:57', '2021-02-03 19:57:57', 'd992344e-fde4-48b2-99ae-1d30f7d59136', NULL, NULL),
(165, 252, 1, '2021-02-03 19:57:57', '2021-02-03 19:57:57', 'e1126131-1b55-4a72-82aa-e6f53345f25a', NULL, NULL),
(166, 253, 1, '2021-02-03 19:57:57', '2021-02-03 19:57:57', 'c0be2d48-3333-4e00-917a-669e251c9226', NULL, NULL),
(167, 254, 1, '2021-02-03 19:57:57', '2021-02-03 19:57:57', 'f4d915fc-85fd-40d3-8404-87d25b884845', NULL, NULL),
(168, 255, 1, '2021-02-03 19:57:57', '2021-02-03 19:57:57', '2337445d-d9f9-4b70-b91d-71aea0ee36d2', NULL, NULL),
(169, 256, 1, '2021-02-03 19:57:57', '2021-02-03 19:57:57', '12195a46-d826-4fa6-b980-7a619d0586af', NULL, NULL),
(170, 257, 1, '2021-02-03 20:41:48', '2021-02-04 21:41:13', 'ea218d22-b408-41cb-ae52-b0439076b83a', 'small', '<p>In this national multi-media campaign, my partner and I took over all the media coming out of the West Coast market. From curating the widespread user generated out-of-home placements across the city, to commissioning and concepting murals, to creating eight documentary shorts—this (310) thing was an ever-growing undertaking that was our thing from the beginning.</p>'),
(171, 259, 1, '2021-02-03 20:41:48', '2021-02-03 20:41:48', '7179d761-9384-4870-a7db-2566c90ac917', NULL, NULL),
(172, 260, 1, '2021-02-03 20:41:48', '2021-02-03 20:41:48', '57970291-643d-4bc8-bc6c-8d8a7e167fb1', NULL, NULL),
(173, 261, 1, '2021-02-03 20:41:48', '2021-02-03 20:41:48', '3e240087-4bec-4717-a73c-ce046bb50646', NULL, NULL),
(174, 262, 1, '2021-02-03 20:41:48', '2021-02-03 20:41:48', '6ca185f8-886f-49c8-bee7-4cff3848ea5c', NULL, NULL),
(175, 263, 1, '2021-02-03 20:41:48', '2021-02-03 20:41:48', '54ab12d3-e00c-45a7-b76b-ab7767f2cf7c', NULL, NULL),
(176, 264, 1, '2021-02-03 20:41:48', '2021-02-03 20:41:48', '76071925-8a11-4797-808a-7656226d193a', NULL, NULL),
(177, 265, 1, '2021-02-03 20:41:48', '2021-02-03 20:41:48', 'd6d2d5d0-8901-4538-bef9-35273a46d321', NULL, NULL),
(178, 266, 1, '2021-02-03 20:41:48', '2021-02-03 20:41:48', 'd64b6305-9ffe-425f-8070-3f581105d50b', 'small', '<p>Hello World! </p>'),
(179, 268, 1, '2021-02-03 20:42:20', '2021-02-03 20:42:20', 'eca7b8cf-ae8e-4f2b-9a5d-71e2d1a4c9cb', NULL, NULL),
(180, 269, 1, '2021-02-03 20:42:20', '2021-02-03 20:42:20', 'd9817dd3-6633-47d2-a7be-8e23f085891f', NULL, NULL),
(181, 270, 1, '2021-02-03 20:42:20', '2021-02-03 20:42:20', '391d3b95-0b72-4340-aa73-d367c400adab', 'small', '<p>In this national multi-media campaign, my partner and I took over all the media coming out of the West Coast market. From curating the widespread user generated out-of-home placements across the city, to commissioning and concepting murals, to creating eight documentary shorts—this (310) thing was an ever-growing undertaking that was our thing from the beginning.</p>'),
(182, 271, 1, '2021-02-03 20:42:20', '2021-02-03 20:42:20', 'c7eac64b-f96f-42fb-95df-75441fdfb59f', NULL, NULL),
(183, 272, 1, '2021-02-03 20:42:20', '2021-02-03 20:42:20', '17e7d9b6-ab47-46d6-9967-2570cb3e0120', NULL, NULL),
(184, 274, 1, '2021-02-03 20:43:23', '2021-02-03 20:43:23', '61dc39b2-50df-4b57-8f0d-83125be1f2e3', NULL, NULL),
(185, 275, 1, '2021-02-03 20:43:23', '2021-02-03 20:43:23', '86efd9d3-1b52-4ac4-9c62-718219d98023', NULL, NULL),
(186, 276, 1, '2021-02-03 20:43:23', '2021-02-03 20:43:23', 'c99e3baa-f7e3-4ea6-8d10-907ca33abd28', 'small', '<p>In this national multi-media campaign, my partner and I took over all the media coming out of the West Coast market. From curating the widespread user generated out-of-home placements across the city, to commissioning and concepting murals, to creating eight documentary shorts—this (310) thing was an ever-growing undertaking that was our thing from the beginning.</p>'),
(187, 277, 1, '2021-02-03 20:43:23', '2021-02-03 20:43:23', '021a18bd-86b2-46b0-977f-34eccfd72417', NULL, NULL),
(188, 278, 1, '2021-02-03 20:43:23', '2021-02-03 20:43:23', 'aa2b4d6a-22e7-4e2f-ab4b-7dce4d9b6d8a', NULL, NULL),
(189, 280, 1, '2021-02-03 21:55:38', '2021-02-03 21:55:38', '26c1b523-c56b-49d1-830e-06bd6b6b4685', NULL, NULL),
(191, 284, 1, '2021-02-03 21:56:44', '2021-02-04 21:41:13', '73670957-0a73-40f1-b9e8-00e0c1c6c7de', NULL, NULL),
(192, 286, 1, '2021-02-03 21:56:44', '2021-02-03 21:56:44', '80899af5-cd00-4c94-bccc-e62fb31cee3d', NULL, NULL),
(193, 288, 1, '2021-02-04 14:51:36', '2021-02-04 14:51:36', '34f454c1-73ef-4bba-aa8d-9c30e55abd77', NULL, NULL),
(194, 290, 1, '2021-02-04 15:15:01', '2021-02-04 15:15:01', 'b32f1104-668c-45f0-b1d4-ff896b01c5a3', NULL, NULL),
(195, 293, 1, '2021-02-04 15:42:40', '2021-02-04 15:42:40', '22bdc811-ba7d-4319-9b63-c59c910f4636', NULL, NULL),
(196, 295, 1, '2021-02-04 15:42:59', '2021-02-04 15:42:59', '9b6db567-4a51-4e00-8fd8-edd4f2fef526', NULL, NULL),
(197, 296, 1, '2021-02-04 15:42:59', '2021-02-04 15:42:59', '893d4641-f614-4b4d-9966-d20d13465600', NULL, NULL),
(198, 297, 1, '2021-02-04 15:42:59', '2021-02-04 15:42:59', '8bb11c38-1aa0-4344-9613-65c533ac32ab', 'small', '<p>In this national multi-media campaign, my partner and I took over all the media coming out of the West Coast market. From curating the widespread user generated out-of-home placements across the city, to commissioning and concepting murals, to creating eight documentary shorts—this (310) thing was an ever-growing undertaking that was our thing from the beginning.</p>'),
(199, 298, 1, '2021-02-04 15:42:59', '2021-02-04 15:42:59', 'b2f078d3-6001-4921-9e03-287e6bd25934', NULL, NULL),
(200, 299, 1, '2021-02-04 15:42:59', '2021-02-04 15:42:59', 'ddbd5d38-936a-4c9a-bd93-fb8468aff8ff', NULL, NULL),
(201, 302, 1, '2021-02-04 15:45:14', '2021-02-04 21:41:13', '530b645f-96fe-41a1-99d5-ac1dd918bfe7', 'large', '<h1>Codes of Culture</h1>\n<p>How do you connect with multicultural millennials, an audience that’s been widely misrepresented by brands? We found the answer in what AT&amp;T stands for: giving people more for their thing. We tapped into the undeniable pride that people have in their area codes and created content and experiences rooted in the culture they care about, coming from the voices they respect.</p>'),
(202, 304, 1, '2021-02-04 15:45:14', '2021-02-04 15:45:14', 'dd45b070-4e98-4e7b-a773-561f8f3a86c7', 'large', '<p>How do you connect with multicultural millennials, an audience that’s been widely misrepresented by brands? We found the answer in what AT&amp;T stands for: giving people more for their thing. We tapped into the undeniable pride that people have in their area codes and created content and experiences rooted in the culture they care about, coming from the voices they respect.</p>'),
(203, 305, 1, '2021-02-04 15:45:14', '2021-02-04 15:45:14', '40976229-a1d5-4185-ab8c-395cba75bfaf', NULL, NULL),
(204, 306, 1, '2021-02-04 15:45:14', '2021-02-04 15:45:14', '9c8bdced-36d7-46b6-b6db-03e7a4b0cd88', NULL, NULL),
(205, 307, 1, '2021-02-04 15:45:14', '2021-02-04 15:45:14', '621a67cb-e229-4de8-95a5-fa8546507404', 'small', '<p>In this national multi-media campaign, my partner and I took over all the media coming out of the West Coast market. From curating the widespread user generated out-of-home placements across the city, to commissioning and concepting murals, to creating eight documentary shorts—this (310) thing was an ever-growing undertaking that was our thing from the beginning.</p>'),
(206, 308, 1, '2021-02-04 15:45:14', '2021-02-04 15:45:14', '90b912d7-2f5d-4e08-9ac4-e3af7f6a9136', NULL, NULL),
(207, 309, 1, '2021-02-04 15:45:14', '2021-02-04 15:45:14', '6932ccbb-5703-4f50-a51c-b8892b208bbc', NULL, NULL),
(208, 311, 1, '2021-02-04 15:49:23', '2021-02-04 15:49:23', 'fff0a35c-c3b0-468a-bcf8-28364e245063', 'large', '<h1>Codes of Culture</h1>\n<p>How do you connect with multicultural millennials, an audience that’s been widely misrepresented by brands? We found the answer in what AT&amp;T stands for: giving people more for their thing. We tapped into the undeniable pride that people have in their area codes and created content and experiences rooted in the culture they care about, coming from the voices they respect.</p>'),
(209, 312, 1, '2021-02-04 15:49:23', '2021-02-04 15:49:23', '13cb9c56-6f1a-404c-b0ba-ff51de4404b4', NULL, NULL),
(210, 313, 1, '2021-02-04 15:49:23', '2021-02-04 15:49:23', '3947b224-534e-4009-b26c-195a316b1e64', NULL, NULL),
(211, 314, 1, '2021-02-04 15:49:23', '2021-02-04 15:49:23', '40849f78-f0b9-4c70-8863-467f258a38c4', 'small', '<p>In this national multi-media campaign, my partner and I took over all the media coming out of the West Coast market. From curating the widespread user generated out-of-home placements across the city, to commissioning and concepting murals, to creating eight documentary shorts—this (310) thing was an ever-growing undertaking that was our thing from the beginning.</p>'),
(212, 315, 1, '2021-02-04 15:49:23', '2021-02-04 15:49:23', '00ce413f-0b56-4fc0-899a-45b1c3c614aa', NULL, NULL),
(213, 316, 1, '2021-02-04 15:49:23', '2021-02-04 15:49:23', 'e640bf01-c0f9-4acc-8958-ca1a8fdc0dc5', NULL, NULL),
(214, 318, 1, '2021-02-04 15:55:58', '2021-02-04 15:55:58', '3c1ce2fb-b5cb-4a8d-9e7a-3ed3cf49f6a7', NULL, NULL),
(216, 322, 1, '2021-02-04 15:57:13', '2021-02-04 21:41:12', 'f3e0a723-b1c8-459c-ac3b-fe1b93f01f3c', NULL, NULL),
(217, 324, 1, '2021-02-04 15:57:13', '2021-02-04 15:57:13', '929caf5c-0200-4215-bae1-2e3fcb8aa6d7', NULL, NULL),
(218, 326, 1, '2021-02-04 16:09:13', '2021-02-04 16:09:13', 'ce57259d-006c-406c-ba97-a0d10db46ca7', NULL, NULL),
(219, 334, 1, '2021-02-04 17:31:46', '2021-02-04 17:31:46', '58667402-c950-4f59-82ab-b13a84895c5e', 'large', '<h1>Codes of Culture</h1>\n<p>How do you connect with multicultural millennials, an audience that’s been widely misrepresented by brands? We found the answer in what AT&amp;T stands for: giving people more for their thing. We tapped into the undeniable pride that people have in their area codes and created content and experiences rooted in the culture they care about, coming from the voices they respect.</p>'),
(220, 335, 1, '2021-02-04 17:31:46', '2021-02-04 17:31:46', '3284c1d9-2bc7-4880-a9a2-e885dd065dde', NULL, NULL),
(221, 336, 1, '2021-02-04 17:31:47', '2021-02-04 17:31:47', 'a5434d21-3bc2-4f39-98c2-c92db3573d27', NULL, NULL),
(222, 337, 1, '2021-02-04 17:31:47', '2021-02-04 17:31:47', '966be312-336a-4637-b279-0e2800498619', 'small', '<p>In this national multi-media campaign, my partner and I took over all the media coming out of the West Coast market. From curating the widespread user generated out-of-home placements across the city, to commissioning and concepting murals, to creating eight documentary shorts—this (310) thing was an ever-growing undertaking that was our thing from the beginning.</p>'),
(223, 338, 1, '2021-02-04 17:31:47', '2021-02-04 17:31:47', '4aa7bee3-b85c-4b30-8845-231580874eec', NULL, NULL),
(224, 339, 1, '2021-02-04 17:31:47', '2021-02-04 17:31:47', '426f0962-5b3e-4a07-a976-b360c9774964', NULL, NULL),
(225, 342, 1, '2021-02-04 18:23:17', '2021-02-04 18:23:17', 'feed4f66-89d5-4709-9654-a98fb974ad57', NULL, NULL),
(226, 345, 1, '2021-02-04 18:24:38', '2021-02-04 18:24:38', '4d38f6ba-af3e-4562-bd17-ec00be963693', NULL, NULL),
(227, 348, 1, '2021-02-04 21:46:37', '2021-02-04 21:46:37', '73e81d39-073c-4b49-ba4e-22cd24458aaa', NULL, NULL),
(229, 351, 1, '2021-02-04 21:46:53', '2021-02-04 21:46:53', '25c91d00-bd67-484a-b1af-a4eb53261d0d', NULL, NULL),
(230, 353, 1, '2021-02-04 21:46:53', '2021-02-04 21:46:53', '45558df5-1f48-426e-adea-98fda9027039', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(11) NOT NULL,
  `track` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applyTime` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `track`, `name`, `applyTime`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'plugin:redactor', 'm180430_204710_remove_old_plugins', '2021-01-30 17:04:52', '2021-01-30 17:04:52', '2021-01-30 17:04:52', '6e6ed30b-1795-4261-b06a-90af03d5fde8'),
(2, 'plugin:redactor', 'Install', '2021-01-30 17:04:52', '2021-01-30 17:04:52', '2021-01-30 17:04:52', '43fbcd15-1f33-4a0a-9ec8-8ac5e90f8cd8'),
(3, 'plugin:redactor', 'm190225_003922_split_cleanup_html_settings', '2021-01-30 17:04:52', '2021-01-30 17:04:52', '2021-01-30 17:04:52', '2c6fe727-ee37-4ab3-acc6-f6527d793d78'),
(4, 'craft', 'Install', '2021-01-30 17:05:00', '2021-01-30 17:05:00', '2021-01-30 17:05:00', 'e0df61fb-bf53-40e3-8b4a-a00113f4bbf4'),
(5, 'craft', 'm150403_183908_migrations_table_changes', '2021-01-30 17:05:00', '2021-01-30 17:05:00', '2021-01-30 17:05:00', '0e2f0a35-51ed-423d-afd0-6797918c0116'),
(6, 'craft', 'm150403_184247_plugins_table_changes', '2021-01-30 17:05:00', '2021-01-30 17:05:00', '2021-01-30 17:05:00', '1b766e59-6887-48de-850d-716e13786ace'),
(7, 'craft', 'm150403_184533_field_version', '2021-01-30 17:05:00', '2021-01-30 17:05:00', '2021-01-30 17:05:00', 'dac31509-67ce-4970-a6a6-4d1ebd47aa00'),
(8, 'craft', 'm150403_184729_type_columns', '2021-01-30 17:05:00', '2021-01-30 17:05:00', '2021-01-30 17:05:00', 'e9e9f7f1-3369-49bd-aa13-7ae9a1f3e8f5'),
(9, 'craft', 'm150403_185142_volumes', '2021-01-30 17:05:00', '2021-01-30 17:05:00', '2021-01-30 17:05:00', '52d021bd-f9e1-483e-b947-9b54ce547975'),
(10, 'craft', 'm150428_231346_userpreferences', '2021-01-30 17:05:00', '2021-01-30 17:05:00', '2021-01-30 17:05:00', '41b61431-2bc2-4ffe-b068-a207cd07f6a5'),
(11, 'craft', 'm150519_150900_fieldversion_conversion', '2021-01-30 17:05:00', '2021-01-30 17:05:00', '2021-01-30 17:05:00', 'fae3e0b0-87c2-47f0-861a-d2f642399847'),
(12, 'craft', 'm150617_213829_update_email_settings', '2021-01-30 17:05:00', '2021-01-30 17:05:00', '2021-01-30 17:05:00', '515a709e-7743-4312-a9ef-e6238fba3965'),
(13, 'craft', 'm150721_124739_templatecachequeries', '2021-01-30 17:05:00', '2021-01-30 17:05:00', '2021-01-30 17:05:00', '94b9c83c-ed15-42df-b3c5-a11325fe42c6'),
(14, 'craft', 'm150724_140822_adjust_quality_settings', '2021-01-30 17:05:00', '2021-01-30 17:05:00', '2021-01-30 17:05:00', '88b559dc-bdc4-4633-8309-e624fd9b7c9b'),
(15, 'craft', 'm150815_133521_last_login_attempt_ip', '2021-01-30 17:05:00', '2021-01-30 17:05:00', '2021-01-30 17:05:00', '6e9c4f3d-0e9f-4ddc-bb9d-6b756fbccbd1'),
(16, 'craft', 'm151002_095935_volume_cache_settings', '2021-01-30 17:05:00', '2021-01-30 17:05:00', '2021-01-30 17:05:00', '805bcc3b-6c9c-4525-b7a9-0fd3b30f7916'),
(17, 'craft', 'm151005_142750_volume_s3_storage_settings', '2021-01-30 17:05:00', '2021-01-30 17:05:00', '2021-01-30 17:05:00', '454128c2-9dd7-4122-83ac-14efd546e044'),
(18, 'craft', 'm151016_133600_delete_asset_thumbnails', '2021-01-30 17:05:00', '2021-01-30 17:05:00', '2021-01-30 17:05:00', '00988748-c877-484d-b546-9f29d5b7200b'),
(19, 'craft', 'm151209_000000_move_logo', '2021-01-30 17:05:00', '2021-01-30 17:05:00', '2021-01-30 17:05:00', '26031e27-b5f9-4c88-af9d-8d99e803a125'),
(20, 'craft', 'm151211_000000_rename_fileId_to_assetId', '2021-01-30 17:05:00', '2021-01-30 17:05:00', '2021-01-30 17:05:00', '0e6f164f-3f80-447f-9d67-ddfba3ef5b6c'),
(21, 'craft', 'm151215_000000_rename_asset_permissions', '2021-01-30 17:05:00', '2021-01-30 17:05:00', '2021-01-30 17:05:00', '427a8ed0-923b-4018-a783-19bce777a79b'),
(22, 'craft', 'm160707_000001_rename_richtext_assetsource_setting', '2021-01-30 17:05:00', '2021-01-30 17:05:00', '2021-01-30 17:05:00', 'a958326f-cd1f-480e-911b-6221588b7076'),
(23, 'craft', 'm160708_185142_volume_hasUrls_setting', '2021-01-30 17:05:00', '2021-01-30 17:05:00', '2021-01-30 17:05:00', '69baf9f4-4f09-4767-806d-b912b0ea0764'),
(24, 'craft', 'm160714_000000_increase_max_asset_filesize', '2021-01-30 17:05:00', '2021-01-30 17:05:00', '2021-01-30 17:05:00', 'a55b7751-80ab-43cb-9e1c-43e12b09679f'),
(25, 'craft', 'm160727_194637_column_cleanup', '2021-01-30 17:05:00', '2021-01-30 17:05:00', '2021-01-30 17:05:00', 'bdc856f0-f206-4243-8257-b432141bf07e'),
(26, 'craft', 'm160804_110002_userphotos_to_assets', '2021-01-30 17:05:00', '2021-01-30 17:05:00', '2021-01-30 17:05:00', '157d1fca-c9a5-432f-93e9-695da546dada'),
(27, 'craft', 'm160807_144858_sites', '2021-01-30 17:05:00', '2021-01-30 17:05:00', '2021-01-30 17:05:00', '9e96843c-f57b-4677-8209-d1f528a4e158'),
(28, 'craft', 'm160829_000000_pending_user_content_cleanup', '2021-01-30 17:05:00', '2021-01-30 17:05:00', '2021-01-30 17:05:00', 'd6b46249-b3bf-478d-87a0-320debca1e2d'),
(29, 'craft', 'm160830_000000_asset_index_uri_increase', '2021-01-30 17:05:00', '2021-01-30 17:05:00', '2021-01-30 17:05:00', '67bac1fb-ed99-4dcd-b8d3-d2f0b2f89fa4'),
(30, 'craft', 'm160912_230520_require_entry_type_id', '2021-01-30 17:05:00', '2021-01-30 17:05:00', '2021-01-30 17:05:00', '46b9d238-0eaa-400e-9ee8-0d851dffae72'),
(31, 'craft', 'm160913_134730_require_matrix_block_type_id', '2021-01-30 17:05:00', '2021-01-30 17:05:00', '2021-01-30 17:05:00', '16bf066f-f257-4bf8-9efc-97be47391292'),
(32, 'craft', 'm160920_174553_matrixblocks_owner_site_id_nullable', '2021-01-30 17:05:00', '2021-01-30 17:05:00', '2021-01-30 17:05:00', '27e528d1-3af4-4f66-a6e9-4df930674dea'),
(33, 'craft', 'm160920_231045_usergroup_handle_title_unique', '2021-01-30 17:05:00', '2021-01-30 17:05:00', '2021-01-30 17:05:00', 'ca2e0af1-4e54-44df-9852-882be3b78ae3'),
(34, 'craft', 'm160925_113941_route_uri_parts', '2021-01-30 17:05:00', '2021-01-30 17:05:00', '2021-01-30 17:05:00', 'b41e2255-5549-4abf-a255-21c58e9c3dc4'),
(35, 'craft', 'm161006_205918_schemaVersion_not_null', '2021-01-30 17:05:00', '2021-01-30 17:05:00', '2021-01-30 17:05:00', 'ce5c891b-8d29-474f-911b-edd357d434eb'),
(36, 'craft', 'm161007_130653_update_email_settings', '2021-01-30 17:05:00', '2021-01-30 17:05:00', '2021-01-30 17:05:00', '05ef0762-ffb5-4998-80af-015fe18c063e'),
(37, 'craft', 'm161013_175052_newParentId', '2021-01-30 17:05:00', '2021-01-30 17:05:00', '2021-01-30 17:05:00', '103c8b17-0e37-4963-9c0a-167238b0fbd5'),
(38, 'craft', 'm161021_102916_fix_recent_entries_widgets', '2021-01-30 17:05:00', '2021-01-30 17:05:00', '2021-01-30 17:05:00', '8d5a1cbe-5c73-4fa9-a19c-8457256e16ae'),
(39, 'craft', 'm161021_182140_rename_get_help_widget', '2021-01-30 17:05:00', '2021-01-30 17:05:00', '2021-01-30 17:05:00', 'f0a5f9c5-0bd6-46ed-b9ac-7c56e5dfa3a6'),
(40, 'craft', 'm161025_000000_fix_char_columns', '2021-01-30 17:05:00', '2021-01-30 17:05:00', '2021-01-30 17:05:00', '91d57b72-d9eb-4753-9d79-0d26ac07c713'),
(41, 'craft', 'm161029_124145_email_message_languages', '2021-01-30 17:05:00', '2021-01-30 17:05:00', '2021-01-30 17:05:00', '840b17d1-b24c-4e1d-a53e-9a70e11e71dc'),
(42, 'craft', 'm161108_000000_new_version_format', '2021-01-30 17:05:00', '2021-01-30 17:05:00', '2021-01-30 17:05:00', 'c01f4795-afe8-48b7-846a-76e872a6fef8'),
(43, 'craft', 'm161109_000000_index_shuffle', '2021-01-30 17:05:00', '2021-01-30 17:05:00', '2021-01-30 17:05:00', '3f4bb3a7-99aa-4363-b2fa-ceb170097b0a'),
(44, 'craft', 'm161122_185500_no_craft_app', '2021-01-30 17:05:00', '2021-01-30 17:05:00', '2021-01-30 17:05:00', 'a95ddd33-7361-430c-810a-e5f6135098a6'),
(45, 'craft', 'm161125_150752_clear_urlmanager_cache', '2021-01-30 17:05:00', '2021-01-30 17:05:00', '2021-01-30 17:05:00', '0ce9be92-0648-415e-b478-cb38c4524702'),
(46, 'craft', 'm161220_000000_volumes_hasurl_notnull', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '5cf4d9af-696d-47a8-9799-ce012f76a2ed'),
(47, 'craft', 'm170114_161144_udates_permission', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', 'd7482b5e-8784-47b7-bb61-cf790af40cd4'),
(48, 'craft', 'm170120_000000_schema_cleanup', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', 'f8c4668a-f2ae-41cd-8d33-1fc0fee3184a'),
(49, 'craft', 'm170126_000000_assets_focal_point', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '627649f7-a917-4488-a9ea-55e72699f1d2'),
(50, 'craft', 'm170206_142126_system_name', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '7b4d76fc-f6fd-426a-9823-685487133edb'),
(51, 'craft', 'm170217_044740_category_branch_limits', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', 'f1c82e78-0384-4f14-9d65-88ba2d42ee8f'),
(52, 'craft', 'm170217_120224_asset_indexing_columns', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '7e1a5742-bbc7-4b64-87b8-7d0300be5a62'),
(53, 'craft', 'm170223_224012_plain_text_settings', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '245cb57f-c1bc-49ee-8a99-9f646c758eb0'),
(54, 'craft', 'm170227_120814_focal_point_percentage', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '38fac248-f1cb-4d7a-bcac-43a0a74ef1b4'),
(55, 'craft', 'm170228_171113_system_messages', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '486eaad7-925a-4f09-bddf-3d3430382dea'),
(56, 'craft', 'm170303_140500_asset_field_source_settings', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '53e21492-63b3-41e1-a979-f0d678d2e6da'),
(57, 'craft', 'm170306_150500_asset_temporary_uploads', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '9caadd74-d362-4dbb-9392-8186c482554a'),
(58, 'craft', 'm170523_190652_element_field_layout_ids', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '9d75142a-c965-4fe7-bac8-35eec76a953f'),
(59, 'craft', 'm170621_195237_format_plugin_handles', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '999e05d1-5889-47b5-81b7-0758f209a2ea'),
(60, 'craft', 'm170630_161027_deprecation_line_nullable', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '20c67995-947d-4167-9bf0-ef7e804dd4cd'),
(61, 'craft', 'm170630_161028_deprecation_changes', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '6efb40f8-5d0d-435e-a937-6eeec91b73d2'),
(62, 'craft', 'm170703_181539_plugins_table_tweaks', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '224bce18-90bd-4f59-a076-d2f51f220cb8'),
(63, 'craft', 'm170704_134916_sites_tables', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '8062a046-7cab-41ae-a12e-77f92ffed736'),
(64, 'craft', 'm170706_183216_rename_sequences', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '467eb640-b072-4f64-9ccb-71d133b702fd'),
(65, 'craft', 'm170707_094758_delete_compiled_traits', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', 'd2171552-7e97-4ea3-932d-95941ae61534'),
(66, 'craft', 'm170731_190138_drop_asset_packagist', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '3bc6f60b-d6f4-48bf-adcb-ac0137f4fede'),
(67, 'craft', 'm170810_201318_create_queue_table', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', 'be7c6a8f-242d-4433-b297-37cd2de98523'),
(68, 'craft', 'm170903_192801_longblob_for_queue_jobs', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '34ba5c75-9364-4ae0-aaf2-fd039dccfb84'),
(69, 'craft', 'm170914_204621_asset_cache_shuffle', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2aac7c90-89a5-4095-ab64-73f25aa9842a'),
(70, 'craft', 'm171011_214115_site_groups', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '5276cce1-3da5-4afc-9f7c-8efe4755e5fb'),
(71, 'craft', 'm171012_151440_primary_site', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '1e1ec8be-123e-4ef2-b195-29432c369e2e'),
(72, 'craft', 'm171013_142500_transform_interlace', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', 'c3030d24-1552-4bf3-bc41-f69b7e6c36f0'),
(73, 'craft', 'm171016_092553_drop_position_select', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '35d67a92-0236-45ec-bacf-92f196db87ce'),
(74, 'craft', 'm171016_221244_less_strict_translation_method', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', 'afe854b7-a64d-411b-8881-69ade513bb70'),
(75, 'craft', 'm171107_000000_assign_group_permissions', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '22be1bbc-9641-41bd-ad34-c59c8b177fa2'),
(76, 'craft', 'm171117_000001_templatecache_index_tune', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', 'b0d0b791-5a03-4f9e-ad7b-34283d385663'),
(77, 'craft', 'm171126_105927_disabled_plugins', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '9e4b8adb-9058-444a-97bf-bec0b5cd3dd9'),
(78, 'craft', 'm171130_214407_craftidtokens_table', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '1e76d61d-811e-4cc0-b300-aa6bfc1b030c'),
(79, 'craft', 'm171202_004225_update_email_settings', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', 'c90b724d-16a7-4cf9-b123-b08c3ec57d48'),
(80, 'craft', 'm171204_000001_templatecache_index_tune_deux', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '10c7d46a-9aed-4d07-93af-3141bf3c2e24'),
(81, 'craft', 'm171205_130908_remove_craftidtokens_refreshtoken_column', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '6d4f4208-6106-4c06-8fc6-44ffc8938242'),
(82, 'craft', 'm171218_143135_longtext_query_column', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '308a8391-3092-43ab-8f10-948e532f82b2'),
(83, 'craft', 'm171231_055546_environment_variables_to_aliases', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', 'da83f472-95da-4151-829a-b7eded737451'),
(84, 'craft', 'm180113_153740_drop_users_archived_column', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '5ce9ad21-d57b-4776-9e18-41e4cfc31098'),
(85, 'craft', 'm180122_213433_propagate_entries_setting', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '3dff0ffd-6b7f-44e3-9605-116bf2c38727'),
(86, 'craft', 'm180124_230459_fix_propagate_entries_values', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '6041d767-28da-49a8-ba3b-879057ba2ab5'),
(87, 'craft', 'm180128_235202_set_tag_slugs', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2c0df543-e0df-449c-b5ad-6e59ebf5527a'),
(88, 'craft', 'm180202_185551_fix_focal_points', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '8cdd0bd9-b7e4-4381-8cee-386ecf5077bb'),
(89, 'craft', 'm180217_172123_tiny_ints', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', 'fa9071cb-183b-47a1-90df-699b69fbcf11'),
(90, 'craft', 'm180321_233505_small_ints', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2f862ad4-c259-4ea6-84d9-92f644a35698'),
(91, 'craft', 'm180328_115523_new_license_key_statuses', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '48876eb9-a372-4359-9936-5ba35935bd49'),
(92, 'craft', 'm180404_182320_edition_changes', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '8e84d722-ef61-4d3d-bc6c-253c933d825c'),
(93, 'craft', 'm180411_102218_fix_db_routes', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '14491565-711a-4d32-a47d-7d41ee3fd211'),
(94, 'craft', 'm180416_205628_resourcepaths_table', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', 'cc5ed21c-eb3e-4545-ad6a-a96bab8d8448'),
(95, 'craft', 'm180418_205713_widget_cleanup', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '1a97d4cd-e0b6-46e1-947c-f97e404548e6'),
(96, 'craft', 'm180425_203349_searchable_fields', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', 'fdae2fb7-9a5c-496b-abe1-eb8976abf59c'),
(97, 'craft', 'm180516_153000_uids_in_field_settings', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '1d555181-3c3d-44fa-8363-64228d5418a6'),
(98, 'craft', 'm180517_173000_user_photo_volume_to_uid', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '191b57a9-f135-4643-b7ee-cab97e6a9bbb'),
(99, 'craft', 'm180518_173000_permissions_to_uid', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '1566646e-f659-480b-aa1f-1b46bf69b824'),
(100, 'craft', 'm180520_173000_matrix_context_to_uids', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '5d609bb9-d659-4cff-b47d-dc0a336bab80'),
(101, 'craft', 'm180521_172900_project_config_table', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '8310c0de-ae02-4ae1-a1c3-efef2dbac29c'),
(102, 'craft', 'm180521_173000_initial_yml_and_snapshot', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '6697efb1-c06a-4367-918e-c2348118694f'),
(103, 'craft', 'm180731_162030_soft_delete_sites', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '638edb91-5aa9-4934-8cdb-baab46db4c8d'),
(104, 'craft', 'm180810_214427_soft_delete_field_layouts', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '17ccbcf0-eacf-47bb-bef1-20f3e7bd9889'),
(105, 'craft', 'm180810_214439_soft_delete_elements', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '5b3ea3e7-368b-4bf9-a053-8b00878e12f7'),
(106, 'craft', 'm180824_193422_case_sensitivity_fixes', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', 'ae1d2d8f-e72e-481f-91c9-007df60ffffa'),
(107, 'craft', 'm180901_151639_fix_matrixcontent_tables', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', 'de0b7ed5-68eb-4a7e-a921-231d51fd08cc'),
(108, 'craft', 'm180904_112109_permission_changes', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '6fd01799-9e20-401c-826e-42e824bc207e'),
(109, 'craft', 'm180910_142030_soft_delete_sitegroups', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', 'c09f5654-a1e1-4090-be00-219f7509f500'),
(110, 'craft', 'm181011_160000_soft_delete_asset_support', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', 'bb4e019e-fa7d-4f80-8a07-d3b8f2ad285b'),
(111, 'craft', 'm181016_183648_set_default_user_settings', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', 'c111fc52-6319-40c7-915c-32991d445709'),
(112, 'craft', 'm181017_225222_system_config_settings', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', 'b0b2f722-4373-44c1-affa-397b620be5da'),
(113, 'craft', 'm181018_222343_drop_userpermissions_from_config', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', 'b0ffd520-638d-4841-b68b-cf5d9bfd0c3d'),
(114, 'craft', 'm181029_130000_add_transforms_routes_to_config', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '3db30de0-fdf9-43d5-8774-80e61e8b50ee'),
(115, 'craft', 'm181112_203955_sequences_table', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', 'cd22c15f-915b-453e-ba8a-95adf7636b42'),
(116, 'craft', 'm181121_001712_cleanup_field_configs', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', 'bbaa58c6-dd2e-41aa-8fa5-b87330d14578'),
(117, 'craft', 'm181128_193942_fix_project_config', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2a0a6c5e-6d32-4d67-bd26-9dcfa16f53d3'),
(118, 'craft', 'm181130_143040_fix_schema_version', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '05921328-4c17-4172-a536-102f32cdf54b'),
(119, 'craft', 'm181211_143040_fix_entry_type_uids', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '82203eca-627c-459d-974f-49d1133d4de4'),
(120, 'craft', 'm181217_153000_fix_structure_uids', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '0292b42b-af67-49b2-bbe7-b73efee05741'),
(121, 'craft', 'm190104_152725_store_licensed_plugin_editions', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', 'cb71d10f-c30c-4b76-8c20-73f65bdc7d0b'),
(122, 'craft', 'm190108_110000_cleanup_project_config', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', 'ea2effc3-cc82-48a6-83e4-71acb07befa5'),
(123, 'craft', 'm190108_113000_asset_field_setting_change', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '6f5e8e79-95e9-48e2-9a61-483ca5ed9da5'),
(124, 'craft', 'm190109_172845_fix_colspan', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', 'fa8cb752-f134-4415-bd5b-9f5f27d68193'),
(125, 'craft', 'm190110_150000_prune_nonexisting_sites', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '690ec6a9-be49-4adf-a100-e9963661bfb0'),
(126, 'craft', 'm190110_214819_soft_delete_volumes', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '35b10dcf-a8b0-416b-a470-6786f8e52f9b'),
(127, 'craft', 'm190112_124737_fix_user_settings', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', 'f7a275cb-0fda-43f9-8f47-08206b374afe'),
(128, 'craft', 'm190112_131225_fix_field_layouts', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '147ceb33-4426-459b-9742-139ec7e3ea6f'),
(129, 'craft', 'm190112_201010_more_soft_deletes', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', 'e75f6795-1468-4767-b658-6fcde5129c93'),
(130, 'craft', 'm190114_143000_more_asset_field_setting_changes', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '023339e8-ce3f-4df9-b61d-a986047f2bb6'),
(131, 'craft', 'm190121_120000_rich_text_config_setting', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', 'de3bfb38-0419-48b9-b6f1-c1dfac0bdea8'),
(132, 'craft', 'm190125_191628_fix_email_transport_password', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '03a27e5c-a2d5-4d26-be56-a9ba1ddbe950'),
(133, 'craft', 'm190128_181422_cleanup_volume_folders', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', 'e7024570-02b8-4781-be7a-b7d88eb95976'),
(134, 'craft', 'm190205_140000_fix_asset_soft_delete_index', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '9bc850e6-fb85-4084-b841-7227e633ef0a'),
(135, 'craft', 'm190218_143000_element_index_settings_uid', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', 'c342dc6d-63b7-4d09-adfb-fb1d85ee1821'),
(136, 'craft', 'm190312_152740_element_revisions', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', 'bd28642c-5bb1-413a-b5f1-bc5fd879f54b'),
(137, 'craft', 'm190327_235137_propagation_method', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '83103b66-5634-42be-9987-661c33f53b82'),
(138, 'craft', 'm190401_223843_drop_old_indexes', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2c3146d1-ed63-4a94-b967-71f962c2b203'),
(139, 'craft', 'm190416_014525_drop_unique_global_indexes', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', 'b87aaa01-182f-4788-9c76-bfa48a7539c0'),
(140, 'craft', 'm190417_085010_add_image_editor_permissions', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '04571a7d-1a4c-41ea-89c9-f914a4f44cd6'),
(141, 'craft', 'm190502_122019_store_default_user_group_uid', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '192d3a83-2999-44fd-94e6-e84b03cc5d6f'),
(142, 'craft', 'm190504_150349_preview_targets', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '49cd11e2-e764-4166-b804-3f9b04312d41'),
(143, 'craft', 'm190516_184711_job_progress_label', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', 'd036040d-3a8e-4bc4-9af8-dc515d88b00d'),
(144, 'craft', 'm190523_190303_optional_revision_creators', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', 'cc90fd87-953d-4c52-a146-b3a68de9f7c3'),
(145, 'craft', 'm190529_204501_fix_duplicate_uids', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', 'e04d6624-da6f-4504-96cc-b350ecaaba8b'),
(146, 'craft', 'm190605_223807_unsaved_drafts', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', 'bf74e045-9f88-4e1b-80f1-a618e2919a59'),
(147, 'craft', 'm190607_230042_entry_revision_error_tables', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '9f57ecc3-b6aa-49b3-a826-037685ee6753'),
(148, 'craft', 'm190608_033429_drop_elements_uid_idx', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', 'dceca141-c770-4dec-8432-3c168a83ecc4'),
(149, 'craft', 'm190617_164400_add_gqlschemas_table', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '0acd03c9-f2c1-4158-b0d7-34dbd86c52e8'),
(150, 'craft', 'm190624_234204_matrix_propagation_method', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '87004cfa-f0d7-4df2-9d56-d415744c7a99'),
(151, 'craft', 'm190711_153020_drop_snapshots', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', 'c724577d-62e3-42e7-bbc9-7f60edc90ff7'),
(152, 'craft', 'm190712_195914_no_draft_revisions', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '6b479387-bd29-4831-b026-6240834c31e4'),
(153, 'craft', 'm190723_140314_fix_preview_targets_column', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '9d29f068-4a62-4ce2-9ff3-f4ceee458e61'),
(154, 'craft', 'm190820_003519_flush_compiled_templates', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', 'df130ec1-daf0-42b9-ac47-281de8af1435'),
(155, 'craft', 'm190823_020339_optional_draft_creators', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '34509299-3ef6-42bc-aaec-f727608ae258'),
(156, 'craft', 'm190913_152146_update_preview_targets', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '01f3a4df-b078-4cf5-a994-63f5bb73daf5'),
(157, 'craft', 'm191107_122000_add_gql_project_config_support', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '4808f9d6-f862-4c97-acc0-822879d7e9fc'),
(158, 'craft', 'm191204_085100_pack_savable_component_settings', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '0045df00-10e4-4382-bb63-63f85c5aff1e'),
(159, 'craft', 'm191206_001148_change_tracking', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '16705f66-2150-4df4-902c-f3cced173e49'),
(160, 'craft', 'm191216_191635_asset_upload_tracking', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', 'e5c3e237-7616-45c2-b450-a9bdb09bcf4a'),
(161, 'craft', 'm191222_002848_peer_asset_permissions', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', 'c582e413-1d7d-4c87-925b-05f3ced780af'),
(162, 'craft', 'm200127_172522_queue_channels', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', 'c1f3e376-e443-469b-acca-73f02bd1076d'),
(163, 'craft', 'm200211_175048_truncate_element_query_cache', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '1bcae04a-a697-4959-b293-6be5769f34ff'),
(164, 'craft', 'm200213_172522_new_elements_index', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', 'f59f62e0-fe2c-4a27-b040-0fb5d4d5cb2d'),
(165, 'craft', 'm200228_195211_long_deprecation_messages', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', 'b5dec9c5-9ef8-4bd9-a44a-97d614ee4fbb'),
(166, 'craft', 'm200306_054652_disabled_sites', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '19f26d20-1db0-4f5a-9263-ecdda6d36ddc'),
(167, 'craft', 'm200522_191453_clear_template_caches', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '6bf8438e-e34e-4bc8-9772-e41f320be86d'),
(168, 'craft', 'm200606_231117_migration_tracks', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '692edc02-5a91-47a4-a1cd-f28a36984602'),
(169, 'craft', 'm200619_215137_title_translation_method', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', 'dd1e52ee-d404-4061-aaa5-204bb2d63f8d'),
(170, 'craft', 'm200620_005028_user_group_descriptions', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '561775f7-e6ee-44e5-a925-80dafed94275'),
(171, 'craft', 'm200620_230205_field_layout_changes', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', 'f4efde01-2c55-4cbe-8fa7-cc618751859c'),
(172, 'craft', 'm200625_131100_move_entrytypes_to_top_project_config', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', 'd007f012-3eab-49b9-9122-dfb5ece10827'),
(173, 'craft', 'm200629_112700_remove_project_config_legacy_files', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', 'd146a247-e272-45d5-879f-07cdccf26fa7'),
(174, 'craft', 'm200630_183000_drop_configmap', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', 'cdf7d682-5007-450c-8a32-c590f9f5cb03'),
(175, 'craft', 'm200715_113400_transform_index_error_flag', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', 'e9a9f11c-9b54-4e5e-b7a6-58b499f7ca48'),
(176, 'craft', 'm200716_110900_replace_file_asset_permissions', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', 'd131f726-c07f-4702-858f-3a7d6a278b47'),
(177, 'craft', 'm200716_153800_public_token_settings_in_project_config', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '3f512625-efe7-4979-99c6-13c2618c1f18'),
(178, 'craft', 'm200720_175543_drop_unique_constraints', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', 'a93a8e66-7891-48f7-ae42-6ed42ced77b5'),
(179, 'craft', 'm200825_051217_project_config_version', '2021-01-30 17:05:01', '2021-01-30 17:05:01', '2021-01-30 17:05:01', 'a2cb69bf-3aa3-450a-94e2-a6ed59d19049'),
(180, 'plugin:aws-s3', 'Install', '2021-02-05 00:29:30', '2021-02-05 00:29:30', '2021-02-05 00:29:30', 'e35d832e-a6ca-4649-84cc-b5d2c1682a09'),
(181, 'plugin:aws-s3', 'm180929_165000_remove_storageclass_setting', '2021-02-05 00:29:30', '2021-02-05 00:29:30', '2021-02-05 00:29:30', 'edba5b49-db30-479a-9260-40e848aa5f1a'),
(182, 'plugin:aws-s3', 'm190131_214300_cleanup_config', '2021-02-05 00:29:30', '2021-02-05 00:29:30', '2021-02-05 00:29:30', 'cc5af44d-82ff-488f-adf2-4c2786693aa6'),
(183, 'plugin:aws-s3', 'm190305_133000_cleanup_expires_config', '2021-02-05 00:29:30', '2021-02-05 00:29:30', '2021-02-05 00:29:30', 'bc2de24a-86fb-4878-8661-b3e4674c0ac3');

-- --------------------------------------------------------

--
-- Table structure for table `plugins`
--

CREATE TABLE `plugins` (
  `id` int(11) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `version` varchar(255) NOT NULL,
  `schemaVersion` varchar(255) NOT NULL,
  `licenseKeyStatus` enum('valid','invalid','mismatched','astray','unknown') NOT NULL DEFAULT 'unknown',
  `licensedEdition` varchar(255) DEFAULT NULL,
  `installDate` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `plugins`
--

INSERT INTO `plugins` (`id`, `handle`, `version`, `schemaVersion`, `licenseKeyStatus`, `licensedEdition`, `installDate`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 'redactor', '2.8.5', '2.3.0', 'unknown', NULL, '2021-01-30 17:04:52', '2021-01-30 17:04:52', '2021-02-05 00:56:53', '0b69119e-aaff-4f6c-97c6-bb07ffdf44a9'),
(2, 'embeddedassets', '2.4.5', '1.0.0', 'unknown', NULL, '2021-02-02 16:38:26', '2021-02-02 16:38:26', '2021-02-05 00:56:53', '3230e772-3aae-44b1-af12-55697712c17a'),
(3, 'remote-sync', '1.4.0', '1.0.0', 'invalid', NULL, '2021-02-04 23:45:49', '2021-02-04 23:45:49', '2021-02-05 00:56:53', '4f62e08a-fff1-4d44-a266-909a08a3554a'),
(4, 'aws-s3', '1.2.11', '1.2', 'unknown', NULL, '2021-02-05 00:29:29', '2021-02-05 00:29:29', '2021-02-05 00:56:53', '559f4cdc-36a7-44f0-9e65-dbfc6a4c0891'),
(5, 'dospaces', '1.1.3', '1.0.0', 'unknown', NULL, '2021-02-05 00:56:48', '2021-02-05 00:56:48', '2021-02-05 00:56:53', 'c0c4985f-1873-4e2a-81db-1daee922a952');

-- --------------------------------------------------------

--
-- Table structure for table `projectconfig`
--

CREATE TABLE `projectconfig` (
  `path` varchar(255) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `projectconfig`
--

INSERT INTO `projectconfig` (`path`, `value`) VALUES
('categoryGroups.c40b2bfd-2b3c-4d7a-8973-92eca28355a3.fieldLayouts.c7b6db94-a610-4b91-8bb7-6f54b908f19d.tabs.0.elements.0.autocapitalize', 'true'),
('categoryGroups.c40b2bfd-2b3c-4d7a-8973-92eca28355a3.fieldLayouts.c7b6db94-a610-4b91-8bb7-6f54b908f19d.tabs.0.elements.0.autocomplete', 'false'),
('categoryGroups.c40b2bfd-2b3c-4d7a-8973-92eca28355a3.fieldLayouts.c7b6db94-a610-4b91-8bb7-6f54b908f19d.tabs.0.elements.0.autocorrect', 'true'),
('categoryGroups.c40b2bfd-2b3c-4d7a-8973-92eca28355a3.fieldLayouts.c7b6db94-a610-4b91-8bb7-6f54b908f19d.tabs.0.elements.0.class', 'null'),
('categoryGroups.c40b2bfd-2b3c-4d7a-8973-92eca28355a3.fieldLayouts.c7b6db94-a610-4b91-8bb7-6f54b908f19d.tabs.0.elements.0.disabled', 'false'),
('categoryGroups.c40b2bfd-2b3c-4d7a-8973-92eca28355a3.fieldLayouts.c7b6db94-a610-4b91-8bb7-6f54b908f19d.tabs.0.elements.0.id', 'null'),
('categoryGroups.c40b2bfd-2b3c-4d7a-8973-92eca28355a3.fieldLayouts.c7b6db94-a610-4b91-8bb7-6f54b908f19d.tabs.0.elements.0.instructions', 'null'),
('categoryGroups.c40b2bfd-2b3c-4d7a-8973-92eca28355a3.fieldLayouts.c7b6db94-a610-4b91-8bb7-6f54b908f19d.tabs.0.elements.0.label', 'null'),
('categoryGroups.c40b2bfd-2b3c-4d7a-8973-92eca28355a3.fieldLayouts.c7b6db94-a610-4b91-8bb7-6f54b908f19d.tabs.0.elements.0.max', 'null'),
('categoryGroups.c40b2bfd-2b3c-4d7a-8973-92eca28355a3.fieldLayouts.c7b6db94-a610-4b91-8bb7-6f54b908f19d.tabs.0.elements.0.min', 'null'),
('categoryGroups.c40b2bfd-2b3c-4d7a-8973-92eca28355a3.fieldLayouts.c7b6db94-a610-4b91-8bb7-6f54b908f19d.tabs.0.elements.0.name', 'null'),
('categoryGroups.c40b2bfd-2b3c-4d7a-8973-92eca28355a3.fieldLayouts.c7b6db94-a610-4b91-8bb7-6f54b908f19d.tabs.0.elements.0.orientation', 'null'),
('categoryGroups.c40b2bfd-2b3c-4d7a-8973-92eca28355a3.fieldLayouts.c7b6db94-a610-4b91-8bb7-6f54b908f19d.tabs.0.elements.0.placeholder', 'null'),
('categoryGroups.c40b2bfd-2b3c-4d7a-8973-92eca28355a3.fieldLayouts.c7b6db94-a610-4b91-8bb7-6f54b908f19d.tabs.0.elements.0.readonly', 'false'),
('categoryGroups.c40b2bfd-2b3c-4d7a-8973-92eca28355a3.fieldLayouts.c7b6db94-a610-4b91-8bb7-6f54b908f19d.tabs.0.elements.0.requirable', 'false'),
('categoryGroups.c40b2bfd-2b3c-4d7a-8973-92eca28355a3.fieldLayouts.c7b6db94-a610-4b91-8bb7-6f54b908f19d.tabs.0.elements.0.size', 'null'),
('categoryGroups.c40b2bfd-2b3c-4d7a-8973-92eca28355a3.fieldLayouts.c7b6db94-a610-4b91-8bb7-6f54b908f19d.tabs.0.elements.0.step', 'null'),
('categoryGroups.c40b2bfd-2b3c-4d7a-8973-92eca28355a3.fieldLayouts.c7b6db94-a610-4b91-8bb7-6f54b908f19d.tabs.0.elements.0.tip', 'null'),
('categoryGroups.c40b2bfd-2b3c-4d7a-8973-92eca28355a3.fieldLayouts.c7b6db94-a610-4b91-8bb7-6f54b908f19d.tabs.0.elements.0.title', 'null'),
('categoryGroups.c40b2bfd-2b3c-4d7a-8973-92eca28355a3.fieldLayouts.c7b6db94-a610-4b91-8bb7-6f54b908f19d.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\TitleField\"'),
('categoryGroups.c40b2bfd-2b3c-4d7a-8973-92eca28355a3.fieldLayouts.c7b6db94-a610-4b91-8bb7-6f54b908f19d.tabs.0.elements.0.warning', 'null'),
('categoryGroups.c40b2bfd-2b3c-4d7a-8973-92eca28355a3.fieldLayouts.c7b6db94-a610-4b91-8bb7-6f54b908f19d.tabs.0.elements.0.width', '100'),
('categoryGroups.c40b2bfd-2b3c-4d7a-8973-92eca28355a3.fieldLayouts.c7b6db94-a610-4b91-8bb7-6f54b908f19d.tabs.0.name', '\"Content\"'),
('categoryGroups.c40b2bfd-2b3c-4d7a-8973-92eca28355a3.fieldLayouts.c7b6db94-a610-4b91-8bb7-6f54b908f19d.tabs.0.sortOrder', '1'),
('categoryGroups.c40b2bfd-2b3c-4d7a-8973-92eca28355a3.handle', '\"role\"'),
('categoryGroups.c40b2bfd-2b3c-4d7a-8973-92eca28355a3.name', '\"Role\"'),
('categoryGroups.c40b2bfd-2b3c-4d7a-8973-92eca28355a3.siteSettings.9e92814a-721a-4b15-ad0e-5862784c6bd0.hasUrls', 'true'),
('categoryGroups.c40b2bfd-2b3c-4d7a-8973-92eca28355a3.siteSettings.9e92814a-721a-4b15-ad0e-5862784c6bd0.template', '\"work/_entry\"'),
('categoryGroups.c40b2bfd-2b3c-4d7a-8973-92eca28355a3.siteSettings.9e92814a-721a-4b15-ad0e-5862784c6bd0.uriFormat', '\"work/{slug}\"'),
('categoryGroups.c40b2bfd-2b3c-4d7a-8973-92eca28355a3.structure.maxLevels', '1'),
('categoryGroups.c40b2bfd-2b3c-4d7a-8973-92eca28355a3.structure.uid', '\"c8d6ce19-2bbf-43da-b49a-8cfe4c4d6c82\"'),
('dateModified', '1612486608'),
('email.fromEmail', '\"wmaxand@gmail.com\"'),
('email.fromName', '\"CraftMamp\"'),
('email.transportType', '\"craft\\\\mail\\\\transportadapters\\\\Sendmail\"'),
('entryTypes.8a889dba-157c-48b2-9b36-ea711041fb9f.fieldLayouts.99b65100-0720-4b4d-a4da-740178907284.tabs.0.elements.0.autocapitalize', 'true'),
('entryTypes.8a889dba-157c-48b2-9b36-ea711041fb9f.fieldLayouts.99b65100-0720-4b4d-a4da-740178907284.tabs.0.elements.0.autocomplete', 'false'),
('entryTypes.8a889dba-157c-48b2-9b36-ea711041fb9f.fieldLayouts.99b65100-0720-4b4d-a4da-740178907284.tabs.0.elements.0.autocorrect', 'true'),
('entryTypes.8a889dba-157c-48b2-9b36-ea711041fb9f.fieldLayouts.99b65100-0720-4b4d-a4da-740178907284.tabs.0.elements.0.class', 'null'),
('entryTypes.8a889dba-157c-48b2-9b36-ea711041fb9f.fieldLayouts.99b65100-0720-4b4d-a4da-740178907284.tabs.0.elements.0.disabled', 'false'),
('entryTypes.8a889dba-157c-48b2-9b36-ea711041fb9f.fieldLayouts.99b65100-0720-4b4d-a4da-740178907284.tabs.0.elements.0.id', 'null'),
('entryTypes.8a889dba-157c-48b2-9b36-ea711041fb9f.fieldLayouts.99b65100-0720-4b4d-a4da-740178907284.tabs.0.elements.0.instructions', 'null'),
('entryTypes.8a889dba-157c-48b2-9b36-ea711041fb9f.fieldLayouts.99b65100-0720-4b4d-a4da-740178907284.tabs.0.elements.0.label', 'null'),
('entryTypes.8a889dba-157c-48b2-9b36-ea711041fb9f.fieldLayouts.99b65100-0720-4b4d-a4da-740178907284.tabs.0.elements.0.max', 'null'),
('entryTypes.8a889dba-157c-48b2-9b36-ea711041fb9f.fieldLayouts.99b65100-0720-4b4d-a4da-740178907284.tabs.0.elements.0.min', 'null'),
('entryTypes.8a889dba-157c-48b2-9b36-ea711041fb9f.fieldLayouts.99b65100-0720-4b4d-a4da-740178907284.tabs.0.elements.0.name', 'null'),
('entryTypes.8a889dba-157c-48b2-9b36-ea711041fb9f.fieldLayouts.99b65100-0720-4b4d-a4da-740178907284.tabs.0.elements.0.orientation', 'null'),
('entryTypes.8a889dba-157c-48b2-9b36-ea711041fb9f.fieldLayouts.99b65100-0720-4b4d-a4da-740178907284.tabs.0.elements.0.placeholder', 'null'),
('entryTypes.8a889dba-157c-48b2-9b36-ea711041fb9f.fieldLayouts.99b65100-0720-4b4d-a4da-740178907284.tabs.0.elements.0.readonly', 'false'),
('entryTypes.8a889dba-157c-48b2-9b36-ea711041fb9f.fieldLayouts.99b65100-0720-4b4d-a4da-740178907284.tabs.0.elements.0.requirable', 'false'),
('entryTypes.8a889dba-157c-48b2-9b36-ea711041fb9f.fieldLayouts.99b65100-0720-4b4d-a4da-740178907284.tabs.0.elements.0.size', 'null'),
('entryTypes.8a889dba-157c-48b2-9b36-ea711041fb9f.fieldLayouts.99b65100-0720-4b4d-a4da-740178907284.tabs.0.elements.0.step', 'null'),
('entryTypes.8a889dba-157c-48b2-9b36-ea711041fb9f.fieldLayouts.99b65100-0720-4b4d-a4da-740178907284.tabs.0.elements.0.tip', 'null'),
('entryTypes.8a889dba-157c-48b2-9b36-ea711041fb9f.fieldLayouts.99b65100-0720-4b4d-a4da-740178907284.tabs.0.elements.0.title', 'null'),
('entryTypes.8a889dba-157c-48b2-9b36-ea711041fb9f.fieldLayouts.99b65100-0720-4b4d-a4da-740178907284.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\EntryTitleField\"'),
('entryTypes.8a889dba-157c-48b2-9b36-ea711041fb9f.fieldLayouts.99b65100-0720-4b4d-a4da-740178907284.tabs.0.elements.0.warning', 'null'),
('entryTypes.8a889dba-157c-48b2-9b36-ea711041fb9f.fieldLayouts.99b65100-0720-4b4d-a4da-740178907284.tabs.0.elements.0.width', '50'),
('entryTypes.8a889dba-157c-48b2-9b36-ea711041fb9f.fieldLayouts.99b65100-0720-4b4d-a4da-740178907284.tabs.0.elements.1.fieldUid', '\"64e2da7d-1386-46e4-9283-3710c968ef4a\"'),
('entryTypes.8a889dba-157c-48b2-9b36-ea711041fb9f.fieldLayouts.99b65100-0720-4b4d-a4da-740178907284.tabs.0.elements.1.instructions', '\"\"'),
('entryTypes.8a889dba-157c-48b2-9b36-ea711041fb9f.fieldLayouts.99b65100-0720-4b4d-a4da-740178907284.tabs.0.elements.1.label', '\"\"'),
('entryTypes.8a889dba-157c-48b2-9b36-ea711041fb9f.fieldLayouts.99b65100-0720-4b4d-a4da-740178907284.tabs.0.elements.1.required', '\"\"'),
('entryTypes.8a889dba-157c-48b2-9b36-ea711041fb9f.fieldLayouts.99b65100-0720-4b4d-a4da-740178907284.tabs.0.elements.1.tip', 'null'),
('entryTypes.8a889dba-157c-48b2-9b36-ea711041fb9f.fieldLayouts.99b65100-0720-4b4d-a4da-740178907284.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.8a889dba-157c-48b2-9b36-ea711041fb9f.fieldLayouts.99b65100-0720-4b4d-a4da-740178907284.tabs.0.elements.1.warning', 'null'),
('entryTypes.8a889dba-157c-48b2-9b36-ea711041fb9f.fieldLayouts.99b65100-0720-4b4d-a4da-740178907284.tabs.0.elements.1.width', '50'),
('entryTypes.8a889dba-157c-48b2-9b36-ea711041fb9f.fieldLayouts.99b65100-0720-4b4d-a4da-740178907284.tabs.0.elements.2.fieldUid', '\"e4cbcc8b-70f8-4e29-942f-0f54bbf2572b\"'),
('entryTypes.8a889dba-157c-48b2-9b36-ea711041fb9f.fieldLayouts.99b65100-0720-4b4d-a4da-740178907284.tabs.0.elements.2.instructions', '\"\"'),
('entryTypes.8a889dba-157c-48b2-9b36-ea711041fb9f.fieldLayouts.99b65100-0720-4b4d-a4da-740178907284.tabs.0.elements.2.label', '\"\"'),
('entryTypes.8a889dba-157c-48b2-9b36-ea711041fb9f.fieldLayouts.99b65100-0720-4b4d-a4da-740178907284.tabs.0.elements.2.required', '\"1\"'),
('entryTypes.8a889dba-157c-48b2-9b36-ea711041fb9f.fieldLayouts.99b65100-0720-4b4d-a4da-740178907284.tabs.0.elements.2.tip', 'null'),
('entryTypes.8a889dba-157c-48b2-9b36-ea711041fb9f.fieldLayouts.99b65100-0720-4b4d-a4da-740178907284.tabs.0.elements.2.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.8a889dba-157c-48b2-9b36-ea711041fb9f.fieldLayouts.99b65100-0720-4b4d-a4da-740178907284.tabs.0.elements.2.warning', 'null'),
('entryTypes.8a889dba-157c-48b2-9b36-ea711041fb9f.fieldLayouts.99b65100-0720-4b4d-a4da-740178907284.tabs.0.elements.2.width', '50'),
('entryTypes.8a889dba-157c-48b2-9b36-ea711041fb9f.fieldLayouts.99b65100-0720-4b4d-a4da-740178907284.tabs.0.elements.3.fieldUid', '\"b01f9258-7792-4fbe-86ae-42ab4327d7c1\"'),
('entryTypes.8a889dba-157c-48b2-9b36-ea711041fb9f.fieldLayouts.99b65100-0720-4b4d-a4da-740178907284.tabs.0.elements.3.instructions', 'null'),
('entryTypes.8a889dba-157c-48b2-9b36-ea711041fb9f.fieldLayouts.99b65100-0720-4b4d-a4da-740178907284.tabs.0.elements.3.label', 'null'),
('entryTypes.8a889dba-157c-48b2-9b36-ea711041fb9f.fieldLayouts.99b65100-0720-4b4d-a4da-740178907284.tabs.0.elements.3.required', 'false'),
('entryTypes.8a889dba-157c-48b2-9b36-ea711041fb9f.fieldLayouts.99b65100-0720-4b4d-a4da-740178907284.tabs.0.elements.3.tip', 'null'),
('entryTypes.8a889dba-157c-48b2-9b36-ea711041fb9f.fieldLayouts.99b65100-0720-4b4d-a4da-740178907284.tabs.0.elements.3.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.8a889dba-157c-48b2-9b36-ea711041fb9f.fieldLayouts.99b65100-0720-4b4d-a4da-740178907284.tabs.0.elements.3.warning', 'null'),
('entryTypes.8a889dba-157c-48b2-9b36-ea711041fb9f.fieldLayouts.99b65100-0720-4b4d-a4da-740178907284.tabs.0.elements.3.width', '50'),
('entryTypes.8a889dba-157c-48b2-9b36-ea711041fb9f.fieldLayouts.99b65100-0720-4b4d-a4da-740178907284.tabs.0.elements.4.fieldUid', '\"08698ccd-1eb1-495e-b32e-3f8c51f9209b\"'),
('entryTypes.8a889dba-157c-48b2-9b36-ea711041fb9f.fieldLayouts.99b65100-0720-4b4d-a4da-740178907284.tabs.0.elements.4.instructions', 'null'),
('entryTypes.8a889dba-157c-48b2-9b36-ea711041fb9f.fieldLayouts.99b65100-0720-4b4d-a4da-740178907284.tabs.0.elements.4.label', 'null'),
('entryTypes.8a889dba-157c-48b2-9b36-ea711041fb9f.fieldLayouts.99b65100-0720-4b4d-a4da-740178907284.tabs.0.elements.4.required', 'false'),
('entryTypes.8a889dba-157c-48b2-9b36-ea711041fb9f.fieldLayouts.99b65100-0720-4b4d-a4da-740178907284.tabs.0.elements.4.tip', 'null'),
('entryTypes.8a889dba-157c-48b2-9b36-ea711041fb9f.fieldLayouts.99b65100-0720-4b4d-a4da-740178907284.tabs.0.elements.4.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.8a889dba-157c-48b2-9b36-ea711041fb9f.fieldLayouts.99b65100-0720-4b4d-a4da-740178907284.tabs.0.elements.4.warning', 'null'),
('entryTypes.8a889dba-157c-48b2-9b36-ea711041fb9f.fieldLayouts.99b65100-0720-4b4d-a4da-740178907284.tabs.0.elements.4.width', '100'),
('entryTypes.8a889dba-157c-48b2-9b36-ea711041fb9f.fieldLayouts.99b65100-0720-4b4d-a4da-740178907284.tabs.0.elements.5.fieldUid', '\"f9c5d406-a00a-4e29-9bcd-bbf8c190a8af\"'),
('entryTypes.8a889dba-157c-48b2-9b36-ea711041fb9f.fieldLayouts.99b65100-0720-4b4d-a4da-740178907284.tabs.0.elements.5.instructions', 'null'),
('entryTypes.8a889dba-157c-48b2-9b36-ea711041fb9f.fieldLayouts.99b65100-0720-4b4d-a4da-740178907284.tabs.0.elements.5.label', 'null'),
('entryTypes.8a889dba-157c-48b2-9b36-ea711041fb9f.fieldLayouts.99b65100-0720-4b4d-a4da-740178907284.tabs.0.elements.5.required', 'false'),
('entryTypes.8a889dba-157c-48b2-9b36-ea711041fb9f.fieldLayouts.99b65100-0720-4b4d-a4da-740178907284.tabs.0.elements.5.tip', 'null'),
('entryTypes.8a889dba-157c-48b2-9b36-ea711041fb9f.fieldLayouts.99b65100-0720-4b4d-a4da-740178907284.tabs.0.elements.5.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.8a889dba-157c-48b2-9b36-ea711041fb9f.fieldLayouts.99b65100-0720-4b4d-a4da-740178907284.tabs.0.elements.5.warning', 'null'),
('entryTypes.8a889dba-157c-48b2-9b36-ea711041fb9f.fieldLayouts.99b65100-0720-4b4d-a4da-740178907284.tabs.0.elements.5.width', '50'),
('entryTypes.8a889dba-157c-48b2-9b36-ea711041fb9f.fieldLayouts.99b65100-0720-4b4d-a4da-740178907284.tabs.0.elements.6.fieldUid', '\"4e41bdfd-969d-415c-aba8-37414994f239\"'),
('entryTypes.8a889dba-157c-48b2-9b36-ea711041fb9f.fieldLayouts.99b65100-0720-4b4d-a4da-740178907284.tabs.0.elements.6.instructions', 'null'),
('entryTypes.8a889dba-157c-48b2-9b36-ea711041fb9f.fieldLayouts.99b65100-0720-4b4d-a4da-740178907284.tabs.0.elements.6.label', 'null'),
('entryTypes.8a889dba-157c-48b2-9b36-ea711041fb9f.fieldLayouts.99b65100-0720-4b4d-a4da-740178907284.tabs.0.elements.6.required', 'false'),
('entryTypes.8a889dba-157c-48b2-9b36-ea711041fb9f.fieldLayouts.99b65100-0720-4b4d-a4da-740178907284.tabs.0.elements.6.tip', 'null'),
('entryTypes.8a889dba-157c-48b2-9b36-ea711041fb9f.fieldLayouts.99b65100-0720-4b4d-a4da-740178907284.tabs.0.elements.6.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.8a889dba-157c-48b2-9b36-ea711041fb9f.fieldLayouts.99b65100-0720-4b4d-a4da-740178907284.tabs.0.elements.6.warning', 'null'),
('entryTypes.8a889dba-157c-48b2-9b36-ea711041fb9f.fieldLayouts.99b65100-0720-4b4d-a4da-740178907284.tabs.0.elements.6.width', '50'),
('entryTypes.8a889dba-157c-48b2-9b36-ea711041fb9f.fieldLayouts.99b65100-0720-4b4d-a4da-740178907284.tabs.0.name', '\"Metadata\"'),
('entryTypes.8a889dba-157c-48b2-9b36-ea711041fb9f.fieldLayouts.99b65100-0720-4b4d-a4da-740178907284.tabs.0.sortOrder', '1'),
('entryTypes.8a889dba-157c-48b2-9b36-ea711041fb9f.fieldLayouts.99b65100-0720-4b4d-a4da-740178907284.tabs.1.elements.0.fieldUid', '\"0d466c5d-123e-4c56-95fb-a2667cc6b29c\"'),
('entryTypes.8a889dba-157c-48b2-9b36-ea711041fb9f.fieldLayouts.99b65100-0720-4b4d-a4da-740178907284.tabs.1.elements.0.instructions', 'null'),
('entryTypes.8a889dba-157c-48b2-9b36-ea711041fb9f.fieldLayouts.99b65100-0720-4b4d-a4da-740178907284.tabs.1.elements.0.label', 'null'),
('entryTypes.8a889dba-157c-48b2-9b36-ea711041fb9f.fieldLayouts.99b65100-0720-4b4d-a4da-740178907284.tabs.1.elements.0.required', 'false'),
('entryTypes.8a889dba-157c-48b2-9b36-ea711041fb9f.fieldLayouts.99b65100-0720-4b4d-a4da-740178907284.tabs.1.elements.0.tip', 'null'),
('entryTypes.8a889dba-157c-48b2-9b36-ea711041fb9f.fieldLayouts.99b65100-0720-4b4d-a4da-740178907284.tabs.1.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.8a889dba-157c-48b2-9b36-ea711041fb9f.fieldLayouts.99b65100-0720-4b4d-a4da-740178907284.tabs.1.elements.0.warning', 'null'),
('entryTypes.8a889dba-157c-48b2-9b36-ea711041fb9f.fieldLayouts.99b65100-0720-4b4d-a4da-740178907284.tabs.1.elements.0.width', '100'),
('entryTypes.8a889dba-157c-48b2-9b36-ea711041fb9f.fieldLayouts.99b65100-0720-4b4d-a4da-740178907284.tabs.1.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\HorizontalRule\"'),
('entryTypes.8a889dba-157c-48b2-9b36-ea711041fb9f.fieldLayouts.99b65100-0720-4b4d-a4da-740178907284.tabs.1.elements.2.fieldUid', '\"72beaf6b-40ae-4f91-9b56-f683de791f97\"'),
('entryTypes.8a889dba-157c-48b2-9b36-ea711041fb9f.fieldLayouts.99b65100-0720-4b4d-a4da-740178907284.tabs.1.elements.2.instructions', 'null'),
('entryTypes.8a889dba-157c-48b2-9b36-ea711041fb9f.fieldLayouts.99b65100-0720-4b4d-a4da-740178907284.tabs.1.elements.2.label', 'null'),
('entryTypes.8a889dba-157c-48b2-9b36-ea711041fb9f.fieldLayouts.99b65100-0720-4b4d-a4da-740178907284.tabs.1.elements.2.required', 'false'),
('entryTypes.8a889dba-157c-48b2-9b36-ea711041fb9f.fieldLayouts.99b65100-0720-4b4d-a4da-740178907284.tabs.1.elements.2.tip', 'null'),
('entryTypes.8a889dba-157c-48b2-9b36-ea711041fb9f.fieldLayouts.99b65100-0720-4b4d-a4da-740178907284.tabs.1.elements.2.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.8a889dba-157c-48b2-9b36-ea711041fb9f.fieldLayouts.99b65100-0720-4b4d-a4da-740178907284.tabs.1.elements.2.warning', 'null'),
('entryTypes.8a889dba-157c-48b2-9b36-ea711041fb9f.fieldLayouts.99b65100-0720-4b4d-a4da-740178907284.tabs.1.elements.2.width', '100'),
('entryTypes.8a889dba-157c-48b2-9b36-ea711041fb9f.fieldLayouts.99b65100-0720-4b4d-a4da-740178907284.tabs.1.name', '\"Content\"'),
('entryTypes.8a889dba-157c-48b2-9b36-ea711041fb9f.fieldLayouts.99b65100-0720-4b4d-a4da-740178907284.tabs.1.sortOrder', '2'),
('entryTypes.8a889dba-157c-48b2-9b36-ea711041fb9f.handle', '\"work\"'),
('entryTypes.8a889dba-157c-48b2-9b36-ea711041fb9f.hasTitleField', 'true'),
('entryTypes.8a889dba-157c-48b2-9b36-ea711041fb9f.name', '\"Work\"'),
('entryTypes.8a889dba-157c-48b2-9b36-ea711041fb9f.section', '\"703b5eed-0225-4060-81f0-38e05ea2dcb9\"'),
('entryTypes.8a889dba-157c-48b2-9b36-ea711041fb9f.sortOrder', '1'),
('entryTypes.8a889dba-157c-48b2-9b36-ea711041fb9f.titleFormat', 'null'),
('entryTypes.8a889dba-157c-48b2-9b36-ea711041fb9f.titleTranslationKeyFormat', 'null'),
('entryTypes.8a889dba-157c-48b2-9b36-ea711041fb9f.titleTranslationMethod', '\"site\"'),
('entryTypes.a2884940-974b-407b-95e2-0c75bf883beb.fieldLayouts.b416398c-e71b-4249-b8e4-032d23615857.tabs.0.elements.0.fieldUid', '\"a70d38dd-b6ff-49bc-9a34-00eef025c844\"'),
('entryTypes.a2884940-974b-407b-95e2-0c75bf883beb.fieldLayouts.b416398c-e71b-4249-b8e4-032d23615857.tabs.0.elements.0.instructions', 'null'),
('entryTypes.a2884940-974b-407b-95e2-0c75bf883beb.fieldLayouts.b416398c-e71b-4249-b8e4-032d23615857.tabs.0.elements.0.label', 'null'),
('entryTypes.a2884940-974b-407b-95e2-0c75bf883beb.fieldLayouts.b416398c-e71b-4249-b8e4-032d23615857.tabs.0.elements.0.required', 'false'),
('entryTypes.a2884940-974b-407b-95e2-0c75bf883beb.fieldLayouts.b416398c-e71b-4249-b8e4-032d23615857.tabs.0.elements.0.tip', 'null'),
('entryTypes.a2884940-974b-407b-95e2-0c75bf883beb.fieldLayouts.b416398c-e71b-4249-b8e4-032d23615857.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.a2884940-974b-407b-95e2-0c75bf883beb.fieldLayouts.b416398c-e71b-4249-b8e4-032d23615857.tabs.0.elements.0.warning', 'null'),
('entryTypes.a2884940-974b-407b-95e2-0c75bf883beb.fieldLayouts.b416398c-e71b-4249-b8e4-032d23615857.tabs.0.elements.0.width', '100'),
('entryTypes.a2884940-974b-407b-95e2-0c75bf883beb.fieldLayouts.b416398c-e71b-4249-b8e4-032d23615857.tabs.0.elements.1.autocapitalize', 'true'),
('entryTypes.a2884940-974b-407b-95e2-0c75bf883beb.fieldLayouts.b416398c-e71b-4249-b8e4-032d23615857.tabs.0.elements.1.autocomplete', 'false'),
('entryTypes.a2884940-974b-407b-95e2-0c75bf883beb.fieldLayouts.b416398c-e71b-4249-b8e4-032d23615857.tabs.0.elements.1.autocorrect', 'true'),
('entryTypes.a2884940-974b-407b-95e2-0c75bf883beb.fieldLayouts.b416398c-e71b-4249-b8e4-032d23615857.tabs.0.elements.1.class', 'null'),
('entryTypes.a2884940-974b-407b-95e2-0c75bf883beb.fieldLayouts.b416398c-e71b-4249-b8e4-032d23615857.tabs.0.elements.1.disabled', 'false'),
('entryTypes.a2884940-974b-407b-95e2-0c75bf883beb.fieldLayouts.b416398c-e71b-4249-b8e4-032d23615857.tabs.0.elements.1.id', 'null'),
('entryTypes.a2884940-974b-407b-95e2-0c75bf883beb.fieldLayouts.b416398c-e71b-4249-b8e4-032d23615857.tabs.0.elements.1.instructions', '\"\"'),
('entryTypes.a2884940-974b-407b-95e2-0c75bf883beb.fieldLayouts.b416398c-e71b-4249-b8e4-032d23615857.tabs.0.elements.1.label', '\"__blank__\"'),
('entryTypes.a2884940-974b-407b-95e2-0c75bf883beb.fieldLayouts.b416398c-e71b-4249-b8e4-032d23615857.tabs.0.elements.1.max', 'null'),
('entryTypes.a2884940-974b-407b-95e2-0c75bf883beb.fieldLayouts.b416398c-e71b-4249-b8e4-032d23615857.tabs.0.elements.1.min', 'null'),
('entryTypes.a2884940-974b-407b-95e2-0c75bf883beb.fieldLayouts.b416398c-e71b-4249-b8e4-032d23615857.tabs.0.elements.1.name', 'null'),
('entryTypes.a2884940-974b-407b-95e2-0c75bf883beb.fieldLayouts.b416398c-e71b-4249-b8e4-032d23615857.tabs.0.elements.1.orientation', 'null'),
('entryTypes.a2884940-974b-407b-95e2-0c75bf883beb.fieldLayouts.b416398c-e71b-4249-b8e4-032d23615857.tabs.0.elements.1.placeholder', 'null'),
('entryTypes.a2884940-974b-407b-95e2-0c75bf883beb.fieldLayouts.b416398c-e71b-4249-b8e4-032d23615857.tabs.0.elements.1.readonly', 'false'),
('entryTypes.a2884940-974b-407b-95e2-0c75bf883beb.fieldLayouts.b416398c-e71b-4249-b8e4-032d23615857.tabs.0.elements.1.requirable', 'false'),
('entryTypes.a2884940-974b-407b-95e2-0c75bf883beb.fieldLayouts.b416398c-e71b-4249-b8e4-032d23615857.tabs.0.elements.1.size', 'null'),
('entryTypes.a2884940-974b-407b-95e2-0c75bf883beb.fieldLayouts.b416398c-e71b-4249-b8e4-032d23615857.tabs.0.elements.1.step', 'null'),
('entryTypes.a2884940-974b-407b-95e2-0c75bf883beb.fieldLayouts.b416398c-e71b-4249-b8e4-032d23615857.tabs.0.elements.1.tip', 'null'),
('entryTypes.a2884940-974b-407b-95e2-0c75bf883beb.fieldLayouts.b416398c-e71b-4249-b8e4-032d23615857.tabs.0.elements.1.title', 'null'),
('entryTypes.a2884940-974b-407b-95e2-0c75bf883beb.fieldLayouts.b416398c-e71b-4249-b8e4-032d23615857.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\EntryTitleField\"'),
('entryTypes.a2884940-974b-407b-95e2-0c75bf883beb.fieldLayouts.b416398c-e71b-4249-b8e4-032d23615857.tabs.0.elements.1.warning', 'null'),
('entryTypes.a2884940-974b-407b-95e2-0c75bf883beb.fieldLayouts.b416398c-e71b-4249-b8e4-032d23615857.tabs.0.elements.1.width', '100'),
('entryTypes.a2884940-974b-407b-95e2-0c75bf883beb.fieldLayouts.b416398c-e71b-4249-b8e4-032d23615857.tabs.0.name', '\"Content\"'),
('entryTypes.a2884940-974b-407b-95e2-0c75bf883beb.fieldLayouts.b416398c-e71b-4249-b8e4-032d23615857.tabs.0.sortOrder', '1'),
('entryTypes.a2884940-974b-407b-95e2-0c75bf883beb.handle', '\"contact\"'),
('entryTypes.a2884940-974b-407b-95e2-0c75bf883beb.hasTitleField', 'false'),
('entryTypes.a2884940-974b-407b-95e2-0c75bf883beb.name', '\"Contact\"'),
('entryTypes.a2884940-974b-407b-95e2-0c75bf883beb.section', '\"db1fcc91-ecc4-4349-9e09-6a579c5b9ba1\"'),
('entryTypes.a2884940-974b-407b-95e2-0c75bf883beb.sortOrder', '1'),
('entryTypes.a2884940-974b-407b-95e2-0c75bf883beb.titleFormat', '\"{section.name|raw}\"'),
('entryTypes.a2884940-974b-407b-95e2-0c75bf883beb.titleTranslationKeyFormat', 'null'),
('entryTypes.a2884940-974b-407b-95e2-0c75bf883beb.titleTranslationMethod', '\"site\"'),
('entryTypes.c3a80522-5ec6-434b-9c78-6980d1f09fe1.fieldLayouts.af3efd09-0987-4480-9772-4212b76fc6a7.tabs.0.elements.0.autocapitalize', 'true'),
('entryTypes.c3a80522-5ec6-434b-9c78-6980d1f09fe1.fieldLayouts.af3efd09-0987-4480-9772-4212b76fc6a7.tabs.0.elements.0.autocomplete', 'false'),
('entryTypes.c3a80522-5ec6-434b-9c78-6980d1f09fe1.fieldLayouts.af3efd09-0987-4480-9772-4212b76fc6a7.tabs.0.elements.0.autocorrect', 'true'),
('entryTypes.c3a80522-5ec6-434b-9c78-6980d1f09fe1.fieldLayouts.af3efd09-0987-4480-9772-4212b76fc6a7.tabs.0.elements.0.class', 'null'),
('entryTypes.c3a80522-5ec6-434b-9c78-6980d1f09fe1.fieldLayouts.af3efd09-0987-4480-9772-4212b76fc6a7.tabs.0.elements.0.disabled', 'false'),
('entryTypes.c3a80522-5ec6-434b-9c78-6980d1f09fe1.fieldLayouts.af3efd09-0987-4480-9772-4212b76fc6a7.tabs.0.elements.0.id', 'null'),
('entryTypes.c3a80522-5ec6-434b-9c78-6980d1f09fe1.fieldLayouts.af3efd09-0987-4480-9772-4212b76fc6a7.tabs.0.elements.0.instructions', 'null'),
('entryTypes.c3a80522-5ec6-434b-9c78-6980d1f09fe1.fieldLayouts.af3efd09-0987-4480-9772-4212b76fc6a7.tabs.0.elements.0.label', 'null'),
('entryTypes.c3a80522-5ec6-434b-9c78-6980d1f09fe1.fieldLayouts.af3efd09-0987-4480-9772-4212b76fc6a7.tabs.0.elements.0.max', 'null'),
('entryTypes.c3a80522-5ec6-434b-9c78-6980d1f09fe1.fieldLayouts.af3efd09-0987-4480-9772-4212b76fc6a7.tabs.0.elements.0.min', 'null'),
('entryTypes.c3a80522-5ec6-434b-9c78-6980d1f09fe1.fieldLayouts.af3efd09-0987-4480-9772-4212b76fc6a7.tabs.0.elements.0.name', 'null'),
('entryTypes.c3a80522-5ec6-434b-9c78-6980d1f09fe1.fieldLayouts.af3efd09-0987-4480-9772-4212b76fc6a7.tabs.0.elements.0.orientation', 'null'),
('entryTypes.c3a80522-5ec6-434b-9c78-6980d1f09fe1.fieldLayouts.af3efd09-0987-4480-9772-4212b76fc6a7.tabs.0.elements.0.placeholder', 'null'),
('entryTypes.c3a80522-5ec6-434b-9c78-6980d1f09fe1.fieldLayouts.af3efd09-0987-4480-9772-4212b76fc6a7.tabs.0.elements.0.readonly', 'false'),
('entryTypes.c3a80522-5ec6-434b-9c78-6980d1f09fe1.fieldLayouts.af3efd09-0987-4480-9772-4212b76fc6a7.tabs.0.elements.0.requirable', 'false'),
('entryTypes.c3a80522-5ec6-434b-9c78-6980d1f09fe1.fieldLayouts.af3efd09-0987-4480-9772-4212b76fc6a7.tabs.0.elements.0.size', 'null'),
('entryTypes.c3a80522-5ec6-434b-9c78-6980d1f09fe1.fieldLayouts.af3efd09-0987-4480-9772-4212b76fc6a7.tabs.0.elements.0.step', 'null'),
('entryTypes.c3a80522-5ec6-434b-9c78-6980d1f09fe1.fieldLayouts.af3efd09-0987-4480-9772-4212b76fc6a7.tabs.0.elements.0.tip', 'null'),
('entryTypes.c3a80522-5ec6-434b-9c78-6980d1f09fe1.fieldLayouts.af3efd09-0987-4480-9772-4212b76fc6a7.tabs.0.elements.0.title', 'null'),
('entryTypes.c3a80522-5ec6-434b-9c78-6980d1f09fe1.fieldLayouts.af3efd09-0987-4480-9772-4212b76fc6a7.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\EntryTitleField\"'),
('entryTypes.c3a80522-5ec6-434b-9c78-6980d1f09fe1.fieldLayouts.af3efd09-0987-4480-9772-4212b76fc6a7.tabs.0.elements.0.warning', 'null'),
('entryTypes.c3a80522-5ec6-434b-9c78-6980d1f09fe1.fieldLayouts.af3efd09-0987-4480-9772-4212b76fc6a7.tabs.0.elements.0.width', '100'),
('entryTypes.c3a80522-5ec6-434b-9c78-6980d1f09fe1.fieldLayouts.af3efd09-0987-4480-9772-4212b76fc6a7.tabs.0.elements.1.fieldUid', '\"64e2da7d-1386-46e4-9283-3710c968ef4a\"'),
('entryTypes.c3a80522-5ec6-434b-9c78-6980d1f09fe1.fieldLayouts.af3efd09-0987-4480-9772-4212b76fc6a7.tabs.0.elements.1.instructions', 'null'),
('entryTypes.c3a80522-5ec6-434b-9c78-6980d1f09fe1.fieldLayouts.af3efd09-0987-4480-9772-4212b76fc6a7.tabs.0.elements.1.label', 'null'),
('entryTypes.c3a80522-5ec6-434b-9c78-6980d1f09fe1.fieldLayouts.af3efd09-0987-4480-9772-4212b76fc6a7.tabs.0.elements.1.required', 'false'),
('entryTypes.c3a80522-5ec6-434b-9c78-6980d1f09fe1.fieldLayouts.af3efd09-0987-4480-9772-4212b76fc6a7.tabs.0.elements.1.tip', 'null'),
('entryTypes.c3a80522-5ec6-434b-9c78-6980d1f09fe1.fieldLayouts.af3efd09-0987-4480-9772-4212b76fc6a7.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.c3a80522-5ec6-434b-9c78-6980d1f09fe1.fieldLayouts.af3efd09-0987-4480-9772-4212b76fc6a7.tabs.0.elements.1.warning', 'null'),
('entryTypes.c3a80522-5ec6-434b-9c78-6980d1f09fe1.fieldLayouts.af3efd09-0987-4480-9772-4212b76fc6a7.tabs.0.elements.1.width', '50'),
('entryTypes.c3a80522-5ec6-434b-9c78-6980d1f09fe1.fieldLayouts.af3efd09-0987-4480-9772-4212b76fc6a7.tabs.0.elements.2.fieldUid', '\"e4cbcc8b-70f8-4e29-942f-0f54bbf2572b\"'),
('entryTypes.c3a80522-5ec6-434b-9c78-6980d1f09fe1.fieldLayouts.af3efd09-0987-4480-9772-4212b76fc6a7.tabs.0.elements.2.instructions', 'null'),
('entryTypes.c3a80522-5ec6-434b-9c78-6980d1f09fe1.fieldLayouts.af3efd09-0987-4480-9772-4212b76fc6a7.tabs.0.elements.2.label', 'null'),
('entryTypes.c3a80522-5ec6-434b-9c78-6980d1f09fe1.fieldLayouts.af3efd09-0987-4480-9772-4212b76fc6a7.tabs.0.elements.2.required', 'false'),
('entryTypes.c3a80522-5ec6-434b-9c78-6980d1f09fe1.fieldLayouts.af3efd09-0987-4480-9772-4212b76fc6a7.tabs.0.elements.2.tip', 'null'),
('entryTypes.c3a80522-5ec6-434b-9c78-6980d1f09fe1.fieldLayouts.af3efd09-0987-4480-9772-4212b76fc6a7.tabs.0.elements.2.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.c3a80522-5ec6-434b-9c78-6980d1f09fe1.fieldLayouts.af3efd09-0987-4480-9772-4212b76fc6a7.tabs.0.elements.2.warning', 'null'),
('entryTypes.c3a80522-5ec6-434b-9c78-6980d1f09fe1.fieldLayouts.af3efd09-0987-4480-9772-4212b76fc6a7.tabs.0.elements.2.width', '50'),
('entryTypes.c3a80522-5ec6-434b-9c78-6980d1f09fe1.fieldLayouts.af3efd09-0987-4480-9772-4212b76fc6a7.tabs.0.elements.3.fieldUid', '\"b01f9258-7792-4fbe-86ae-42ab4327d7c1\"'),
('entryTypes.c3a80522-5ec6-434b-9c78-6980d1f09fe1.fieldLayouts.af3efd09-0987-4480-9772-4212b76fc6a7.tabs.0.elements.3.instructions', 'null'),
('entryTypes.c3a80522-5ec6-434b-9c78-6980d1f09fe1.fieldLayouts.af3efd09-0987-4480-9772-4212b76fc6a7.tabs.0.elements.3.label', 'null'),
('entryTypes.c3a80522-5ec6-434b-9c78-6980d1f09fe1.fieldLayouts.af3efd09-0987-4480-9772-4212b76fc6a7.tabs.0.elements.3.required', 'false'),
('entryTypes.c3a80522-5ec6-434b-9c78-6980d1f09fe1.fieldLayouts.af3efd09-0987-4480-9772-4212b76fc6a7.tabs.0.elements.3.tip', 'null'),
('entryTypes.c3a80522-5ec6-434b-9c78-6980d1f09fe1.fieldLayouts.af3efd09-0987-4480-9772-4212b76fc6a7.tabs.0.elements.3.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.c3a80522-5ec6-434b-9c78-6980d1f09fe1.fieldLayouts.af3efd09-0987-4480-9772-4212b76fc6a7.tabs.0.elements.3.warning', 'null'),
('entryTypes.c3a80522-5ec6-434b-9c78-6980d1f09fe1.fieldLayouts.af3efd09-0987-4480-9772-4212b76fc6a7.tabs.0.elements.3.width', '100'),
('entryTypes.c3a80522-5ec6-434b-9c78-6980d1f09fe1.fieldLayouts.af3efd09-0987-4480-9772-4212b76fc6a7.tabs.0.elements.4.fieldUid', '\"08698ccd-1eb1-495e-b32e-3f8c51f9209b\"'),
('entryTypes.c3a80522-5ec6-434b-9c78-6980d1f09fe1.fieldLayouts.af3efd09-0987-4480-9772-4212b76fc6a7.tabs.0.elements.4.instructions', 'null'),
('entryTypes.c3a80522-5ec6-434b-9c78-6980d1f09fe1.fieldLayouts.af3efd09-0987-4480-9772-4212b76fc6a7.tabs.0.elements.4.label', 'null'),
('entryTypes.c3a80522-5ec6-434b-9c78-6980d1f09fe1.fieldLayouts.af3efd09-0987-4480-9772-4212b76fc6a7.tabs.0.elements.4.required', 'false'),
('entryTypes.c3a80522-5ec6-434b-9c78-6980d1f09fe1.fieldLayouts.af3efd09-0987-4480-9772-4212b76fc6a7.tabs.0.elements.4.tip', 'null'),
('entryTypes.c3a80522-5ec6-434b-9c78-6980d1f09fe1.fieldLayouts.af3efd09-0987-4480-9772-4212b76fc6a7.tabs.0.elements.4.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.c3a80522-5ec6-434b-9c78-6980d1f09fe1.fieldLayouts.af3efd09-0987-4480-9772-4212b76fc6a7.tabs.0.elements.4.warning', 'null'),
('entryTypes.c3a80522-5ec6-434b-9c78-6980d1f09fe1.fieldLayouts.af3efd09-0987-4480-9772-4212b76fc6a7.tabs.0.elements.4.width', '100'),
('entryTypes.c3a80522-5ec6-434b-9c78-6980d1f09fe1.fieldLayouts.af3efd09-0987-4480-9772-4212b76fc6a7.tabs.0.elements.5.fieldUid', '\"f9c5d406-a00a-4e29-9bcd-bbf8c190a8af\"'),
('entryTypes.c3a80522-5ec6-434b-9c78-6980d1f09fe1.fieldLayouts.af3efd09-0987-4480-9772-4212b76fc6a7.tabs.0.elements.5.instructions', 'null'),
('entryTypes.c3a80522-5ec6-434b-9c78-6980d1f09fe1.fieldLayouts.af3efd09-0987-4480-9772-4212b76fc6a7.tabs.0.elements.5.label', 'null'),
('entryTypes.c3a80522-5ec6-434b-9c78-6980d1f09fe1.fieldLayouts.af3efd09-0987-4480-9772-4212b76fc6a7.tabs.0.elements.5.required', 'false'),
('entryTypes.c3a80522-5ec6-434b-9c78-6980d1f09fe1.fieldLayouts.af3efd09-0987-4480-9772-4212b76fc6a7.tabs.0.elements.5.tip', 'null'),
('entryTypes.c3a80522-5ec6-434b-9c78-6980d1f09fe1.fieldLayouts.af3efd09-0987-4480-9772-4212b76fc6a7.tabs.0.elements.5.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.c3a80522-5ec6-434b-9c78-6980d1f09fe1.fieldLayouts.af3efd09-0987-4480-9772-4212b76fc6a7.tabs.0.elements.5.warning', 'null'),
('entryTypes.c3a80522-5ec6-434b-9c78-6980d1f09fe1.fieldLayouts.af3efd09-0987-4480-9772-4212b76fc6a7.tabs.0.elements.5.width', '50'),
('entryTypes.c3a80522-5ec6-434b-9c78-6980d1f09fe1.fieldLayouts.af3efd09-0987-4480-9772-4212b76fc6a7.tabs.0.elements.6.fieldUid', '\"0d466c5d-123e-4c56-95fb-a2667cc6b29c\"'),
('entryTypes.c3a80522-5ec6-434b-9c78-6980d1f09fe1.fieldLayouts.af3efd09-0987-4480-9772-4212b76fc6a7.tabs.0.elements.6.instructions', 'null'),
('entryTypes.c3a80522-5ec6-434b-9c78-6980d1f09fe1.fieldLayouts.af3efd09-0987-4480-9772-4212b76fc6a7.tabs.0.elements.6.label', 'null'),
('entryTypes.c3a80522-5ec6-434b-9c78-6980d1f09fe1.fieldLayouts.af3efd09-0987-4480-9772-4212b76fc6a7.tabs.0.elements.6.required', 'false'),
('entryTypes.c3a80522-5ec6-434b-9c78-6980d1f09fe1.fieldLayouts.af3efd09-0987-4480-9772-4212b76fc6a7.tabs.0.elements.6.tip', 'null'),
('entryTypes.c3a80522-5ec6-434b-9c78-6980d1f09fe1.fieldLayouts.af3efd09-0987-4480-9772-4212b76fc6a7.tabs.0.elements.6.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.c3a80522-5ec6-434b-9c78-6980d1f09fe1.fieldLayouts.af3efd09-0987-4480-9772-4212b76fc6a7.tabs.0.elements.6.warning', 'null'),
('entryTypes.c3a80522-5ec6-434b-9c78-6980d1f09fe1.fieldLayouts.af3efd09-0987-4480-9772-4212b76fc6a7.tabs.0.elements.6.width', '100'),
('entryTypes.c3a80522-5ec6-434b-9c78-6980d1f09fe1.fieldLayouts.af3efd09-0987-4480-9772-4212b76fc6a7.tabs.0.elements.7.fieldUid', '\"72beaf6b-40ae-4f91-9b56-f683de791f97\"'),
('entryTypes.c3a80522-5ec6-434b-9c78-6980d1f09fe1.fieldLayouts.af3efd09-0987-4480-9772-4212b76fc6a7.tabs.0.elements.7.instructions', 'null'),
('entryTypes.c3a80522-5ec6-434b-9c78-6980d1f09fe1.fieldLayouts.af3efd09-0987-4480-9772-4212b76fc6a7.tabs.0.elements.7.label', 'null'),
('entryTypes.c3a80522-5ec6-434b-9c78-6980d1f09fe1.fieldLayouts.af3efd09-0987-4480-9772-4212b76fc6a7.tabs.0.elements.7.required', 'false'),
('entryTypes.c3a80522-5ec6-434b-9c78-6980d1f09fe1.fieldLayouts.af3efd09-0987-4480-9772-4212b76fc6a7.tabs.0.elements.7.tip', 'null'),
('entryTypes.c3a80522-5ec6-434b-9c78-6980d1f09fe1.fieldLayouts.af3efd09-0987-4480-9772-4212b76fc6a7.tabs.0.elements.7.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.c3a80522-5ec6-434b-9c78-6980d1f09fe1.fieldLayouts.af3efd09-0987-4480-9772-4212b76fc6a7.tabs.0.elements.7.warning', 'null'),
('entryTypes.c3a80522-5ec6-434b-9c78-6980d1f09fe1.fieldLayouts.af3efd09-0987-4480-9772-4212b76fc6a7.tabs.0.elements.7.width', '100'),
('entryTypes.c3a80522-5ec6-434b-9c78-6980d1f09fe1.fieldLayouts.af3efd09-0987-4480-9772-4212b76fc6a7.tabs.0.name', '\"Content\"'),
('entryTypes.c3a80522-5ec6-434b-9c78-6980d1f09fe1.fieldLayouts.af3efd09-0987-4480-9772-4212b76fc6a7.tabs.0.sortOrder', '1'),
('entryTypes.c3a80522-5ec6-434b-9c78-6980d1f09fe1.handle', '\"video\"'),
('entryTypes.c3a80522-5ec6-434b-9c78-6980d1f09fe1.hasTitleField', 'true'),
('entryTypes.c3a80522-5ec6-434b-9c78-6980d1f09fe1.name', '\"Video\"'),
('entryTypes.c3a80522-5ec6-434b-9c78-6980d1f09fe1.section', '\"5e908aab-5aef-4028-ae8a-159e0800450f\"'),
('entryTypes.c3a80522-5ec6-434b-9c78-6980d1f09fe1.sortOrder', '1'),
('entryTypes.c3a80522-5ec6-434b-9c78-6980d1f09fe1.titleFormat', 'null'),
('entryTypes.c3a80522-5ec6-434b-9c78-6980d1f09fe1.titleTranslationKeyFormat', 'null'),
('entryTypes.c3a80522-5ec6-434b-9c78-6980d1f09fe1.titleTranslationMethod', '\"site\"'),
('entryTypes.d00648f2-89f5-4fae-a291-b2bb801e4579.fieldLayouts.1a94cd7a-af97-4ba8-a258-b32a652bf5e7.tabs.0.elements.0.autocapitalize', 'true'),
('entryTypes.d00648f2-89f5-4fae-a291-b2bb801e4579.fieldLayouts.1a94cd7a-af97-4ba8-a258-b32a652bf5e7.tabs.0.elements.0.autocomplete', 'false'),
('entryTypes.d00648f2-89f5-4fae-a291-b2bb801e4579.fieldLayouts.1a94cd7a-af97-4ba8-a258-b32a652bf5e7.tabs.0.elements.0.autocorrect', 'true'),
('entryTypes.d00648f2-89f5-4fae-a291-b2bb801e4579.fieldLayouts.1a94cd7a-af97-4ba8-a258-b32a652bf5e7.tabs.0.elements.0.class', 'null'),
('entryTypes.d00648f2-89f5-4fae-a291-b2bb801e4579.fieldLayouts.1a94cd7a-af97-4ba8-a258-b32a652bf5e7.tabs.0.elements.0.disabled', 'false'),
('entryTypes.d00648f2-89f5-4fae-a291-b2bb801e4579.fieldLayouts.1a94cd7a-af97-4ba8-a258-b32a652bf5e7.tabs.0.elements.0.id', 'null'),
('entryTypes.d00648f2-89f5-4fae-a291-b2bb801e4579.fieldLayouts.1a94cd7a-af97-4ba8-a258-b32a652bf5e7.tabs.0.elements.0.instructions', 'null'),
('entryTypes.d00648f2-89f5-4fae-a291-b2bb801e4579.fieldLayouts.1a94cd7a-af97-4ba8-a258-b32a652bf5e7.tabs.0.elements.0.label', 'null'),
('entryTypes.d00648f2-89f5-4fae-a291-b2bb801e4579.fieldLayouts.1a94cd7a-af97-4ba8-a258-b32a652bf5e7.tabs.0.elements.0.max', 'null'),
('entryTypes.d00648f2-89f5-4fae-a291-b2bb801e4579.fieldLayouts.1a94cd7a-af97-4ba8-a258-b32a652bf5e7.tabs.0.elements.0.min', 'null'),
('entryTypes.d00648f2-89f5-4fae-a291-b2bb801e4579.fieldLayouts.1a94cd7a-af97-4ba8-a258-b32a652bf5e7.tabs.0.elements.0.name', 'null'),
('entryTypes.d00648f2-89f5-4fae-a291-b2bb801e4579.fieldLayouts.1a94cd7a-af97-4ba8-a258-b32a652bf5e7.tabs.0.elements.0.orientation', 'null'),
('entryTypes.d00648f2-89f5-4fae-a291-b2bb801e4579.fieldLayouts.1a94cd7a-af97-4ba8-a258-b32a652bf5e7.tabs.0.elements.0.placeholder', 'null'),
('entryTypes.d00648f2-89f5-4fae-a291-b2bb801e4579.fieldLayouts.1a94cd7a-af97-4ba8-a258-b32a652bf5e7.tabs.0.elements.0.readonly', 'false'),
('entryTypes.d00648f2-89f5-4fae-a291-b2bb801e4579.fieldLayouts.1a94cd7a-af97-4ba8-a258-b32a652bf5e7.tabs.0.elements.0.requirable', 'false'),
('entryTypes.d00648f2-89f5-4fae-a291-b2bb801e4579.fieldLayouts.1a94cd7a-af97-4ba8-a258-b32a652bf5e7.tabs.0.elements.0.size', 'null'),
('entryTypes.d00648f2-89f5-4fae-a291-b2bb801e4579.fieldLayouts.1a94cd7a-af97-4ba8-a258-b32a652bf5e7.tabs.0.elements.0.step', 'null'),
('entryTypes.d00648f2-89f5-4fae-a291-b2bb801e4579.fieldLayouts.1a94cd7a-af97-4ba8-a258-b32a652bf5e7.tabs.0.elements.0.tip', 'null'),
('entryTypes.d00648f2-89f5-4fae-a291-b2bb801e4579.fieldLayouts.1a94cd7a-af97-4ba8-a258-b32a652bf5e7.tabs.0.elements.0.title', 'null'),
('entryTypes.d00648f2-89f5-4fae-a291-b2bb801e4579.fieldLayouts.1a94cd7a-af97-4ba8-a258-b32a652bf5e7.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\EntryTitleField\"'),
('entryTypes.d00648f2-89f5-4fae-a291-b2bb801e4579.fieldLayouts.1a94cd7a-af97-4ba8-a258-b32a652bf5e7.tabs.0.elements.0.warning', 'null'),
('entryTypes.d00648f2-89f5-4fae-a291-b2bb801e4579.fieldLayouts.1a94cd7a-af97-4ba8-a258-b32a652bf5e7.tabs.0.elements.0.width', '100'),
('entryTypes.d00648f2-89f5-4fae-a291-b2bb801e4579.fieldLayouts.1a94cd7a-af97-4ba8-a258-b32a652bf5e7.tabs.0.elements.1.fieldUid', '\"64e2da7d-1386-46e4-9283-3710c968ef4a\"'),
('entryTypes.d00648f2-89f5-4fae-a291-b2bb801e4579.fieldLayouts.1a94cd7a-af97-4ba8-a258-b32a652bf5e7.tabs.0.elements.1.instructions', '\"\"'),
('entryTypes.d00648f2-89f5-4fae-a291-b2bb801e4579.fieldLayouts.1a94cd7a-af97-4ba8-a258-b32a652bf5e7.tabs.0.elements.1.label', '\"Publication\"'),
('entryTypes.d00648f2-89f5-4fae-a291-b2bb801e4579.fieldLayouts.1a94cd7a-af97-4ba8-a258-b32a652bf5e7.tabs.0.elements.1.required', '\"1\"'),
('entryTypes.d00648f2-89f5-4fae-a291-b2bb801e4579.fieldLayouts.1a94cd7a-af97-4ba8-a258-b32a652bf5e7.tabs.0.elements.1.tip', 'null'),
('entryTypes.d00648f2-89f5-4fae-a291-b2bb801e4579.fieldLayouts.1a94cd7a-af97-4ba8-a258-b32a652bf5e7.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.d00648f2-89f5-4fae-a291-b2bb801e4579.fieldLayouts.1a94cd7a-af97-4ba8-a258-b32a652bf5e7.tabs.0.elements.1.warning', 'null'),
('entryTypes.d00648f2-89f5-4fae-a291-b2bb801e4579.fieldLayouts.1a94cd7a-af97-4ba8-a258-b32a652bf5e7.tabs.0.elements.1.width', '100'),
('entryTypes.d00648f2-89f5-4fae-a291-b2bb801e4579.fieldLayouts.1a94cd7a-af97-4ba8-a258-b32a652bf5e7.tabs.0.elements.2.fieldUid', '\"e4cbcc8b-70f8-4e29-942f-0f54bbf2572b\"'),
('entryTypes.d00648f2-89f5-4fae-a291-b2bb801e4579.fieldLayouts.1a94cd7a-af97-4ba8-a258-b32a652bf5e7.tabs.0.elements.2.instructions', 'null'),
('entryTypes.d00648f2-89f5-4fae-a291-b2bb801e4579.fieldLayouts.1a94cd7a-af97-4ba8-a258-b32a652bf5e7.tabs.0.elements.2.label', 'null'),
('entryTypes.d00648f2-89f5-4fae-a291-b2bb801e4579.fieldLayouts.1a94cd7a-af97-4ba8-a258-b32a652bf5e7.tabs.0.elements.2.required', 'false'),
('entryTypes.d00648f2-89f5-4fae-a291-b2bb801e4579.fieldLayouts.1a94cd7a-af97-4ba8-a258-b32a652bf5e7.tabs.0.elements.2.tip', 'null'),
('entryTypes.d00648f2-89f5-4fae-a291-b2bb801e4579.fieldLayouts.1a94cd7a-af97-4ba8-a258-b32a652bf5e7.tabs.0.elements.2.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.d00648f2-89f5-4fae-a291-b2bb801e4579.fieldLayouts.1a94cd7a-af97-4ba8-a258-b32a652bf5e7.tabs.0.elements.2.warning', 'null'),
('entryTypes.d00648f2-89f5-4fae-a291-b2bb801e4579.fieldLayouts.1a94cd7a-af97-4ba8-a258-b32a652bf5e7.tabs.0.elements.2.width', '100'),
('entryTypes.d00648f2-89f5-4fae-a291-b2bb801e4579.fieldLayouts.1a94cd7a-af97-4ba8-a258-b32a652bf5e7.tabs.0.elements.3.fieldUid', '\"b01f9258-7792-4fbe-86ae-42ab4327d7c1\"'),
('entryTypes.d00648f2-89f5-4fae-a291-b2bb801e4579.fieldLayouts.1a94cd7a-af97-4ba8-a258-b32a652bf5e7.tabs.0.elements.3.instructions', 'null'),
('entryTypes.d00648f2-89f5-4fae-a291-b2bb801e4579.fieldLayouts.1a94cd7a-af97-4ba8-a258-b32a652bf5e7.tabs.0.elements.3.label', 'null'),
('entryTypes.d00648f2-89f5-4fae-a291-b2bb801e4579.fieldLayouts.1a94cd7a-af97-4ba8-a258-b32a652bf5e7.tabs.0.elements.3.required', 'false'),
('entryTypes.d00648f2-89f5-4fae-a291-b2bb801e4579.fieldLayouts.1a94cd7a-af97-4ba8-a258-b32a652bf5e7.tabs.0.elements.3.tip', 'null'),
('entryTypes.d00648f2-89f5-4fae-a291-b2bb801e4579.fieldLayouts.1a94cd7a-af97-4ba8-a258-b32a652bf5e7.tabs.0.elements.3.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.d00648f2-89f5-4fae-a291-b2bb801e4579.fieldLayouts.1a94cd7a-af97-4ba8-a258-b32a652bf5e7.tabs.0.elements.3.warning', 'null'),
('entryTypes.d00648f2-89f5-4fae-a291-b2bb801e4579.fieldLayouts.1a94cd7a-af97-4ba8-a258-b32a652bf5e7.tabs.0.elements.3.width', '100'),
('entryTypes.d00648f2-89f5-4fae-a291-b2bb801e4579.fieldLayouts.1a94cd7a-af97-4ba8-a258-b32a652bf5e7.tabs.0.elements.4.fieldUid', '\"f9c5d406-a00a-4e29-9bcd-bbf8c190a8af\"'),
('entryTypes.d00648f2-89f5-4fae-a291-b2bb801e4579.fieldLayouts.1a94cd7a-af97-4ba8-a258-b32a652bf5e7.tabs.0.elements.4.instructions', '\"\"'),
('entryTypes.d00648f2-89f5-4fae-a291-b2bb801e4579.fieldLayouts.1a94cd7a-af97-4ba8-a258-b32a652bf5e7.tabs.0.elements.4.label', '\"\"'),
('entryTypes.d00648f2-89f5-4fae-a291-b2bb801e4579.fieldLayouts.1a94cd7a-af97-4ba8-a258-b32a652bf5e7.tabs.0.elements.4.required', '\"1\"'),
('entryTypes.d00648f2-89f5-4fae-a291-b2bb801e4579.fieldLayouts.1a94cd7a-af97-4ba8-a258-b32a652bf5e7.tabs.0.elements.4.tip', 'null'),
('entryTypes.d00648f2-89f5-4fae-a291-b2bb801e4579.fieldLayouts.1a94cd7a-af97-4ba8-a258-b32a652bf5e7.tabs.0.elements.4.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.d00648f2-89f5-4fae-a291-b2bb801e4579.fieldLayouts.1a94cd7a-af97-4ba8-a258-b32a652bf5e7.tabs.0.elements.4.warning', 'null'),
('entryTypes.d00648f2-89f5-4fae-a291-b2bb801e4579.fieldLayouts.1a94cd7a-af97-4ba8-a258-b32a652bf5e7.tabs.0.elements.4.width', '100'),
('entryTypes.d00648f2-89f5-4fae-a291-b2bb801e4579.fieldLayouts.1a94cd7a-af97-4ba8-a258-b32a652bf5e7.tabs.0.elements.5.fieldUid', '\"4e41bdfd-969d-415c-aba8-37414994f239\"'),
('entryTypes.d00648f2-89f5-4fae-a291-b2bb801e4579.fieldLayouts.1a94cd7a-af97-4ba8-a258-b32a652bf5e7.tabs.0.elements.5.instructions', '\"\"'),
('entryTypes.d00648f2-89f5-4fae-a291-b2bb801e4579.fieldLayouts.1a94cd7a-af97-4ba8-a258-b32a652bf5e7.tabs.0.elements.5.label', '\"\"'),
('entryTypes.d00648f2-89f5-4fae-a291-b2bb801e4579.fieldLayouts.1a94cd7a-af97-4ba8-a258-b32a652bf5e7.tabs.0.elements.5.required', '\"1\"'),
('entryTypes.d00648f2-89f5-4fae-a291-b2bb801e4579.fieldLayouts.1a94cd7a-af97-4ba8-a258-b32a652bf5e7.tabs.0.elements.5.tip', 'null'),
('entryTypes.d00648f2-89f5-4fae-a291-b2bb801e4579.fieldLayouts.1a94cd7a-af97-4ba8-a258-b32a652bf5e7.tabs.0.elements.5.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.d00648f2-89f5-4fae-a291-b2bb801e4579.fieldLayouts.1a94cd7a-af97-4ba8-a258-b32a652bf5e7.tabs.0.elements.5.warning', 'null'),
('entryTypes.d00648f2-89f5-4fae-a291-b2bb801e4579.fieldLayouts.1a94cd7a-af97-4ba8-a258-b32a652bf5e7.tabs.0.elements.5.width', '100'),
('entryTypes.d00648f2-89f5-4fae-a291-b2bb801e4579.fieldLayouts.1a94cd7a-af97-4ba8-a258-b32a652bf5e7.tabs.0.name', '\"Content\"'),
('entryTypes.d00648f2-89f5-4fae-a291-b2bb801e4579.fieldLayouts.1a94cd7a-af97-4ba8-a258-b32a652bf5e7.tabs.0.sortOrder', '1'),
('entryTypes.d00648f2-89f5-4fae-a291-b2bb801e4579.handle', '\"editorial\"'),
('entryTypes.d00648f2-89f5-4fae-a291-b2bb801e4579.hasTitleField', 'true'),
('entryTypes.d00648f2-89f5-4fae-a291-b2bb801e4579.name', '\"Editorial\"'),
('entryTypes.d00648f2-89f5-4fae-a291-b2bb801e4579.section', '\"f3f4a1c9-69f2-4d31-8193-11ca589533da\"'),
('entryTypes.d00648f2-89f5-4fae-a291-b2bb801e4579.sortOrder', '1'),
('entryTypes.d00648f2-89f5-4fae-a291-b2bb801e4579.titleFormat', 'null'),
('entryTypes.d00648f2-89f5-4fae-a291-b2bb801e4579.titleTranslationKeyFormat', 'null'),
('entryTypes.d00648f2-89f5-4fae-a291-b2bb801e4579.titleTranslationMethod', '\"site\"'),
('entryTypes.fdfc6bee-ffb9-454c-aab6-34ec9abffb9c.fieldLayouts.cd59cf76-166c-4449-9928-01503cb52ed1.tabs.0.elements.0.autocapitalize', 'true'),
('entryTypes.fdfc6bee-ffb9-454c-aab6-34ec9abffb9c.fieldLayouts.cd59cf76-166c-4449-9928-01503cb52ed1.tabs.0.elements.0.autocomplete', 'false'),
('entryTypes.fdfc6bee-ffb9-454c-aab6-34ec9abffb9c.fieldLayouts.cd59cf76-166c-4449-9928-01503cb52ed1.tabs.0.elements.0.autocorrect', 'true'),
('entryTypes.fdfc6bee-ffb9-454c-aab6-34ec9abffb9c.fieldLayouts.cd59cf76-166c-4449-9928-01503cb52ed1.tabs.0.elements.0.class', 'null'),
('entryTypes.fdfc6bee-ffb9-454c-aab6-34ec9abffb9c.fieldLayouts.cd59cf76-166c-4449-9928-01503cb52ed1.tabs.0.elements.0.disabled', 'false'),
('entryTypes.fdfc6bee-ffb9-454c-aab6-34ec9abffb9c.fieldLayouts.cd59cf76-166c-4449-9928-01503cb52ed1.tabs.0.elements.0.id', 'null'),
('entryTypes.fdfc6bee-ffb9-454c-aab6-34ec9abffb9c.fieldLayouts.cd59cf76-166c-4449-9928-01503cb52ed1.tabs.0.elements.0.instructions', '\"\"'),
('entryTypes.fdfc6bee-ffb9-454c-aab6-34ec9abffb9c.fieldLayouts.cd59cf76-166c-4449-9928-01503cb52ed1.tabs.0.elements.0.label', '\"__blank__\"'),
('entryTypes.fdfc6bee-ffb9-454c-aab6-34ec9abffb9c.fieldLayouts.cd59cf76-166c-4449-9928-01503cb52ed1.tabs.0.elements.0.max', 'null'),
('entryTypes.fdfc6bee-ffb9-454c-aab6-34ec9abffb9c.fieldLayouts.cd59cf76-166c-4449-9928-01503cb52ed1.tabs.0.elements.0.min', 'null'),
('entryTypes.fdfc6bee-ffb9-454c-aab6-34ec9abffb9c.fieldLayouts.cd59cf76-166c-4449-9928-01503cb52ed1.tabs.0.elements.0.name', 'null'),
('entryTypes.fdfc6bee-ffb9-454c-aab6-34ec9abffb9c.fieldLayouts.cd59cf76-166c-4449-9928-01503cb52ed1.tabs.0.elements.0.orientation', 'null'),
('entryTypes.fdfc6bee-ffb9-454c-aab6-34ec9abffb9c.fieldLayouts.cd59cf76-166c-4449-9928-01503cb52ed1.tabs.0.elements.0.placeholder', 'null'),
('entryTypes.fdfc6bee-ffb9-454c-aab6-34ec9abffb9c.fieldLayouts.cd59cf76-166c-4449-9928-01503cb52ed1.tabs.0.elements.0.readonly', 'false'),
('entryTypes.fdfc6bee-ffb9-454c-aab6-34ec9abffb9c.fieldLayouts.cd59cf76-166c-4449-9928-01503cb52ed1.tabs.0.elements.0.requirable', 'false'),
('entryTypes.fdfc6bee-ffb9-454c-aab6-34ec9abffb9c.fieldLayouts.cd59cf76-166c-4449-9928-01503cb52ed1.tabs.0.elements.0.size', 'null'),
('entryTypes.fdfc6bee-ffb9-454c-aab6-34ec9abffb9c.fieldLayouts.cd59cf76-166c-4449-9928-01503cb52ed1.tabs.0.elements.0.step', 'null'),
('entryTypes.fdfc6bee-ffb9-454c-aab6-34ec9abffb9c.fieldLayouts.cd59cf76-166c-4449-9928-01503cb52ed1.tabs.0.elements.0.tip', 'null'),
('entryTypes.fdfc6bee-ffb9-454c-aab6-34ec9abffb9c.fieldLayouts.cd59cf76-166c-4449-9928-01503cb52ed1.tabs.0.elements.0.title', 'null'),
('entryTypes.fdfc6bee-ffb9-454c-aab6-34ec9abffb9c.fieldLayouts.cd59cf76-166c-4449-9928-01503cb52ed1.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\EntryTitleField\"'),
('entryTypes.fdfc6bee-ffb9-454c-aab6-34ec9abffb9c.fieldLayouts.cd59cf76-166c-4449-9928-01503cb52ed1.tabs.0.elements.0.warning', 'null'),
('entryTypes.fdfc6bee-ffb9-454c-aab6-34ec9abffb9c.fieldLayouts.cd59cf76-166c-4449-9928-01503cb52ed1.tabs.0.elements.0.width', '100'),
('entryTypes.fdfc6bee-ffb9-454c-aab6-34ec9abffb9c.fieldLayouts.cd59cf76-166c-4449-9928-01503cb52ed1.tabs.0.elements.1.fieldUid', '\"6d7b2f75-5d39-4fde-b5ee-f2de498baa4d\"'),
('entryTypes.fdfc6bee-ffb9-454c-aab6-34ec9abffb9c.fieldLayouts.cd59cf76-166c-4449-9928-01503cb52ed1.tabs.0.elements.1.instructions', 'null'),
('entryTypes.fdfc6bee-ffb9-454c-aab6-34ec9abffb9c.fieldLayouts.cd59cf76-166c-4449-9928-01503cb52ed1.tabs.0.elements.1.label', 'null'),
('entryTypes.fdfc6bee-ffb9-454c-aab6-34ec9abffb9c.fieldLayouts.cd59cf76-166c-4449-9928-01503cb52ed1.tabs.0.elements.1.required', 'false'),
('entryTypes.fdfc6bee-ffb9-454c-aab6-34ec9abffb9c.fieldLayouts.cd59cf76-166c-4449-9928-01503cb52ed1.tabs.0.elements.1.tip', 'null'),
('entryTypes.fdfc6bee-ffb9-454c-aab6-34ec9abffb9c.fieldLayouts.cd59cf76-166c-4449-9928-01503cb52ed1.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('entryTypes.fdfc6bee-ffb9-454c-aab6-34ec9abffb9c.fieldLayouts.cd59cf76-166c-4449-9928-01503cb52ed1.tabs.0.elements.1.warning', 'null'),
('entryTypes.fdfc6bee-ffb9-454c-aab6-34ec9abffb9c.fieldLayouts.cd59cf76-166c-4449-9928-01503cb52ed1.tabs.0.elements.1.width', '100'),
('entryTypes.fdfc6bee-ffb9-454c-aab6-34ec9abffb9c.fieldLayouts.cd59cf76-166c-4449-9928-01503cb52ed1.tabs.0.name', '\"Content\"'),
('entryTypes.fdfc6bee-ffb9-454c-aab6-34ec9abffb9c.fieldLayouts.cd59cf76-166c-4449-9928-01503cb52ed1.tabs.0.sortOrder', '1'),
('entryTypes.fdfc6bee-ffb9-454c-aab6-34ec9abffb9c.handle', '\"home\"'),
('entryTypes.fdfc6bee-ffb9-454c-aab6-34ec9abffb9c.hasTitleField', 'false'),
('entryTypes.fdfc6bee-ffb9-454c-aab6-34ec9abffb9c.name', '\"Home\"'),
('entryTypes.fdfc6bee-ffb9-454c-aab6-34ec9abffb9c.section', '\"2fe0a2c0-ae6c-4c9d-bf0a-94ef1dd21ff3\"'),
('entryTypes.fdfc6bee-ffb9-454c-aab6-34ec9abffb9c.sortOrder', '1'),
('entryTypes.fdfc6bee-ffb9-454c-aab6-34ec9abffb9c.titleFormat', '\"{section.name|raw}\"'),
('entryTypes.fdfc6bee-ffb9-454c-aab6-34ec9abffb9c.titleTranslationKeyFormat', 'null'),
('entryTypes.fdfc6bee-ffb9-454c-aab6-34ec9abffb9c.titleTranslationMethod', '\"site\"'),
('fieldGroups.1d5b7c7c-71e0-4112-bc90-386c93f1f181.name', '\"Contact\"'),
('fieldGroups.90080efc-be99-4a29-87c9-88623c1200e7.name', '\"Global Fields\"'),
('fieldGroups.b729f8c2-6fbf-49b5-9428-60db6a9ec52c.name', '\"Work\"'),
('fieldGroups.ba7dea8e-3741-400a-befa-a7bd91ac3c82.name', '\"Home\"');
INSERT INTO `projectconfig` (`path`, `value`) VALUES
('fields.08698ccd-1eb1-495e-b32e-3f8c51f9209b.contentColumnType', '\"text\"'),
('fields.08698ccd-1eb1-495e-b32e-3f8c51f9209b.fieldGroup', '\"b729f8c2-6fbf-49b5-9428-60db6a9ec52c\"'),
('fields.08698ccd-1eb1-495e-b32e-3f8c51f9209b.handle', '\"description\"'),
('fields.08698ccd-1eb1-495e-b32e-3f8c51f9209b.instructions', '\"\"'),
('fields.08698ccd-1eb1-495e-b32e-3f8c51f9209b.name', '\"Description\"'),
('fields.08698ccd-1eb1-495e-b32e-3f8c51f9209b.searchable', 'false'),
('fields.08698ccd-1eb1-495e-b32e-3f8c51f9209b.settings.availableTransforms', '\"*\"'),
('fields.08698ccd-1eb1-495e-b32e-3f8c51f9209b.settings.availableVolumes', '\"*\"'),
('fields.08698ccd-1eb1-495e-b32e-3f8c51f9209b.settings.cleanupHtml', 'true'),
('fields.08698ccd-1eb1-495e-b32e-3f8c51f9209b.settings.columnType', '\"text\"'),
('fields.08698ccd-1eb1-495e-b32e-3f8c51f9209b.settings.configSelectionMode', '\"choose\"'),
('fields.08698ccd-1eb1-495e-b32e-3f8c51f9209b.settings.defaultTransform', '\"\"'),
('fields.08698ccd-1eb1-495e-b32e-3f8c51f9209b.settings.manualConfig', '\"\"'),
('fields.08698ccd-1eb1-495e-b32e-3f8c51f9209b.settings.purifierConfig', '\"\"'),
('fields.08698ccd-1eb1-495e-b32e-3f8c51f9209b.settings.purifyHtml', '\"1\"'),
('fields.08698ccd-1eb1-495e-b32e-3f8c51f9209b.settings.redactorConfig', '\"\"'),
('fields.08698ccd-1eb1-495e-b32e-3f8c51f9209b.settings.removeEmptyTags', '\"1\"'),
('fields.08698ccd-1eb1-495e-b32e-3f8c51f9209b.settings.removeInlineStyles', '\"1\"'),
('fields.08698ccd-1eb1-495e-b32e-3f8c51f9209b.settings.removeNbsp', '\"1\"'),
('fields.08698ccd-1eb1-495e-b32e-3f8c51f9209b.settings.showHtmlButtonForNonAdmins', '\"\"'),
('fields.08698ccd-1eb1-495e-b32e-3f8c51f9209b.settings.showUnpermittedFiles', 'false'),
('fields.08698ccd-1eb1-495e-b32e-3f8c51f9209b.settings.showUnpermittedVolumes', 'false'),
('fields.08698ccd-1eb1-495e-b32e-3f8c51f9209b.settings.uiMode', '\"enlarged\"'),
('fields.08698ccd-1eb1-495e-b32e-3f8c51f9209b.translationKeyFormat', 'null'),
('fields.08698ccd-1eb1-495e-b32e-3f8c51f9209b.translationMethod', '\"none\"'),
('fields.08698ccd-1eb1-495e-b32e-3f8c51f9209b.type', '\"craft\\\\redactor\\\\Field\"'),
('fields.0d466c5d-123e-4c56-95fb-a2667cc6b29c.contentColumnType', '\"string\"'),
('fields.0d466c5d-123e-4c56-95fb-a2667cc6b29c.fieldGroup', '\"b729f8c2-6fbf-49b5-9428-60db6a9ec52c\"'),
('fields.0d466c5d-123e-4c56-95fb-a2667cc6b29c.handle', '\"sections\"'),
('fields.0d466c5d-123e-4c56-95fb-a2667cc6b29c.instructions', '\"\"'),
('fields.0d466c5d-123e-4c56-95fb-a2667cc6b29c.name', '\"Sections\"'),
('fields.0d466c5d-123e-4c56-95fb-a2667cc6b29c.searchable', 'false'),
('fields.0d466c5d-123e-4c56-95fb-a2667cc6b29c.settings.contentTable', '\"{{%matrixcontent_sections}}\"'),
('fields.0d466c5d-123e-4c56-95fb-a2667cc6b29c.settings.maxBlocks', '\"\"'),
('fields.0d466c5d-123e-4c56-95fb-a2667cc6b29c.settings.minBlocks', '\"\"'),
('fields.0d466c5d-123e-4c56-95fb-a2667cc6b29c.settings.propagationMethod', '\"all\"'),
('fields.0d466c5d-123e-4c56-95fb-a2667cc6b29c.translationKeyFormat', 'null'),
('fields.0d466c5d-123e-4c56-95fb-a2667cc6b29c.translationMethod', '\"site\"'),
('fields.0d466c5d-123e-4c56-95fb-a2667cc6b29c.type', '\"craft\\\\fields\\\\Matrix\"'),
('fields.4e41bdfd-969d-415c-aba8-37414994f239.contentColumnType', '\"string(255)\"'),
('fields.4e41bdfd-969d-415c-aba8-37414994f239.fieldGroup', '\"b729f8c2-6fbf-49b5-9428-60db6a9ec52c\"'),
('fields.4e41bdfd-969d-415c-aba8-37414994f239.handle', '\"externalLink\"'),
('fields.4e41bdfd-969d-415c-aba8-37414994f239.instructions', '\"\"'),
('fields.4e41bdfd-969d-415c-aba8-37414994f239.name', '\"External Link\"'),
('fields.4e41bdfd-969d-415c-aba8-37414994f239.searchable', 'false'),
('fields.4e41bdfd-969d-415c-aba8-37414994f239.settings.maxLength', '\"255\"'),
('fields.4e41bdfd-969d-415c-aba8-37414994f239.settings.placeholder', '\"\"'),
('fields.4e41bdfd-969d-415c-aba8-37414994f239.translationKeyFormat', 'null'),
('fields.4e41bdfd-969d-415c-aba8-37414994f239.translationMethod', '\"none\"'),
('fields.4e41bdfd-969d-415c-aba8-37414994f239.type', '\"craft\\\\fields\\\\Url\"'),
('fields.64e2da7d-1386-46e4-9283-3710c968ef4a.contentColumnType', '\"text\"'),
('fields.64e2da7d-1386-46e4-9283-3710c968ef4a.fieldGroup', '\"b729f8c2-6fbf-49b5-9428-60db6a9ec52c\"'),
('fields.64e2da7d-1386-46e4-9283-3710c968ef4a.handle', '\"client\"'),
('fields.64e2da7d-1386-46e4-9283-3710c968ef4a.instructions', '\"\"'),
('fields.64e2da7d-1386-46e4-9283-3710c968ef4a.name', '\"Client\"'),
('fields.64e2da7d-1386-46e4-9283-3710c968ef4a.searchable', 'false'),
('fields.64e2da7d-1386-46e4-9283-3710c968ef4a.settings.byteLimit', 'null'),
('fields.64e2da7d-1386-46e4-9283-3710c968ef4a.settings.charLimit', 'null'),
('fields.64e2da7d-1386-46e4-9283-3710c968ef4a.settings.code', '\"\"'),
('fields.64e2da7d-1386-46e4-9283-3710c968ef4a.settings.columnType', 'null'),
('fields.64e2da7d-1386-46e4-9283-3710c968ef4a.settings.initialRows', '\"4\"'),
('fields.64e2da7d-1386-46e4-9283-3710c968ef4a.settings.multiline', '\"\"'),
('fields.64e2da7d-1386-46e4-9283-3710c968ef4a.settings.placeholder', '\"\"'),
('fields.64e2da7d-1386-46e4-9283-3710c968ef4a.settings.uiMode', '\"normal\"'),
('fields.64e2da7d-1386-46e4-9283-3710c968ef4a.translationKeyFormat', 'null'),
('fields.64e2da7d-1386-46e4-9283-3710c968ef4a.translationMethod', '\"none\"'),
('fields.64e2da7d-1386-46e4-9283-3710c968ef4a.type', '\"craft\\\\fields\\\\PlainText\"'),
('fields.6d7b2f75-5d39-4fde-b5ee-f2de498baa4d.contentColumnType', '\"text\"'),
('fields.6d7b2f75-5d39-4fde-b5ee-f2de498baa4d.fieldGroup', '\"ba7dea8e-3741-400a-befa-a7bd91ac3c82\"'),
('fields.6d7b2f75-5d39-4fde-b5ee-f2de498baa4d.handle', '\"siteIntro\"'),
('fields.6d7b2f75-5d39-4fde-b5ee-f2de498baa4d.instructions', '\"\"'),
('fields.6d7b2f75-5d39-4fde-b5ee-f2de498baa4d.name', '\"Site Intro\"'),
('fields.6d7b2f75-5d39-4fde-b5ee-f2de498baa4d.searchable', 'false'),
('fields.6d7b2f75-5d39-4fde-b5ee-f2de498baa4d.settings.availableTransforms', '\"*\"'),
('fields.6d7b2f75-5d39-4fde-b5ee-f2de498baa4d.settings.availableVolumes', '\"*\"'),
('fields.6d7b2f75-5d39-4fde-b5ee-f2de498baa4d.settings.cleanupHtml', 'true'),
('fields.6d7b2f75-5d39-4fde-b5ee-f2de498baa4d.settings.columnType', '\"text\"'),
('fields.6d7b2f75-5d39-4fde-b5ee-f2de498baa4d.settings.configSelectionMode', '\"choose\"'),
('fields.6d7b2f75-5d39-4fde-b5ee-f2de498baa4d.settings.defaultTransform', '\"\"'),
('fields.6d7b2f75-5d39-4fde-b5ee-f2de498baa4d.settings.manualConfig', '\"\"'),
('fields.6d7b2f75-5d39-4fde-b5ee-f2de498baa4d.settings.purifierConfig', '\"\"'),
('fields.6d7b2f75-5d39-4fde-b5ee-f2de498baa4d.settings.purifyHtml', '\"1\"'),
('fields.6d7b2f75-5d39-4fde-b5ee-f2de498baa4d.settings.redactorConfig', '\"\"'),
('fields.6d7b2f75-5d39-4fde-b5ee-f2de498baa4d.settings.removeEmptyTags', '\"1\"'),
('fields.6d7b2f75-5d39-4fde-b5ee-f2de498baa4d.settings.removeInlineStyles', '\"1\"'),
('fields.6d7b2f75-5d39-4fde-b5ee-f2de498baa4d.settings.removeNbsp', '\"1\"'),
('fields.6d7b2f75-5d39-4fde-b5ee-f2de498baa4d.settings.showHtmlButtonForNonAdmins', '\"\"'),
('fields.6d7b2f75-5d39-4fde-b5ee-f2de498baa4d.settings.showUnpermittedFiles', 'false'),
('fields.6d7b2f75-5d39-4fde-b5ee-f2de498baa4d.settings.showUnpermittedVolumes', 'false'),
('fields.6d7b2f75-5d39-4fde-b5ee-f2de498baa4d.settings.uiMode', '\"enlarged\"'),
('fields.6d7b2f75-5d39-4fde-b5ee-f2de498baa4d.translationKeyFormat', 'null'),
('fields.6d7b2f75-5d39-4fde-b5ee-f2de498baa4d.translationMethod', '\"none\"'),
('fields.6d7b2f75-5d39-4fde-b5ee-f2de498baa4d.type', '\"craft\\\\redactor\\\\Field\"'),
('fields.72beaf6b-40ae-4f91-9b56-f683de791f97.contentColumnType', '\"text\"'),
('fields.72beaf6b-40ae-4f91-9b56-f683de791f97.fieldGroup', '\"b729f8c2-6fbf-49b5-9428-60db6a9ec52c\"'),
('fields.72beaf6b-40ae-4f91-9b56-f683de791f97.handle', '\"credits\"'),
('fields.72beaf6b-40ae-4f91-9b56-f683de791f97.instructions', '\"\"'),
('fields.72beaf6b-40ae-4f91-9b56-f683de791f97.name', '\"Credits\"'),
('fields.72beaf6b-40ae-4f91-9b56-f683de791f97.searchable', 'false'),
('fields.72beaf6b-40ae-4f91-9b56-f683de791f97.settings.addRowLabel', '\"Add a row\"'),
('fields.72beaf6b-40ae-4f91-9b56-f683de791f97.settings.columns.__assoc__.0.0', '\"col1\"'),
('fields.72beaf6b-40ae-4f91-9b56-f683de791f97.settings.columns.__assoc__.0.1.__assoc__.0.0', '\"heading\"'),
('fields.72beaf6b-40ae-4f91-9b56-f683de791f97.settings.columns.__assoc__.0.1.__assoc__.0.1', '\"Role\"'),
('fields.72beaf6b-40ae-4f91-9b56-f683de791f97.settings.columns.__assoc__.0.1.__assoc__.1.0', '\"handle\"'),
('fields.72beaf6b-40ae-4f91-9b56-f683de791f97.settings.columns.__assoc__.0.1.__assoc__.1.1', '\"creditsRole\"'),
('fields.72beaf6b-40ae-4f91-9b56-f683de791f97.settings.columns.__assoc__.0.1.__assoc__.2.0', '\"width\"'),
('fields.72beaf6b-40ae-4f91-9b56-f683de791f97.settings.columns.__assoc__.0.1.__assoc__.2.1', '\"\"'),
('fields.72beaf6b-40ae-4f91-9b56-f683de791f97.settings.columns.__assoc__.0.1.__assoc__.3.0', '\"type\"'),
('fields.72beaf6b-40ae-4f91-9b56-f683de791f97.settings.columns.__assoc__.0.1.__assoc__.3.1', '\"singleline\"'),
('fields.72beaf6b-40ae-4f91-9b56-f683de791f97.settings.columns.__assoc__.1.0', '\"col2\"'),
('fields.72beaf6b-40ae-4f91-9b56-f683de791f97.settings.columns.__assoc__.1.1.__assoc__.0.0', '\"heading\"'),
('fields.72beaf6b-40ae-4f91-9b56-f683de791f97.settings.columns.__assoc__.1.1.__assoc__.0.1', '\"Name\"'),
('fields.72beaf6b-40ae-4f91-9b56-f683de791f97.settings.columns.__assoc__.1.1.__assoc__.1.0', '\"handle\"'),
('fields.72beaf6b-40ae-4f91-9b56-f683de791f97.settings.columns.__assoc__.1.1.__assoc__.1.1', '\"creditsName\"'),
('fields.72beaf6b-40ae-4f91-9b56-f683de791f97.settings.columns.__assoc__.1.1.__assoc__.2.0', '\"width\"'),
('fields.72beaf6b-40ae-4f91-9b56-f683de791f97.settings.columns.__assoc__.1.1.__assoc__.2.1', '\"\"'),
('fields.72beaf6b-40ae-4f91-9b56-f683de791f97.settings.columns.__assoc__.1.1.__assoc__.3.0', '\"type\"'),
('fields.72beaf6b-40ae-4f91-9b56-f683de791f97.settings.columns.__assoc__.1.1.__assoc__.3.1', '\"singleline\"'),
('fields.72beaf6b-40ae-4f91-9b56-f683de791f97.settings.columnType', '\"text\"'),
('fields.72beaf6b-40ae-4f91-9b56-f683de791f97.settings.defaults.0.__assoc__.0.0', '\"col1\"'),
('fields.72beaf6b-40ae-4f91-9b56-f683de791f97.settings.defaults.0.__assoc__.0.1', '\"Agency\"'),
('fields.72beaf6b-40ae-4f91-9b56-f683de791f97.settings.defaults.0.__assoc__.1.0', '\"col2\"'),
('fields.72beaf6b-40ae-4f91-9b56-f683de791f97.settings.defaults.0.__assoc__.1.1', '\"\"'),
('fields.72beaf6b-40ae-4f91-9b56-f683de791f97.settings.maxRows', '\"\"'),
('fields.72beaf6b-40ae-4f91-9b56-f683de791f97.settings.minRows', '\"\"'),
('fields.72beaf6b-40ae-4f91-9b56-f683de791f97.translationKeyFormat', 'null'),
('fields.72beaf6b-40ae-4f91-9b56-f683de791f97.translationMethod', '\"none\"'),
('fields.72beaf6b-40ae-4f91-9b56-f683de791f97.type', '\"craft\\\\fields\\\\Table\"'),
('fields.a70d38dd-b6ff-49bc-9a34-00eef025c844.contentColumnType', '\"text\"'),
('fields.a70d38dd-b6ff-49bc-9a34-00eef025c844.fieldGroup', '\"1d5b7c7c-71e0-4112-bc90-386c93f1f181\"'),
('fields.a70d38dd-b6ff-49bc-9a34-00eef025c844.handle', '\"paragraph\"'),
('fields.a70d38dd-b6ff-49bc-9a34-00eef025c844.instructions', '\"\"'),
('fields.a70d38dd-b6ff-49bc-9a34-00eef025c844.name', '\"Paragraph\"'),
('fields.a70d38dd-b6ff-49bc-9a34-00eef025c844.searchable', 'false'),
('fields.a70d38dd-b6ff-49bc-9a34-00eef025c844.settings.availableTransforms', '\"*\"'),
('fields.a70d38dd-b6ff-49bc-9a34-00eef025c844.settings.availableVolumes', '\"*\"'),
('fields.a70d38dd-b6ff-49bc-9a34-00eef025c844.settings.cleanupHtml', 'true'),
('fields.a70d38dd-b6ff-49bc-9a34-00eef025c844.settings.columnType', '\"text\"'),
('fields.a70d38dd-b6ff-49bc-9a34-00eef025c844.settings.configSelectionMode', '\"choose\"'),
('fields.a70d38dd-b6ff-49bc-9a34-00eef025c844.settings.defaultTransform', '\"\"'),
('fields.a70d38dd-b6ff-49bc-9a34-00eef025c844.settings.manualConfig', '\"\"'),
('fields.a70d38dd-b6ff-49bc-9a34-00eef025c844.settings.purifierConfig', '\"\"'),
('fields.a70d38dd-b6ff-49bc-9a34-00eef025c844.settings.purifyHtml', '\"1\"'),
('fields.a70d38dd-b6ff-49bc-9a34-00eef025c844.settings.redactorConfig', '\"\"'),
('fields.a70d38dd-b6ff-49bc-9a34-00eef025c844.settings.removeEmptyTags', '\"1\"'),
('fields.a70d38dd-b6ff-49bc-9a34-00eef025c844.settings.removeInlineStyles', '\"1\"'),
('fields.a70d38dd-b6ff-49bc-9a34-00eef025c844.settings.removeNbsp', '\"1\"'),
('fields.a70d38dd-b6ff-49bc-9a34-00eef025c844.settings.showHtmlButtonForNonAdmins', '\"\"'),
('fields.a70d38dd-b6ff-49bc-9a34-00eef025c844.settings.showUnpermittedFiles', 'false'),
('fields.a70d38dd-b6ff-49bc-9a34-00eef025c844.settings.showUnpermittedVolumes', 'false'),
('fields.a70d38dd-b6ff-49bc-9a34-00eef025c844.settings.uiMode', '\"enlarged\"'),
('fields.a70d38dd-b6ff-49bc-9a34-00eef025c844.translationKeyFormat', 'null'),
('fields.a70d38dd-b6ff-49bc-9a34-00eef025c844.translationMethod', '\"none\"'),
('fields.a70d38dd-b6ff-49bc-9a34-00eef025c844.type', '\"craft\\\\redactor\\\\Field\"'),
('fields.b01f9258-7792-4fbe-86ae-42ab4327d7c1.contentColumnType', '\"string\"'),
('fields.b01f9258-7792-4fbe-86ae-42ab4327d7c1.fieldGroup', '\"b729f8c2-6fbf-49b5-9428-60db6a9ec52c\"'),
('fields.b01f9258-7792-4fbe-86ae-42ab4327d7c1.handle', '\"thumbnail\"'),
('fields.b01f9258-7792-4fbe-86ae-42ab4327d7c1.instructions', '\"\"'),
('fields.b01f9258-7792-4fbe-86ae-42ab4327d7c1.name', '\"Thumbnail\"'),
('fields.b01f9258-7792-4fbe-86ae-42ab4327d7c1.searchable', 'false'),
('fields.b01f9258-7792-4fbe-86ae-42ab4327d7c1.settings.allowedKinds', 'null'),
('fields.b01f9258-7792-4fbe-86ae-42ab4327d7c1.settings.allowSelfRelations', 'false'),
('fields.b01f9258-7792-4fbe-86ae-42ab4327d7c1.settings.allowUploads', 'true'),
('fields.b01f9258-7792-4fbe-86ae-42ab4327d7c1.settings.defaultUploadLocationSource', '\"volume:8182eadf-ef29-4df4-b0b7-ff9afd8a6d8a\"'),
('fields.b01f9258-7792-4fbe-86ae-42ab4327d7c1.settings.defaultUploadLocationSubpath', '\"\"'),
('fields.b01f9258-7792-4fbe-86ae-42ab4327d7c1.settings.limit', '\"1\"'),
('fields.b01f9258-7792-4fbe-86ae-42ab4327d7c1.settings.localizeRelations', 'false'),
('fields.b01f9258-7792-4fbe-86ae-42ab4327d7c1.settings.previewMode', '\"full\"'),
('fields.b01f9258-7792-4fbe-86ae-42ab4327d7c1.settings.restrictFiles', '\"\"'),
('fields.b01f9258-7792-4fbe-86ae-42ab4327d7c1.settings.selectionLabel', '\"\"'),
('fields.b01f9258-7792-4fbe-86ae-42ab4327d7c1.settings.showSiteMenu', 'false'),
('fields.b01f9258-7792-4fbe-86ae-42ab4327d7c1.settings.showUnpermittedFiles', 'false'),
('fields.b01f9258-7792-4fbe-86ae-42ab4327d7c1.settings.showUnpermittedVolumes', 'false'),
('fields.b01f9258-7792-4fbe-86ae-42ab4327d7c1.settings.singleUploadLocationSource', '\"volume:8182eadf-ef29-4df4-b0b7-ff9afd8a6d8a\"'),
('fields.b01f9258-7792-4fbe-86ae-42ab4327d7c1.settings.singleUploadLocationSubpath', '\"\"'),
('fields.b01f9258-7792-4fbe-86ae-42ab4327d7c1.settings.source', 'null'),
('fields.b01f9258-7792-4fbe-86ae-42ab4327d7c1.settings.sources', '\"*\"'),
('fields.b01f9258-7792-4fbe-86ae-42ab4327d7c1.settings.targetSiteId', 'null'),
('fields.b01f9258-7792-4fbe-86ae-42ab4327d7c1.settings.useSingleFolder', 'false'),
('fields.b01f9258-7792-4fbe-86ae-42ab4327d7c1.settings.validateRelatedElements', 'false'),
('fields.b01f9258-7792-4fbe-86ae-42ab4327d7c1.settings.viewMode', '\"list\"'),
('fields.b01f9258-7792-4fbe-86ae-42ab4327d7c1.translationKeyFormat', 'null'),
('fields.b01f9258-7792-4fbe-86ae-42ab4327d7c1.translationMethod', '\"site\"'),
('fields.b01f9258-7792-4fbe-86ae-42ab4327d7c1.type', '\"craft\\\\fields\\\\Assets\"'),
('fields.d07b31c9-d5d1-4359-962b-2f7a669ab1a8.contentColumnType', '\"string(120)\"'),
('fields.d07b31c9-d5d1-4359-962b-2f7a669ab1a8.fieldGroup', '\"90080efc-be99-4a29-87c9-88623c1200e7\"'),
('fields.d07b31c9-d5d1-4359-962b-2f7a669ab1a8.handle', '\"siteTitle\"'),
('fields.d07b31c9-d5d1-4359-962b-2f7a669ab1a8.instructions', '\"Edit your site\'s title\"'),
('fields.d07b31c9-d5d1-4359-962b-2f7a669ab1a8.name', '\"Site Title\"'),
('fields.d07b31c9-d5d1-4359-962b-2f7a669ab1a8.searchable', 'false'),
('fields.d07b31c9-d5d1-4359-962b-2f7a669ab1a8.settings.byteLimit', 'null'),
('fields.d07b31c9-d5d1-4359-962b-2f7a669ab1a8.settings.charLimit', '30'),
('fields.d07b31c9-d5d1-4359-962b-2f7a669ab1a8.settings.code', '\"\"'),
('fields.d07b31c9-d5d1-4359-962b-2f7a669ab1a8.settings.columnType', 'null'),
('fields.d07b31c9-d5d1-4359-962b-2f7a669ab1a8.settings.initialRows', '\"4\"'),
('fields.d07b31c9-d5d1-4359-962b-2f7a669ab1a8.settings.multiline', '\"\"'),
('fields.d07b31c9-d5d1-4359-962b-2f7a669ab1a8.settings.placeholder', '\"Add a title\"'),
('fields.d07b31c9-d5d1-4359-962b-2f7a669ab1a8.settings.uiMode', '\"normal\"'),
('fields.d07b31c9-d5d1-4359-962b-2f7a669ab1a8.translationKeyFormat', 'null'),
('fields.d07b31c9-d5d1-4359-962b-2f7a669ab1a8.translationMethod', '\"none\"'),
('fields.d07b31c9-d5d1-4359-962b-2f7a669ab1a8.type', '\"craft\\\\fields\\\\PlainText\"'),
('fields.e4cbcc8b-70f8-4e29-942f-0f54bbf2572b.contentColumnType', '\"string\"'),
('fields.e4cbcc8b-70f8-4e29-942f-0f54bbf2572b.fieldGroup', '\"b729f8c2-6fbf-49b5-9428-60db6a9ec52c\"'),
('fields.e4cbcc8b-70f8-4e29-942f-0f54bbf2572b.handle', '\"role\"'),
('fields.e4cbcc8b-70f8-4e29-942f-0f54bbf2572b.instructions', '\"\"'),
('fields.e4cbcc8b-70f8-4e29-942f-0f54bbf2572b.name', '\"Role\"'),
('fields.e4cbcc8b-70f8-4e29-942f-0f54bbf2572b.searchable', 'false'),
('fields.e4cbcc8b-70f8-4e29-942f-0f54bbf2572b.settings.allowLimit', 'false'),
('fields.e4cbcc8b-70f8-4e29-942f-0f54bbf2572b.settings.allowMultipleSources', 'false'),
('fields.e4cbcc8b-70f8-4e29-942f-0f54bbf2572b.settings.allowSelfRelations', 'false'),
('fields.e4cbcc8b-70f8-4e29-942f-0f54bbf2572b.settings.branchLimit', '\"\"'),
('fields.e4cbcc8b-70f8-4e29-942f-0f54bbf2572b.settings.limit', 'null'),
('fields.e4cbcc8b-70f8-4e29-942f-0f54bbf2572b.settings.localizeRelations', 'false'),
('fields.e4cbcc8b-70f8-4e29-942f-0f54bbf2572b.settings.selectionLabel', '\"\"'),
('fields.e4cbcc8b-70f8-4e29-942f-0f54bbf2572b.settings.showSiteMenu', 'false'),
('fields.e4cbcc8b-70f8-4e29-942f-0f54bbf2572b.settings.source', '\"group:c40b2bfd-2b3c-4d7a-8973-92eca28355a3\"'),
('fields.e4cbcc8b-70f8-4e29-942f-0f54bbf2572b.settings.sources', '\"*\"'),
('fields.e4cbcc8b-70f8-4e29-942f-0f54bbf2572b.settings.targetSiteId', 'null'),
('fields.e4cbcc8b-70f8-4e29-942f-0f54bbf2572b.settings.validateRelatedElements', 'false'),
('fields.e4cbcc8b-70f8-4e29-942f-0f54bbf2572b.settings.viewMode', 'null'),
('fields.e4cbcc8b-70f8-4e29-942f-0f54bbf2572b.translationKeyFormat', 'null'),
('fields.e4cbcc8b-70f8-4e29-942f-0f54bbf2572b.translationMethod', '\"site\"'),
('fields.e4cbcc8b-70f8-4e29-942f-0f54bbf2572b.type', '\"craft\\\\fields\\\\Categories\"'),
('fields.f9c5d406-a00a-4e29-9bcd-bbf8c190a8af.contentColumnType', '\"datetime\"'),
('fields.f9c5d406-a00a-4e29-9bcd-bbf8c190a8af.fieldGroup', '\"b729f8c2-6fbf-49b5-9428-60db6a9ec52c\"'),
('fields.f9c5d406-a00a-4e29-9bcd-bbf8c190a8af.handle', '\"date\"'),
('fields.f9c5d406-a00a-4e29-9bcd-bbf8c190a8af.instructions', '\"\"'),
('fields.f9c5d406-a00a-4e29-9bcd-bbf8c190a8af.name', '\"Date\"'),
('fields.f9c5d406-a00a-4e29-9bcd-bbf8c190a8af.searchable', 'false'),
('fields.f9c5d406-a00a-4e29-9bcd-bbf8c190a8af.settings.max', 'null'),
('fields.f9c5d406-a00a-4e29-9bcd-bbf8c190a8af.settings.min', 'null'),
('fields.f9c5d406-a00a-4e29-9bcd-bbf8c190a8af.settings.minuteIncrement', '\"30\"'),
('fields.f9c5d406-a00a-4e29-9bcd-bbf8c190a8af.settings.showDate', 'true'),
('fields.f9c5d406-a00a-4e29-9bcd-bbf8c190a8af.settings.showTime', 'false'),
('fields.f9c5d406-a00a-4e29-9bcd-bbf8c190a8af.translationKeyFormat', 'null'),
('fields.f9c5d406-a00a-4e29-9bcd-bbf8c190a8af.translationMethod', '\"none\"'),
('fields.f9c5d406-a00a-4e29-9bcd-bbf8c190a8af.type', '\"craft\\\\fields\\\\Date\"'),
('matrixBlockTypes.75385f9b-8a0a-41ca-93e2-bb2e51aa5f9e.field', '\"0d466c5d-123e-4c56-95fb-a2667cc6b29c\"'),
('matrixBlockTypes.75385f9b-8a0a-41ca-93e2-bb2e51aa5f9e.fieldLayouts.512ccb1b-c047-48de-83cb-74a27abca66e.tabs.0.elements.0.fieldUid', '\"8bead974-8a62-4b51-8ce0-2eabe8ac1c4d\"'),
('matrixBlockTypes.75385f9b-8a0a-41ca-93e2-bb2e51aa5f9e.fieldLayouts.512ccb1b-c047-48de-83cb-74a27abca66e.tabs.0.elements.0.instructions', 'null'),
('matrixBlockTypes.75385f9b-8a0a-41ca-93e2-bb2e51aa5f9e.fieldLayouts.512ccb1b-c047-48de-83cb-74a27abca66e.tabs.0.elements.0.label', 'null'),
('matrixBlockTypes.75385f9b-8a0a-41ca-93e2-bb2e51aa5f9e.fieldLayouts.512ccb1b-c047-48de-83cb-74a27abca66e.tabs.0.elements.0.required', 'true'),
('matrixBlockTypes.75385f9b-8a0a-41ca-93e2-bb2e51aa5f9e.fieldLayouts.512ccb1b-c047-48de-83cb-74a27abca66e.tabs.0.elements.0.tip', 'null'),
('matrixBlockTypes.75385f9b-8a0a-41ca-93e2-bb2e51aa5f9e.fieldLayouts.512ccb1b-c047-48de-83cb-74a27abca66e.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('matrixBlockTypes.75385f9b-8a0a-41ca-93e2-bb2e51aa5f9e.fieldLayouts.512ccb1b-c047-48de-83cb-74a27abca66e.tabs.0.elements.0.warning', 'null'),
('matrixBlockTypes.75385f9b-8a0a-41ca-93e2-bb2e51aa5f9e.fieldLayouts.512ccb1b-c047-48de-83cb-74a27abca66e.tabs.0.elements.0.width', '100'),
('matrixBlockTypes.75385f9b-8a0a-41ca-93e2-bb2e51aa5f9e.fieldLayouts.512ccb1b-c047-48de-83cb-74a27abca66e.tabs.0.name', '\"Content\"'),
('matrixBlockTypes.75385f9b-8a0a-41ca-93e2-bb2e51aa5f9e.fieldLayouts.512ccb1b-c047-48de-83cb-74a27abca66e.tabs.0.sortOrder', '1'),
('matrixBlockTypes.75385f9b-8a0a-41ca-93e2-bb2e51aa5f9e.fields.8bead974-8a62-4b51-8ce0-2eabe8ac1c4d.contentColumnType', '\"string\"'),
('matrixBlockTypes.75385f9b-8a0a-41ca-93e2-bb2e51aa5f9e.fields.8bead974-8a62-4b51-8ce0-2eabe8ac1c4d.fieldGroup', 'null'),
('matrixBlockTypes.75385f9b-8a0a-41ca-93e2-bb2e51aa5f9e.fields.8bead974-8a62-4b51-8ce0-2eabe8ac1c4d.handle', '\"assets\"'),
('matrixBlockTypes.75385f9b-8a0a-41ca-93e2-bb2e51aa5f9e.fields.8bead974-8a62-4b51-8ce0-2eabe8ac1c4d.instructions', '\"\"'),
('matrixBlockTypes.75385f9b-8a0a-41ca-93e2-bb2e51aa5f9e.fields.8bead974-8a62-4b51-8ce0-2eabe8ac1c4d.name', '\"Assets\"'),
('matrixBlockTypes.75385f9b-8a0a-41ca-93e2-bb2e51aa5f9e.fields.8bead974-8a62-4b51-8ce0-2eabe8ac1c4d.searchable', 'false'),
('matrixBlockTypes.75385f9b-8a0a-41ca-93e2-bb2e51aa5f9e.fields.8bead974-8a62-4b51-8ce0-2eabe8ac1c4d.settings.allowedKinds', 'null'),
('matrixBlockTypes.75385f9b-8a0a-41ca-93e2-bb2e51aa5f9e.fields.8bead974-8a62-4b51-8ce0-2eabe8ac1c4d.settings.allowSelfRelations', 'false'),
('matrixBlockTypes.75385f9b-8a0a-41ca-93e2-bb2e51aa5f9e.fields.8bead974-8a62-4b51-8ce0-2eabe8ac1c4d.settings.allowUploads', 'true'),
('matrixBlockTypes.75385f9b-8a0a-41ca-93e2-bb2e51aa5f9e.fields.8bead974-8a62-4b51-8ce0-2eabe8ac1c4d.settings.defaultUploadLocationSource', '\"volume:8182eadf-ef29-4df4-b0b7-ff9afd8a6d8a\"'),
('matrixBlockTypes.75385f9b-8a0a-41ca-93e2-bb2e51aa5f9e.fields.8bead974-8a62-4b51-8ce0-2eabe8ac1c4d.settings.defaultUploadLocationSubpath', '\"\"'),
('matrixBlockTypes.75385f9b-8a0a-41ca-93e2-bb2e51aa5f9e.fields.8bead974-8a62-4b51-8ce0-2eabe8ac1c4d.settings.limit', '\"\"'),
('matrixBlockTypes.75385f9b-8a0a-41ca-93e2-bb2e51aa5f9e.fields.8bead974-8a62-4b51-8ce0-2eabe8ac1c4d.settings.localizeRelations', 'false'),
('matrixBlockTypes.75385f9b-8a0a-41ca-93e2-bb2e51aa5f9e.fields.8bead974-8a62-4b51-8ce0-2eabe8ac1c4d.settings.previewMode', '\"full\"'),
('matrixBlockTypes.75385f9b-8a0a-41ca-93e2-bb2e51aa5f9e.fields.8bead974-8a62-4b51-8ce0-2eabe8ac1c4d.settings.restrictFiles', '\"\"'),
('matrixBlockTypes.75385f9b-8a0a-41ca-93e2-bb2e51aa5f9e.fields.8bead974-8a62-4b51-8ce0-2eabe8ac1c4d.settings.selectionLabel', '\"\"'),
('matrixBlockTypes.75385f9b-8a0a-41ca-93e2-bb2e51aa5f9e.fields.8bead974-8a62-4b51-8ce0-2eabe8ac1c4d.settings.showSiteMenu', 'true'),
('matrixBlockTypes.75385f9b-8a0a-41ca-93e2-bb2e51aa5f9e.fields.8bead974-8a62-4b51-8ce0-2eabe8ac1c4d.settings.showUnpermittedFiles', 'false'),
('matrixBlockTypes.75385f9b-8a0a-41ca-93e2-bb2e51aa5f9e.fields.8bead974-8a62-4b51-8ce0-2eabe8ac1c4d.settings.showUnpermittedVolumes', 'false'),
('matrixBlockTypes.75385f9b-8a0a-41ca-93e2-bb2e51aa5f9e.fields.8bead974-8a62-4b51-8ce0-2eabe8ac1c4d.settings.singleUploadLocationSource', '\"volume:8182eadf-ef29-4df4-b0b7-ff9afd8a6d8a\"'),
('matrixBlockTypes.75385f9b-8a0a-41ca-93e2-bb2e51aa5f9e.fields.8bead974-8a62-4b51-8ce0-2eabe8ac1c4d.settings.singleUploadLocationSubpath', '\"\"'),
('matrixBlockTypes.75385f9b-8a0a-41ca-93e2-bb2e51aa5f9e.fields.8bead974-8a62-4b51-8ce0-2eabe8ac1c4d.settings.source', 'null'),
('matrixBlockTypes.75385f9b-8a0a-41ca-93e2-bb2e51aa5f9e.fields.8bead974-8a62-4b51-8ce0-2eabe8ac1c4d.settings.sources', '\"*\"'),
('matrixBlockTypes.75385f9b-8a0a-41ca-93e2-bb2e51aa5f9e.fields.8bead974-8a62-4b51-8ce0-2eabe8ac1c4d.settings.targetSiteId', 'null'),
('matrixBlockTypes.75385f9b-8a0a-41ca-93e2-bb2e51aa5f9e.fields.8bead974-8a62-4b51-8ce0-2eabe8ac1c4d.settings.useSingleFolder', 'false'),
('matrixBlockTypes.75385f9b-8a0a-41ca-93e2-bb2e51aa5f9e.fields.8bead974-8a62-4b51-8ce0-2eabe8ac1c4d.settings.validateRelatedElements', 'false'),
('matrixBlockTypes.75385f9b-8a0a-41ca-93e2-bb2e51aa5f9e.fields.8bead974-8a62-4b51-8ce0-2eabe8ac1c4d.settings.viewMode', '\"list\"'),
('matrixBlockTypes.75385f9b-8a0a-41ca-93e2-bb2e51aa5f9e.fields.8bead974-8a62-4b51-8ce0-2eabe8ac1c4d.translationKeyFormat', 'null'),
('matrixBlockTypes.75385f9b-8a0a-41ca-93e2-bb2e51aa5f9e.fields.8bead974-8a62-4b51-8ce0-2eabe8ac1c4d.translationMethod', '\"site\"'),
('matrixBlockTypes.75385f9b-8a0a-41ca-93e2-bb2e51aa5f9e.fields.8bead974-8a62-4b51-8ce0-2eabe8ac1c4d.type', '\"craft\\\\fields\\\\Assets\"'),
('matrixBlockTypes.75385f9b-8a0a-41ca-93e2-bb2e51aa5f9e.handle', '\"media\"'),
('matrixBlockTypes.75385f9b-8a0a-41ca-93e2-bb2e51aa5f9e.name', '\"Media\"'),
('matrixBlockTypes.75385f9b-8a0a-41ca-93e2-bb2e51aa5f9e.sortOrder', '1'),
('matrixBlockTypes.8bd946c5-ddc9-47c2-a007-937fd7f2a541.field', '\"0d466c5d-123e-4c56-95fb-a2667cc6b29c\"'),
('matrixBlockTypes.8bd946c5-ddc9-47c2-a007-937fd7f2a541.fieldLayouts.cd196988-4c7d-4b18-a3ad-2c173b490f1f.tabs.0.elements.0.fieldUid', '\"c08f6107-f7dd-4071-a356-a6dc5443f19e\"'),
('matrixBlockTypes.8bd946c5-ddc9-47c2-a007-937fd7f2a541.fieldLayouts.cd196988-4c7d-4b18-a3ad-2c173b490f1f.tabs.0.elements.0.instructions', 'null'),
('matrixBlockTypes.8bd946c5-ddc9-47c2-a007-937fd7f2a541.fieldLayouts.cd196988-4c7d-4b18-a3ad-2c173b490f1f.tabs.0.elements.0.label', 'null'),
('matrixBlockTypes.8bd946c5-ddc9-47c2-a007-937fd7f2a541.fieldLayouts.cd196988-4c7d-4b18-a3ad-2c173b490f1f.tabs.0.elements.0.required', 'false'),
('matrixBlockTypes.8bd946c5-ddc9-47c2-a007-937fd7f2a541.fieldLayouts.cd196988-4c7d-4b18-a3ad-2c173b490f1f.tabs.0.elements.0.tip', 'null'),
('matrixBlockTypes.8bd946c5-ddc9-47c2-a007-937fd7f2a541.fieldLayouts.cd196988-4c7d-4b18-a3ad-2c173b490f1f.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('matrixBlockTypes.8bd946c5-ddc9-47c2-a007-937fd7f2a541.fieldLayouts.cd196988-4c7d-4b18-a3ad-2c173b490f1f.tabs.0.elements.0.warning', 'null'),
('matrixBlockTypes.8bd946c5-ddc9-47c2-a007-937fd7f2a541.fieldLayouts.cd196988-4c7d-4b18-a3ad-2c173b490f1f.tabs.0.elements.0.width', '100'),
('matrixBlockTypes.8bd946c5-ddc9-47c2-a007-937fd7f2a541.fieldLayouts.cd196988-4c7d-4b18-a3ad-2c173b490f1f.tabs.0.elements.1.fieldUid', '\"f103da70-aeec-4a0b-bed2-5b1d98e1d361\"'),
('matrixBlockTypes.8bd946c5-ddc9-47c2-a007-937fd7f2a541.fieldLayouts.cd196988-4c7d-4b18-a3ad-2c173b490f1f.tabs.0.elements.1.instructions', 'null'),
('matrixBlockTypes.8bd946c5-ddc9-47c2-a007-937fd7f2a541.fieldLayouts.cd196988-4c7d-4b18-a3ad-2c173b490f1f.tabs.0.elements.1.label', 'null'),
('matrixBlockTypes.8bd946c5-ddc9-47c2-a007-937fd7f2a541.fieldLayouts.cd196988-4c7d-4b18-a3ad-2c173b490f1f.tabs.0.elements.1.required', 'false'),
('matrixBlockTypes.8bd946c5-ddc9-47c2-a007-937fd7f2a541.fieldLayouts.cd196988-4c7d-4b18-a3ad-2c173b490f1f.tabs.0.elements.1.tip', 'null'),
('matrixBlockTypes.8bd946c5-ddc9-47c2-a007-937fd7f2a541.fieldLayouts.cd196988-4c7d-4b18-a3ad-2c173b490f1f.tabs.0.elements.1.type', '\"craft\\\\fieldlayoutelements\\\\CustomField\"'),
('matrixBlockTypes.8bd946c5-ddc9-47c2-a007-937fd7f2a541.fieldLayouts.cd196988-4c7d-4b18-a3ad-2c173b490f1f.tabs.0.elements.1.warning', 'null'),
('matrixBlockTypes.8bd946c5-ddc9-47c2-a007-937fd7f2a541.fieldLayouts.cd196988-4c7d-4b18-a3ad-2c173b490f1f.tabs.0.elements.1.width', '100'),
('matrixBlockTypes.8bd946c5-ddc9-47c2-a007-937fd7f2a541.fieldLayouts.cd196988-4c7d-4b18-a3ad-2c173b490f1f.tabs.0.name', '\"Content\"'),
('matrixBlockTypes.8bd946c5-ddc9-47c2-a007-937fd7f2a541.fieldLayouts.cd196988-4c7d-4b18-a3ad-2c173b490f1f.tabs.0.sortOrder', '1'),
('matrixBlockTypes.8bd946c5-ddc9-47c2-a007-937fd7f2a541.fields.c08f6107-f7dd-4071-a356-a6dc5443f19e.contentColumnType', '\"string\"'),
('matrixBlockTypes.8bd946c5-ddc9-47c2-a007-937fd7f2a541.fields.c08f6107-f7dd-4071-a356-a6dc5443f19e.fieldGroup', 'null'),
('matrixBlockTypes.8bd946c5-ddc9-47c2-a007-937fd7f2a541.fields.c08f6107-f7dd-4071-a356-a6dc5443f19e.handle', '\"sectionHeight\"'),
('matrixBlockTypes.8bd946c5-ddc9-47c2-a007-937fd7f2a541.fields.c08f6107-f7dd-4071-a356-a6dc5443f19e.instructions', '\"\"'),
('matrixBlockTypes.8bd946c5-ddc9-47c2-a007-937fd7f2a541.fields.c08f6107-f7dd-4071-a356-a6dc5443f19e.name', '\"Section Height\"'),
('matrixBlockTypes.8bd946c5-ddc9-47c2-a007-937fd7f2a541.fields.c08f6107-f7dd-4071-a356-a6dc5443f19e.searchable', 'false'),
('matrixBlockTypes.8bd946c5-ddc9-47c2-a007-937fd7f2a541.fields.c08f6107-f7dd-4071-a356-a6dc5443f19e.settings.optgroups', 'true'),
('matrixBlockTypes.8bd946c5-ddc9-47c2-a007-937fd7f2a541.fields.c08f6107-f7dd-4071-a356-a6dc5443f19e.settings.options.0.__assoc__.0.0', '\"label\"'),
('matrixBlockTypes.8bd946c5-ddc9-47c2-a007-937fd7f2a541.fields.c08f6107-f7dd-4071-a356-a6dc5443f19e.settings.options.0.__assoc__.0.1', '\"Small\"'),
('matrixBlockTypes.8bd946c5-ddc9-47c2-a007-937fd7f2a541.fields.c08f6107-f7dd-4071-a356-a6dc5443f19e.settings.options.0.__assoc__.1.0', '\"value\"'),
('matrixBlockTypes.8bd946c5-ddc9-47c2-a007-937fd7f2a541.fields.c08f6107-f7dd-4071-a356-a6dc5443f19e.settings.options.0.__assoc__.1.1', '\"small\"'),
('matrixBlockTypes.8bd946c5-ddc9-47c2-a007-937fd7f2a541.fields.c08f6107-f7dd-4071-a356-a6dc5443f19e.settings.options.0.__assoc__.2.0', '\"default\"'),
('matrixBlockTypes.8bd946c5-ddc9-47c2-a007-937fd7f2a541.fields.c08f6107-f7dd-4071-a356-a6dc5443f19e.settings.options.0.__assoc__.2.1', '\"1\"'),
('matrixBlockTypes.8bd946c5-ddc9-47c2-a007-937fd7f2a541.fields.c08f6107-f7dd-4071-a356-a6dc5443f19e.settings.options.1.__assoc__.0.0', '\"label\"'),
('matrixBlockTypes.8bd946c5-ddc9-47c2-a007-937fd7f2a541.fields.c08f6107-f7dd-4071-a356-a6dc5443f19e.settings.options.1.__assoc__.0.1', '\"Large\"'),
('matrixBlockTypes.8bd946c5-ddc9-47c2-a007-937fd7f2a541.fields.c08f6107-f7dd-4071-a356-a6dc5443f19e.settings.options.1.__assoc__.1.0', '\"value\"'),
('matrixBlockTypes.8bd946c5-ddc9-47c2-a007-937fd7f2a541.fields.c08f6107-f7dd-4071-a356-a6dc5443f19e.settings.options.1.__assoc__.1.1', '\"large\"'),
('matrixBlockTypes.8bd946c5-ddc9-47c2-a007-937fd7f2a541.fields.c08f6107-f7dd-4071-a356-a6dc5443f19e.settings.options.1.__assoc__.2.0', '\"default\"'),
('matrixBlockTypes.8bd946c5-ddc9-47c2-a007-937fd7f2a541.fields.c08f6107-f7dd-4071-a356-a6dc5443f19e.settings.options.1.__assoc__.2.1', '\"\"'),
('matrixBlockTypes.8bd946c5-ddc9-47c2-a007-937fd7f2a541.fields.c08f6107-f7dd-4071-a356-a6dc5443f19e.translationKeyFormat', 'null'),
('matrixBlockTypes.8bd946c5-ddc9-47c2-a007-937fd7f2a541.fields.c08f6107-f7dd-4071-a356-a6dc5443f19e.translationMethod', '\"none\"'),
('matrixBlockTypes.8bd946c5-ddc9-47c2-a007-937fd7f2a541.fields.c08f6107-f7dd-4071-a356-a6dc5443f19e.type', '\"craft\\\\fields\\\\Dropdown\"'),
('matrixBlockTypes.8bd946c5-ddc9-47c2-a007-937fd7f2a541.fields.f103da70-aeec-4a0b-bed2-5b1d98e1d361.contentColumnType', '\"text\"'),
('matrixBlockTypes.8bd946c5-ddc9-47c2-a007-937fd7f2a541.fields.f103da70-aeec-4a0b-bed2-5b1d98e1d361.fieldGroup', 'null'),
('matrixBlockTypes.8bd946c5-ddc9-47c2-a007-937fd7f2a541.fields.f103da70-aeec-4a0b-bed2-5b1d98e1d361.handle', '\"copy\"'),
('matrixBlockTypes.8bd946c5-ddc9-47c2-a007-937fd7f2a541.fields.f103da70-aeec-4a0b-bed2-5b1d98e1d361.instructions', '\"\"'),
('matrixBlockTypes.8bd946c5-ddc9-47c2-a007-937fd7f2a541.fields.f103da70-aeec-4a0b-bed2-5b1d98e1d361.name', '\"Copy\"'),
('matrixBlockTypes.8bd946c5-ddc9-47c2-a007-937fd7f2a541.fields.f103da70-aeec-4a0b-bed2-5b1d98e1d361.searchable', 'false'),
('matrixBlockTypes.8bd946c5-ddc9-47c2-a007-937fd7f2a541.fields.f103da70-aeec-4a0b-bed2-5b1d98e1d361.settings.availableTransforms', '\"*\"'),
('matrixBlockTypes.8bd946c5-ddc9-47c2-a007-937fd7f2a541.fields.f103da70-aeec-4a0b-bed2-5b1d98e1d361.settings.availableVolumes', '\"*\"'),
('matrixBlockTypes.8bd946c5-ddc9-47c2-a007-937fd7f2a541.fields.f103da70-aeec-4a0b-bed2-5b1d98e1d361.settings.cleanupHtml', 'true'),
('matrixBlockTypes.8bd946c5-ddc9-47c2-a007-937fd7f2a541.fields.f103da70-aeec-4a0b-bed2-5b1d98e1d361.settings.columnType', '\"text\"'),
('matrixBlockTypes.8bd946c5-ddc9-47c2-a007-937fd7f2a541.fields.f103da70-aeec-4a0b-bed2-5b1d98e1d361.settings.configSelectionMode', '\"choose\"'),
('matrixBlockTypes.8bd946c5-ddc9-47c2-a007-937fd7f2a541.fields.f103da70-aeec-4a0b-bed2-5b1d98e1d361.settings.defaultTransform', '\"\"'),
('matrixBlockTypes.8bd946c5-ddc9-47c2-a007-937fd7f2a541.fields.f103da70-aeec-4a0b-bed2-5b1d98e1d361.settings.manualConfig', '\"\"'),
('matrixBlockTypes.8bd946c5-ddc9-47c2-a007-937fd7f2a541.fields.f103da70-aeec-4a0b-bed2-5b1d98e1d361.settings.purifierConfig', '\"\"'),
('matrixBlockTypes.8bd946c5-ddc9-47c2-a007-937fd7f2a541.fields.f103da70-aeec-4a0b-bed2-5b1d98e1d361.settings.purifyHtml', '\"1\"'),
('matrixBlockTypes.8bd946c5-ddc9-47c2-a007-937fd7f2a541.fields.f103da70-aeec-4a0b-bed2-5b1d98e1d361.settings.redactorConfig', '\"\"'),
('matrixBlockTypes.8bd946c5-ddc9-47c2-a007-937fd7f2a541.fields.f103da70-aeec-4a0b-bed2-5b1d98e1d361.settings.removeEmptyTags', '\"1\"'),
('matrixBlockTypes.8bd946c5-ddc9-47c2-a007-937fd7f2a541.fields.f103da70-aeec-4a0b-bed2-5b1d98e1d361.settings.removeInlineStyles', '\"1\"'),
('matrixBlockTypes.8bd946c5-ddc9-47c2-a007-937fd7f2a541.fields.f103da70-aeec-4a0b-bed2-5b1d98e1d361.settings.removeNbsp', '\"1\"'),
('matrixBlockTypes.8bd946c5-ddc9-47c2-a007-937fd7f2a541.fields.f103da70-aeec-4a0b-bed2-5b1d98e1d361.settings.showHtmlButtonForNonAdmins', '\"\"'),
('matrixBlockTypes.8bd946c5-ddc9-47c2-a007-937fd7f2a541.fields.f103da70-aeec-4a0b-bed2-5b1d98e1d361.settings.showUnpermittedFiles', 'false'),
('matrixBlockTypes.8bd946c5-ddc9-47c2-a007-937fd7f2a541.fields.f103da70-aeec-4a0b-bed2-5b1d98e1d361.settings.showUnpermittedVolumes', 'false'),
('matrixBlockTypes.8bd946c5-ddc9-47c2-a007-937fd7f2a541.fields.f103da70-aeec-4a0b-bed2-5b1d98e1d361.settings.uiMode', '\"enlarged\"'),
('matrixBlockTypes.8bd946c5-ddc9-47c2-a007-937fd7f2a541.fields.f103da70-aeec-4a0b-bed2-5b1d98e1d361.translationKeyFormat', 'null'),
('matrixBlockTypes.8bd946c5-ddc9-47c2-a007-937fd7f2a541.fields.f103da70-aeec-4a0b-bed2-5b1d98e1d361.translationMethod', '\"none\"'),
('matrixBlockTypes.8bd946c5-ddc9-47c2-a007-937fd7f2a541.fields.f103da70-aeec-4a0b-bed2-5b1d98e1d361.type', '\"craft\\\\redactor\\\\Field\"'),
('matrixBlockTypes.8bd946c5-ddc9-47c2-a007-937fd7f2a541.handle', '\"text\"'),
('matrixBlockTypes.8bd946c5-ddc9-47c2-a007-937fd7f2a541.name', '\"Text\"'),
('matrixBlockTypes.8bd946c5-ddc9-47c2-a007-937fd7f2a541.sortOrder', '2'),
('plugins.aws-s3.edition', '\"standard\"'),
('plugins.aws-s3.enabled', 'true'),
('plugins.aws-s3.schemaVersion', '\"1.2\"'),
('plugins.dospaces.edition', '\"standard\"'),
('plugins.dospaces.enabled', 'true'),
('plugins.dospaces.schemaVersion', '\"1.0.0\"'),
('plugins.embeddedassets.edition', '\"standard\"'),
('plugins.embeddedassets.enabled', 'true'),
('plugins.embeddedassets.schemaVersion', '\"1.0.0\"'),
('plugins.redactor.edition', '\"standard\"'),
('plugins.redactor.enabled', 'true'),
('plugins.redactor.schemaVersion', '\"2.3.0\"'),
('plugins.remote-sync.edition', '\"standard\"'),
('plugins.remote-sync.enabled', 'true'),
('plugins.remote-sync.schemaVersion', '\"1.0.0\"'),
('sections.2fe0a2c0-ae6c-4c9d-bf0a-94ef1dd21ff3.enableVersioning', 'true'),
('sections.2fe0a2c0-ae6c-4c9d-bf0a-94ef1dd21ff3.handle', '\"home\"'),
('sections.2fe0a2c0-ae6c-4c9d-bf0a-94ef1dd21ff3.name', '\"Home\"'),
('sections.2fe0a2c0-ae6c-4c9d-bf0a-94ef1dd21ff3.propagationMethod', '\"all\"'),
('sections.2fe0a2c0-ae6c-4c9d-bf0a-94ef1dd21ff3.siteSettings.9e92814a-721a-4b15-ad0e-5862784c6bd0.enabledByDefault', 'true'),
('sections.2fe0a2c0-ae6c-4c9d-bf0a-94ef1dd21ff3.siteSettings.9e92814a-721a-4b15-ad0e-5862784c6bd0.hasUrls', 'true'),
('sections.2fe0a2c0-ae6c-4c9d-bf0a-94ef1dd21ff3.siteSettings.9e92814a-721a-4b15-ad0e-5862784c6bd0.template', 'null'),
('sections.2fe0a2c0-ae6c-4c9d-bf0a-94ef1dd21ff3.siteSettings.9e92814a-721a-4b15-ad0e-5862784c6bd0.uriFormat', '\"__home__\"'),
('sections.2fe0a2c0-ae6c-4c9d-bf0a-94ef1dd21ff3.type', '\"single\"'),
('sections.5e908aab-5aef-4028-ae8a-159e0800450f.enableVersioning', 'true'),
('sections.5e908aab-5aef-4028-ae8a-159e0800450f.handle', '\"video\"'),
('sections.5e908aab-5aef-4028-ae8a-159e0800450f.name', '\"Video\"'),
('sections.5e908aab-5aef-4028-ae8a-159e0800450f.propagationMethod', '\"all\"'),
('sections.5e908aab-5aef-4028-ae8a-159e0800450f.siteSettings.9e92814a-721a-4b15-ad0e-5862784c6bd0.enabledByDefault', 'true'),
('sections.5e908aab-5aef-4028-ae8a-159e0800450f.siteSettings.9e92814a-721a-4b15-ad0e-5862784c6bd0.hasUrls', 'true'),
('sections.5e908aab-5aef-4028-ae8a-159e0800450f.siteSettings.9e92814a-721a-4b15-ad0e-5862784c6bd0.template', '\"video/_entry\"'),
('sections.5e908aab-5aef-4028-ae8a-159e0800450f.siteSettings.9e92814a-721a-4b15-ad0e-5862784c6bd0.uriFormat', '\"video/{slug}\"'),
('sections.5e908aab-5aef-4028-ae8a-159e0800450f.type', '\"channel\"'),
('sections.703b5eed-0225-4060-81f0-38e05ea2dcb9.enableVersioning', 'true'),
('sections.703b5eed-0225-4060-81f0-38e05ea2dcb9.handle', '\"campaigns\"'),
('sections.703b5eed-0225-4060-81f0-38e05ea2dcb9.name', '\"Campaigns\"'),
('sections.703b5eed-0225-4060-81f0-38e05ea2dcb9.propagationMethod', '\"all\"'),
('sections.703b5eed-0225-4060-81f0-38e05ea2dcb9.siteSettings.9e92814a-721a-4b15-ad0e-5862784c6bd0.enabledByDefault', 'true'),
('sections.703b5eed-0225-4060-81f0-38e05ea2dcb9.siteSettings.9e92814a-721a-4b15-ad0e-5862784c6bd0.hasUrls', 'true'),
('sections.703b5eed-0225-4060-81f0-38e05ea2dcb9.siteSettings.9e92814a-721a-4b15-ad0e-5862784c6bd0.template', '\"campaigns/_entry\"'),
('sections.703b5eed-0225-4060-81f0-38e05ea2dcb9.siteSettings.9e92814a-721a-4b15-ad0e-5862784c6bd0.uriFormat', '\"campaign/{slug}\"'),
('sections.703b5eed-0225-4060-81f0-38e05ea2dcb9.type', '\"channel\"'),
('sections.db1fcc91-ecc4-4349-9e09-6a579c5b9ba1.enableVersioning', 'true'),
('sections.db1fcc91-ecc4-4349-9e09-6a579c5b9ba1.handle', '\"contact\"'),
('sections.db1fcc91-ecc4-4349-9e09-6a579c5b9ba1.name', '\"Contact\"'),
('sections.db1fcc91-ecc4-4349-9e09-6a579c5b9ba1.propagationMethod', '\"all\"'),
('sections.db1fcc91-ecc4-4349-9e09-6a579c5b9ba1.siteSettings.9e92814a-721a-4b15-ad0e-5862784c6bd0.enabledByDefault', 'true'),
('sections.db1fcc91-ecc4-4349-9e09-6a579c5b9ba1.siteSettings.9e92814a-721a-4b15-ad0e-5862784c6bd0.hasUrls', 'true'),
('sections.db1fcc91-ecc4-4349-9e09-6a579c5b9ba1.siteSettings.9e92814a-721a-4b15-ad0e-5862784c6bd0.template', '\"contact\"'),
('sections.db1fcc91-ecc4-4349-9e09-6a579c5b9ba1.siteSettings.9e92814a-721a-4b15-ad0e-5862784c6bd0.uriFormat', '\"contact\"'),
('sections.db1fcc91-ecc4-4349-9e09-6a579c5b9ba1.type', '\"single\"'),
('sections.f3f4a1c9-69f2-4d31-8193-11ca589533da.enableVersioning', 'true'),
('sections.f3f4a1c9-69f2-4d31-8193-11ca589533da.handle', '\"editorial\"'),
('sections.f3f4a1c9-69f2-4d31-8193-11ca589533da.name', '\"Editorial\"'),
('sections.f3f4a1c9-69f2-4d31-8193-11ca589533da.propagationMethod', '\"all\"'),
('sections.f3f4a1c9-69f2-4d31-8193-11ca589533da.siteSettings.9e92814a-721a-4b15-ad0e-5862784c6bd0.enabledByDefault', 'true'),
('sections.f3f4a1c9-69f2-4d31-8193-11ca589533da.siteSettings.9e92814a-721a-4b15-ad0e-5862784c6bd0.hasUrls', 'true'),
('sections.f3f4a1c9-69f2-4d31-8193-11ca589533da.siteSettings.9e92814a-721a-4b15-ad0e-5862784c6bd0.template', '\"editorial/index\"'),
('sections.f3f4a1c9-69f2-4d31-8193-11ca589533da.siteSettings.9e92814a-721a-4b15-ad0e-5862784c6bd0.uriFormat', '\"editorial/{slug}\"'),
('sections.f3f4a1c9-69f2-4d31-8193-11ca589533da.type', '\"channel\"'),
('siteGroups.6365b6b2-7fc7-4dc0-8e2c-da399c122e92.name', '\"CraftMamp\"'),
('sites.9e92814a-721a-4b15-ad0e-5862784c6bd0.baseUrl', '\"$PRIMARY_SITE_URL\"'),
('sites.9e92814a-721a-4b15-ad0e-5862784c6bd0.enabled', 'true'),
('sites.9e92814a-721a-4b15-ad0e-5862784c6bd0.handle', '\"default\"'),
('sites.9e92814a-721a-4b15-ad0e-5862784c6bd0.hasUrls', 'true'),
('sites.9e92814a-721a-4b15-ad0e-5862784c6bd0.language', '\"en-US\"'),
('sites.9e92814a-721a-4b15-ad0e-5862784c6bd0.name', '\"Nora Deligter\"'),
('sites.9e92814a-721a-4b15-ad0e-5862784c6bd0.primary', 'true'),
('sites.9e92814a-721a-4b15-ad0e-5862784c6bd0.siteGroup', '\"6365b6b2-7fc7-4dc0-8e2c-da399c122e92\"'),
('sites.9e92814a-721a-4b15-ad0e-5862784c6bd0.sortOrder', '1'),
('system.edition', '\"solo\"'),
('system.live', 'true'),
('system.name', '\"Nora Deligter\"'),
('system.retryDuration', 'null'),
('system.schemaVersion', '\"3.5.13\"'),
('system.timeZone', '\"America/Los_Angeles\"'),
('users.allowPublicRegistration', 'false'),
('users.defaultGroup', 'null'),
('users.photoSubpath', 'null'),
('users.photoVolumeUid', 'null'),
('users.requireEmailVerification', 'true'),
('volumes.5c928ce6-eb9c-4f91-a1e1-ae3e535cf8e7.fieldLayouts.5b29ebd9-2f02-4a02-9862-d147e69314ac.tabs.0.elements.0.autocapitalize', 'true'),
('volumes.5c928ce6-eb9c-4f91-a1e1-ae3e535cf8e7.fieldLayouts.5b29ebd9-2f02-4a02-9862-d147e69314ac.tabs.0.elements.0.autocomplete', 'false'),
('volumes.5c928ce6-eb9c-4f91-a1e1-ae3e535cf8e7.fieldLayouts.5b29ebd9-2f02-4a02-9862-d147e69314ac.tabs.0.elements.0.autocorrect', 'true'),
('volumes.5c928ce6-eb9c-4f91-a1e1-ae3e535cf8e7.fieldLayouts.5b29ebd9-2f02-4a02-9862-d147e69314ac.tabs.0.elements.0.class', 'null'),
('volumes.5c928ce6-eb9c-4f91-a1e1-ae3e535cf8e7.fieldLayouts.5b29ebd9-2f02-4a02-9862-d147e69314ac.tabs.0.elements.0.disabled', 'false'),
('volumes.5c928ce6-eb9c-4f91-a1e1-ae3e535cf8e7.fieldLayouts.5b29ebd9-2f02-4a02-9862-d147e69314ac.tabs.0.elements.0.id', 'null'),
('volumes.5c928ce6-eb9c-4f91-a1e1-ae3e535cf8e7.fieldLayouts.5b29ebd9-2f02-4a02-9862-d147e69314ac.tabs.0.elements.0.instructions', 'null'),
('volumes.5c928ce6-eb9c-4f91-a1e1-ae3e535cf8e7.fieldLayouts.5b29ebd9-2f02-4a02-9862-d147e69314ac.tabs.0.elements.0.label', 'null'),
('volumes.5c928ce6-eb9c-4f91-a1e1-ae3e535cf8e7.fieldLayouts.5b29ebd9-2f02-4a02-9862-d147e69314ac.tabs.0.elements.0.max', 'null'),
('volumes.5c928ce6-eb9c-4f91-a1e1-ae3e535cf8e7.fieldLayouts.5b29ebd9-2f02-4a02-9862-d147e69314ac.tabs.0.elements.0.min', 'null'),
('volumes.5c928ce6-eb9c-4f91-a1e1-ae3e535cf8e7.fieldLayouts.5b29ebd9-2f02-4a02-9862-d147e69314ac.tabs.0.elements.0.name', 'null'),
('volumes.5c928ce6-eb9c-4f91-a1e1-ae3e535cf8e7.fieldLayouts.5b29ebd9-2f02-4a02-9862-d147e69314ac.tabs.0.elements.0.orientation', 'null'),
('volumes.5c928ce6-eb9c-4f91-a1e1-ae3e535cf8e7.fieldLayouts.5b29ebd9-2f02-4a02-9862-d147e69314ac.tabs.0.elements.0.placeholder', 'null'),
('volumes.5c928ce6-eb9c-4f91-a1e1-ae3e535cf8e7.fieldLayouts.5b29ebd9-2f02-4a02-9862-d147e69314ac.tabs.0.elements.0.readonly', 'false'),
('volumes.5c928ce6-eb9c-4f91-a1e1-ae3e535cf8e7.fieldLayouts.5b29ebd9-2f02-4a02-9862-d147e69314ac.tabs.0.elements.0.requirable', 'false'),
('volumes.5c928ce6-eb9c-4f91-a1e1-ae3e535cf8e7.fieldLayouts.5b29ebd9-2f02-4a02-9862-d147e69314ac.tabs.0.elements.0.size', 'null'),
('volumes.5c928ce6-eb9c-4f91-a1e1-ae3e535cf8e7.fieldLayouts.5b29ebd9-2f02-4a02-9862-d147e69314ac.tabs.0.elements.0.step', 'null'),
('volumes.5c928ce6-eb9c-4f91-a1e1-ae3e535cf8e7.fieldLayouts.5b29ebd9-2f02-4a02-9862-d147e69314ac.tabs.0.elements.0.tip', 'null'),
('volumes.5c928ce6-eb9c-4f91-a1e1-ae3e535cf8e7.fieldLayouts.5b29ebd9-2f02-4a02-9862-d147e69314ac.tabs.0.elements.0.title', 'null'),
('volumes.5c928ce6-eb9c-4f91-a1e1-ae3e535cf8e7.fieldLayouts.5b29ebd9-2f02-4a02-9862-d147e69314ac.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\TitleField\"'),
('volumes.5c928ce6-eb9c-4f91-a1e1-ae3e535cf8e7.fieldLayouts.5b29ebd9-2f02-4a02-9862-d147e69314ac.tabs.0.elements.0.warning', 'null'),
('volumes.5c928ce6-eb9c-4f91-a1e1-ae3e535cf8e7.fieldLayouts.5b29ebd9-2f02-4a02-9862-d147e69314ac.tabs.0.elements.0.width', '100'),
('volumes.5c928ce6-eb9c-4f91-a1e1-ae3e535cf8e7.fieldLayouts.5b29ebd9-2f02-4a02-9862-d147e69314ac.tabs.0.name', '\"Content\"'),
('volumes.5c928ce6-eb9c-4f91-a1e1-ae3e535cf8e7.fieldLayouts.5b29ebd9-2f02-4a02-9862-d147e69314ac.tabs.0.sortOrder', '1'),
('volumes.5c928ce6-eb9c-4f91-a1e1-ae3e535cf8e7.handle', '\"brand\"'),
('volumes.5c928ce6-eb9c-4f91-a1e1-ae3e535cf8e7.hasUrls', 'false'),
('volumes.5c928ce6-eb9c-4f91-a1e1-ae3e535cf8e7.name', '\"Brand\"'),
('volumes.5c928ce6-eb9c-4f91-a1e1-ae3e535cf8e7.settings.path', '\"@webroot/assets/brand\"'),
('volumes.5c928ce6-eb9c-4f91-a1e1-ae3e535cf8e7.sortOrder', '3'),
('volumes.5c928ce6-eb9c-4f91-a1e1-ae3e535cf8e7.type', '\"craft\\\\volumes\\\\Local\"'),
('volumes.5c928ce6-eb9c-4f91-a1e1-ae3e535cf8e7.url', '\"\"'),
('volumes.7c10fe48-df6f-43c9-b993-ad9897a2ac8f.fieldLayouts.9593686a-3f80-40fc-97ea-9bad6277d918.tabs.0.elements.0.autocapitalize', 'true'),
('volumes.7c10fe48-df6f-43c9-b993-ad9897a2ac8f.fieldLayouts.9593686a-3f80-40fc-97ea-9bad6277d918.tabs.0.elements.0.autocomplete', 'false'),
('volumes.7c10fe48-df6f-43c9-b993-ad9897a2ac8f.fieldLayouts.9593686a-3f80-40fc-97ea-9bad6277d918.tabs.0.elements.0.autocorrect', 'true'),
('volumes.7c10fe48-df6f-43c9-b993-ad9897a2ac8f.fieldLayouts.9593686a-3f80-40fc-97ea-9bad6277d918.tabs.0.elements.0.class', 'null'),
('volumes.7c10fe48-df6f-43c9-b993-ad9897a2ac8f.fieldLayouts.9593686a-3f80-40fc-97ea-9bad6277d918.tabs.0.elements.0.disabled', 'false'),
('volumes.7c10fe48-df6f-43c9-b993-ad9897a2ac8f.fieldLayouts.9593686a-3f80-40fc-97ea-9bad6277d918.tabs.0.elements.0.id', 'null'),
('volumes.7c10fe48-df6f-43c9-b993-ad9897a2ac8f.fieldLayouts.9593686a-3f80-40fc-97ea-9bad6277d918.tabs.0.elements.0.instructions', 'null'),
('volumes.7c10fe48-df6f-43c9-b993-ad9897a2ac8f.fieldLayouts.9593686a-3f80-40fc-97ea-9bad6277d918.tabs.0.elements.0.label', 'null'),
('volumes.7c10fe48-df6f-43c9-b993-ad9897a2ac8f.fieldLayouts.9593686a-3f80-40fc-97ea-9bad6277d918.tabs.0.elements.0.max', 'null'),
('volumes.7c10fe48-df6f-43c9-b993-ad9897a2ac8f.fieldLayouts.9593686a-3f80-40fc-97ea-9bad6277d918.tabs.0.elements.0.min', 'null'),
('volumes.7c10fe48-df6f-43c9-b993-ad9897a2ac8f.fieldLayouts.9593686a-3f80-40fc-97ea-9bad6277d918.tabs.0.elements.0.name', 'null'),
('volumes.7c10fe48-df6f-43c9-b993-ad9897a2ac8f.fieldLayouts.9593686a-3f80-40fc-97ea-9bad6277d918.tabs.0.elements.0.orientation', 'null'),
('volumes.7c10fe48-df6f-43c9-b993-ad9897a2ac8f.fieldLayouts.9593686a-3f80-40fc-97ea-9bad6277d918.tabs.0.elements.0.placeholder', 'null'),
('volumes.7c10fe48-df6f-43c9-b993-ad9897a2ac8f.fieldLayouts.9593686a-3f80-40fc-97ea-9bad6277d918.tabs.0.elements.0.readonly', 'false'),
('volumes.7c10fe48-df6f-43c9-b993-ad9897a2ac8f.fieldLayouts.9593686a-3f80-40fc-97ea-9bad6277d918.tabs.0.elements.0.requirable', 'false'),
('volumes.7c10fe48-df6f-43c9-b993-ad9897a2ac8f.fieldLayouts.9593686a-3f80-40fc-97ea-9bad6277d918.tabs.0.elements.0.size', 'null'),
('volumes.7c10fe48-df6f-43c9-b993-ad9897a2ac8f.fieldLayouts.9593686a-3f80-40fc-97ea-9bad6277d918.tabs.0.elements.0.step', 'null'),
('volumes.7c10fe48-df6f-43c9-b993-ad9897a2ac8f.fieldLayouts.9593686a-3f80-40fc-97ea-9bad6277d918.tabs.0.elements.0.tip', 'null'),
('volumes.7c10fe48-df6f-43c9-b993-ad9897a2ac8f.fieldLayouts.9593686a-3f80-40fc-97ea-9bad6277d918.tabs.0.elements.0.title', 'null'),
('volumes.7c10fe48-df6f-43c9-b993-ad9897a2ac8f.fieldLayouts.9593686a-3f80-40fc-97ea-9bad6277d918.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\TitleField\"'),
('volumes.7c10fe48-df6f-43c9-b993-ad9897a2ac8f.fieldLayouts.9593686a-3f80-40fc-97ea-9bad6277d918.tabs.0.elements.0.warning', 'null'),
('volumes.7c10fe48-df6f-43c9-b993-ad9897a2ac8f.fieldLayouts.9593686a-3f80-40fc-97ea-9bad6277d918.tabs.0.elements.0.width', '100'),
('volumes.7c10fe48-df6f-43c9-b993-ad9897a2ac8f.fieldLayouts.9593686a-3f80-40fc-97ea-9bad6277d918.tabs.0.name', '\"Content\"'),
('volumes.7c10fe48-df6f-43c9-b993-ad9897a2ac8f.fieldLayouts.9593686a-3f80-40fc-97ea-9bad6277d918.tabs.0.sortOrder', '1'),
('volumes.7c10fe48-df6f-43c9-b993-ad9897a2ac8f.handle', '\"general\"'),
('volumes.7c10fe48-df6f-43c9-b993-ad9897a2ac8f.hasUrls', 'true'),
('volumes.7c10fe48-df6f-43c9-b993-ad9897a2ac8f.name', '\"General\"'),
('volumes.7c10fe48-df6f-43c9-b993-ad9897a2ac8f.settings.path', '\"@webroot/assets/general\"'),
('volumes.7c10fe48-df6f-43c9-b993-ad9897a2ac8f.sortOrder', '2'),
('volumes.7c10fe48-df6f-43c9-b993-ad9897a2ac8f.type', '\"craft\\\\volumes\\\\Local\"'),
('volumes.7c10fe48-df6f-43c9-b993-ad9897a2ac8f.url', '\"@web/assets/general\"'),
('volumes.8182eadf-ef29-4df4-b0b7-ff9afd8a6d8a.fieldLayouts.aa06ee47-833d-4bb3-ba95-8726d803c0e9.tabs.0.elements.0.autocapitalize', 'true'),
('volumes.8182eadf-ef29-4df4-b0b7-ff9afd8a6d8a.fieldLayouts.aa06ee47-833d-4bb3-ba95-8726d803c0e9.tabs.0.elements.0.autocomplete', 'false'),
('volumes.8182eadf-ef29-4df4-b0b7-ff9afd8a6d8a.fieldLayouts.aa06ee47-833d-4bb3-ba95-8726d803c0e9.tabs.0.elements.0.autocorrect', 'true'),
('volumes.8182eadf-ef29-4df4-b0b7-ff9afd8a6d8a.fieldLayouts.aa06ee47-833d-4bb3-ba95-8726d803c0e9.tabs.0.elements.0.class', 'null'),
('volumes.8182eadf-ef29-4df4-b0b7-ff9afd8a6d8a.fieldLayouts.aa06ee47-833d-4bb3-ba95-8726d803c0e9.tabs.0.elements.0.disabled', 'false'),
('volumes.8182eadf-ef29-4df4-b0b7-ff9afd8a6d8a.fieldLayouts.aa06ee47-833d-4bb3-ba95-8726d803c0e9.tabs.0.elements.0.id', 'null'),
('volumes.8182eadf-ef29-4df4-b0b7-ff9afd8a6d8a.fieldLayouts.aa06ee47-833d-4bb3-ba95-8726d803c0e9.tabs.0.elements.0.instructions', 'null'),
('volumes.8182eadf-ef29-4df4-b0b7-ff9afd8a6d8a.fieldLayouts.aa06ee47-833d-4bb3-ba95-8726d803c0e9.tabs.0.elements.0.label', 'null'),
('volumes.8182eadf-ef29-4df4-b0b7-ff9afd8a6d8a.fieldLayouts.aa06ee47-833d-4bb3-ba95-8726d803c0e9.tabs.0.elements.0.max', 'null'),
('volumes.8182eadf-ef29-4df4-b0b7-ff9afd8a6d8a.fieldLayouts.aa06ee47-833d-4bb3-ba95-8726d803c0e9.tabs.0.elements.0.min', 'null'),
('volumes.8182eadf-ef29-4df4-b0b7-ff9afd8a6d8a.fieldLayouts.aa06ee47-833d-4bb3-ba95-8726d803c0e9.tabs.0.elements.0.name', 'null'),
('volumes.8182eadf-ef29-4df4-b0b7-ff9afd8a6d8a.fieldLayouts.aa06ee47-833d-4bb3-ba95-8726d803c0e9.tabs.0.elements.0.orientation', 'null'),
('volumes.8182eadf-ef29-4df4-b0b7-ff9afd8a6d8a.fieldLayouts.aa06ee47-833d-4bb3-ba95-8726d803c0e9.tabs.0.elements.0.placeholder', 'null'),
('volumes.8182eadf-ef29-4df4-b0b7-ff9afd8a6d8a.fieldLayouts.aa06ee47-833d-4bb3-ba95-8726d803c0e9.tabs.0.elements.0.readonly', 'false');
INSERT INTO `projectconfig` (`path`, `value`) VALUES
('volumes.8182eadf-ef29-4df4-b0b7-ff9afd8a6d8a.fieldLayouts.aa06ee47-833d-4bb3-ba95-8726d803c0e9.tabs.0.elements.0.requirable', 'false'),
('volumes.8182eadf-ef29-4df4-b0b7-ff9afd8a6d8a.fieldLayouts.aa06ee47-833d-4bb3-ba95-8726d803c0e9.tabs.0.elements.0.size', 'null'),
('volumes.8182eadf-ef29-4df4-b0b7-ff9afd8a6d8a.fieldLayouts.aa06ee47-833d-4bb3-ba95-8726d803c0e9.tabs.0.elements.0.step', 'null'),
('volumes.8182eadf-ef29-4df4-b0b7-ff9afd8a6d8a.fieldLayouts.aa06ee47-833d-4bb3-ba95-8726d803c0e9.tabs.0.elements.0.tip', 'null'),
('volumes.8182eadf-ef29-4df4-b0b7-ff9afd8a6d8a.fieldLayouts.aa06ee47-833d-4bb3-ba95-8726d803c0e9.tabs.0.elements.0.title', 'null'),
('volumes.8182eadf-ef29-4df4-b0b7-ff9afd8a6d8a.fieldLayouts.aa06ee47-833d-4bb3-ba95-8726d803c0e9.tabs.0.elements.0.type', '\"craft\\\\fieldlayoutelements\\\\TitleField\"'),
('volumes.8182eadf-ef29-4df4-b0b7-ff9afd8a6d8a.fieldLayouts.aa06ee47-833d-4bb3-ba95-8726d803c0e9.tabs.0.elements.0.warning', 'null'),
('volumes.8182eadf-ef29-4df4-b0b7-ff9afd8a6d8a.fieldLayouts.aa06ee47-833d-4bb3-ba95-8726d803c0e9.tabs.0.elements.0.width', '100'),
('volumes.8182eadf-ef29-4df4-b0b7-ff9afd8a6d8a.fieldLayouts.aa06ee47-833d-4bb3-ba95-8726d803c0e9.tabs.0.name', '\"Content\"'),
('volumes.8182eadf-ef29-4df4-b0b7-ff9afd8a6d8a.fieldLayouts.aa06ee47-833d-4bb3-ba95-8726d803c0e9.tabs.0.sortOrder', '1'),
('volumes.8182eadf-ef29-4df4-b0b7-ff9afd8a6d8a.handle', '\"editorial\"'),
('volumes.8182eadf-ef29-4df4-b0b7-ff9afd8a6d8a.hasUrls', 'true'),
('volumes.8182eadf-ef29-4df4-b0b7-ff9afd8a6d8a.name', '\"Editorial\"'),
('volumes.8182eadf-ef29-4df4-b0b7-ff9afd8a6d8a.settings.path', '\"@webroot/assets/editorial\"'),
('volumes.8182eadf-ef29-4df4-b0b7-ff9afd8a6d8a.sortOrder', '1'),
('volumes.8182eadf-ef29-4df4-b0b7-ff9afd8a6d8a.type', '\"craft\\\\volumes\\\\Local\"'),
('volumes.8182eadf-ef29-4df4-b0b7-ff9afd8a6d8a.url', '\"@web/assets/editorial\"');

-- --------------------------------------------------------

--
-- Table structure for table `queue`
--

CREATE TABLE `queue` (
  `id` int(11) NOT NULL,
  `channel` varchar(255) NOT NULL DEFAULT 'queue',
  `job` longblob NOT NULL,
  `description` text,
  `timePushed` int(11) NOT NULL,
  `ttr` int(11) NOT NULL,
  `delay` int(11) NOT NULL DEFAULT '0',
  `priority` int(11) UNSIGNED NOT NULL DEFAULT '1024',
  `dateReserved` datetime DEFAULT NULL,
  `timeUpdated` int(11) DEFAULT NULL,
  `progress` smallint(6) NOT NULL DEFAULT '0',
  `progressLabel` varchar(255) DEFAULT NULL,
  `attempt` int(11) DEFAULT NULL,
  `fail` tinyint(1) DEFAULT '0',
  `dateFailed` datetime DEFAULT NULL,
  `error` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `relations`
--

CREATE TABLE `relations` (
  `id` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `sourceId` int(11) NOT NULL,
  `sourceSiteId` int(11) DEFAULT NULL,
  `targetId` int(11) NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `relations`
--

INSERT INTO `relations` (`id`, `fieldId`, `sourceId`, `sourceSiteId`, `targetId`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(143, 36, 149, NULL, 9, 1, '2021-02-03 17:14:27', '2021-02-03 17:14:27', 'a85803e1-328c-4741-afff-8af59f43b9da'),
(144, 36, 151, NULL, 9, 1, '2021-02-03 17:14:27', '2021-02-03 17:14:27', 'bc0c472b-2875-48cc-8b56-82ba5ef19c00'),
(147, 36, 155, NULL, 9, 1, '2021-02-03 17:33:23', '2021-02-03 17:33:23', '4f8e9e00-f9ca-4e6c-8802-73bbeb192e41'),
(150, 36, 159, NULL, 9, 1, '2021-02-03 17:43:07', '2021-02-03 17:43:07', 'c8b5a47b-92eb-4b59-8602-b824a3bda4d3'),
(154, 36, 164, NULL, 9, 1, '2021-02-03 17:44:12', '2021-02-03 17:44:12', '6983a80c-5da6-4dec-933e-fc29fe1a99a6'),
(158, 36, 169, NULL, 9, 1, '2021-02-03 17:45:24', '2021-02-03 17:45:24', 'c009ae56-e5a9-4f60-b085-c3fd11c40d23'),
(162, 36, 174, NULL, 9, 1, '2021-02-03 18:14:21', '2021-02-03 18:14:21', '1e37968c-f0fb-402c-a354-3bdc72d2b355'),
(165, 36, 177, NULL, 89, 1, '2021-02-03 18:20:26', '2021-02-03 18:20:26', '04ef8f00-6183-489f-93e1-44915234d782'),
(166, 36, 177, NULL, 88, 2, '2021-02-03 18:20:26', '2021-02-03 18:20:26', '6767d544-31a1-413f-bec6-00548eecbd4e'),
(167, 36, 177, NULL, 87, 3, '2021-02-03 18:20:26', '2021-02-03 18:20:26', 'f2741981-48db-48d0-bef6-e5b38d6f254f'),
(168, 36, 177, NULL, 86, 4, '2021-02-03 18:20:26', '2021-02-03 18:20:26', '49ef5c9f-c0d6-46f9-adb3-5f5ec9ab9923'),
(170, 36, 180, NULL, 9, 1, '2021-02-03 18:20:26', '2021-02-03 18:20:26', 'b3013ee9-9bcd-475e-8bd7-309b91d3d12c'),
(173, 36, 183, NULL, 89, 1, '2021-02-03 18:20:26', '2021-02-03 18:20:26', '739464b4-276f-49a2-a19d-bed3fe7b3086'),
(174, 36, 183, NULL, 88, 2, '2021-02-03 18:20:26', '2021-02-03 18:20:26', '927d4f26-2868-479c-9b08-c88ee701bc8d'),
(175, 36, 183, NULL, 87, 3, '2021-02-03 18:20:26', '2021-02-03 18:20:26', '43409953-2930-4b83-9d90-36527fc7f83a'),
(176, 36, 183, NULL, 86, 4, '2021-02-03 18:20:26', '2021-02-03 18:20:26', '5df24a8e-771f-490a-bbb9-70d552a34093'),
(178, 36, 186, NULL, 9, 1, '2021-02-03 19:01:23', '2021-02-03 19:01:23', 'db9dc28f-c625-4f54-82ff-787049cd364c'),
(181, 36, 189, NULL, 89, 1, '2021-02-03 19:01:23', '2021-02-03 19:01:23', '970a87f9-67ed-4d1a-a6b2-9856484ddead'),
(182, 36, 189, NULL, 88, 2, '2021-02-03 19:01:23', '2021-02-03 19:01:23', 'eccac660-a8ed-40e9-b2ea-85387d77911b'),
(183, 36, 189, NULL, 87, 3, '2021-02-03 19:01:23', '2021-02-03 19:01:23', 'c2f2b4e4-295b-4dee-ad5a-0ce1d1a9e431'),
(184, 36, 189, NULL, 86, 4, '2021-02-03 19:01:23', '2021-02-03 19:01:23', 'f8286970-3789-4fda-b3cc-08c2977b9737'),
(185, 36, 190, NULL, 54, 1, '2021-02-03 19:03:20', '2021-02-03 19:03:20', '387da618-1e79-47d7-984d-5a43209ccf4d'),
(186, 36, 191, NULL, 119, 1, '2021-02-03 19:03:20', '2021-02-03 19:03:20', '81004648-3d94-4053-91a3-a809f8fb43de'),
(187, 36, 191, NULL, 118, 2, '2021-02-03 19:03:20', '2021-02-03 19:03:20', 'd5e9b0c3-27af-4ee2-83fb-76db66fddc42'),
(188, 36, 193, NULL, 54, 1, '2021-02-03 19:03:20', '2021-02-03 19:03:20', 'e7444dd0-f37f-418b-b6c3-6eda56a178a6'),
(189, 36, 194, NULL, 119, 1, '2021-02-03 19:03:20', '2021-02-03 19:03:20', '8cfe1984-1d07-4eb3-a12d-b99b1fabd836'),
(190, 36, 194, NULL, 118, 2, '2021-02-03 19:03:20', '2021-02-03 19:03:20', '601cd048-bd97-4477-b127-9f547f66ae9f'),
(191, 36, 195, NULL, 89, 1, '2021-02-03 19:03:20', '2021-02-03 19:03:20', '22825e41-9e7c-460b-b034-d929c2eaf192'),
(192, 36, 195, NULL, 88, 2, '2021-02-03 19:03:20', '2021-02-03 19:03:20', 'e9f332e7-32d3-448c-81a2-cc5125b92876'),
(193, 36, 195, NULL, 87, 3, '2021-02-03 19:03:20', '2021-02-03 19:03:20', '3f3f41da-8cc6-420c-8d5e-dec762319ea9'),
(194, 36, 195, NULL, 86, 4, '2021-02-03 19:03:20', '2021-02-03 19:03:20', '86738483-5093-4db9-b106-2c6191261ac1'),
(195, 36, 196, NULL, 119, 1, '2021-02-03 19:08:10', '2021-02-03 19:08:10', '1da0719b-8f6a-4321-9fd1-c1be5024eb41'),
(196, 36, 196, NULL, 89, 2, '2021-02-03 19:08:10', '2021-02-03 19:08:10', '6787b409-2aa3-47cd-9fe1-15b1dc8f3902'),
(197, 36, 198, NULL, 54, 1, '2021-02-03 19:08:10', '2021-02-03 19:08:10', '63f59cb4-1128-49b1-974b-86868500082c'),
(198, 36, 199, NULL, 119, 1, '2021-02-03 19:08:10', '2021-02-03 19:08:10', '4d6c7e59-19b8-4a30-a3f4-6816b5458f40'),
(199, 36, 199, NULL, 118, 2, '2021-02-03 19:08:10', '2021-02-03 19:08:10', '1dac18a1-258e-41ea-a5b5-0d607e6c0643'),
(200, 36, 200, NULL, 89, 1, '2021-02-03 19:08:10', '2021-02-03 19:08:10', 'c8ee12db-98f0-4410-9720-5d8aed4e9a55'),
(201, 36, 200, NULL, 88, 2, '2021-02-03 19:08:10', '2021-02-03 19:08:10', '8be8173b-d4ac-42d5-a0d2-2668f60f394d'),
(202, 36, 200, NULL, 87, 3, '2021-02-03 19:08:10', '2021-02-03 19:08:10', 'd174a249-7572-4397-84b4-a2540ef2ca81'),
(203, 36, 200, NULL, 86, 4, '2021-02-03 19:08:10', '2021-02-03 19:08:10', '76ae99a7-e0d1-4bf1-808c-bcf3194471d8'),
(204, 36, 201, NULL, 119, 1, '2021-02-03 19:08:10', '2021-02-03 19:08:10', 'e2cc6ae6-11c1-45ee-87a0-b6eecb315946'),
(205, 36, 201, NULL, 89, 2, '2021-02-03 19:08:10', '2021-02-03 19:08:10', 'db58e319-804b-4551-97d8-df3abc761a1f'),
(206, 36, 202, NULL, 118, 1, '2021-02-03 19:10:09', '2021-02-03 19:10:09', '077fae3a-e545-4532-b387-5c87b5382019'),
(207, 36, 202, NULL, 9, 2, '2021-02-03 19:10:09', '2021-02-03 19:10:09', '490b5e97-281f-4f45-9f13-576bfcf9decd'),
(208, 36, 204, NULL, 54, 1, '2021-02-03 19:10:09', '2021-02-03 19:10:09', '7f2a08ef-f825-467b-8bf9-a01e9ea6a285'),
(209, 36, 205, NULL, 119, 1, '2021-02-03 19:10:09', '2021-02-03 19:10:09', 'af54f3d1-6d09-433f-afa8-e9cf78b6b0ad'),
(210, 36, 205, NULL, 118, 2, '2021-02-03 19:10:09', '2021-02-03 19:10:09', '6064534a-837f-4648-a000-30aef6210120'),
(211, 36, 206, NULL, 89, 1, '2021-02-03 19:10:09', '2021-02-03 19:10:09', '55186920-3645-4667-a293-8259dc543078'),
(212, 36, 206, NULL, 88, 2, '2021-02-03 19:10:09', '2021-02-03 19:10:09', 'e548301e-722d-434a-8c3f-9b44bf492c47'),
(213, 36, 206, NULL, 87, 3, '2021-02-03 19:10:09', '2021-02-03 19:10:09', 'ea6f7bf6-b183-4c9b-872c-7117f96a1d48'),
(214, 36, 206, NULL, 86, 4, '2021-02-03 19:10:09', '2021-02-03 19:10:09', 'b20a2cfe-978d-4144-9b8c-c1bdbb17001a'),
(215, 36, 207, NULL, 119, 1, '2021-02-03 19:10:09', '2021-02-03 19:10:09', '77d43e26-1cde-4cc9-86fc-25221b51c635'),
(216, 36, 207, NULL, 89, 2, '2021-02-03 19:10:09', '2021-02-03 19:10:09', '6f1d5a48-04ae-4112-8ab3-4d234d643b91'),
(217, 36, 208, NULL, 118, 1, '2021-02-03 19:10:09', '2021-02-03 19:10:09', 'bcdfc736-215d-4552-98da-f926a921ff19'),
(218, 36, 208, NULL, 9, 2, '2021-02-03 19:10:09', '2021-02-03 19:10:09', '377e7f81-a4f2-4b12-bbea-c7844cb2d2f0'),
(219, 36, 209, NULL, 88, 1, '2021-02-03 19:10:53', '2021-02-03 19:10:53', 'cd38ebdc-fe43-4eb3-8fbb-a423bfbb48d3'),
(220, 36, 209, NULL, 54, 2, '2021-02-03 19:10:53', '2021-02-03 19:10:53', 'e845f820-ef11-4d0e-9dbf-46306ddf8251'),
(221, 36, 211, NULL, 54, 1, '2021-02-03 19:10:53', '2021-02-03 19:10:53', '1bae261c-6df1-4cd7-84aa-05e9436c3006'),
(222, 36, 212, NULL, 119, 1, '2021-02-03 19:10:53', '2021-02-03 19:10:53', '9ed69d85-cbcc-407a-8bec-abf6dbd1a3f6'),
(223, 36, 212, NULL, 118, 2, '2021-02-03 19:10:53', '2021-02-03 19:10:53', '8af99aaa-6ff6-4678-bfc8-4b24b376c755'),
(224, 36, 213, NULL, 89, 1, '2021-02-03 19:10:53', '2021-02-03 19:10:53', '36948fa8-c418-49a5-a8ac-df45b836916c'),
(225, 36, 213, NULL, 88, 2, '2021-02-03 19:10:53', '2021-02-03 19:10:53', '061a99aa-bb97-4fec-9d4b-5c6665285492'),
(226, 36, 213, NULL, 87, 3, '2021-02-03 19:10:53', '2021-02-03 19:10:53', 'fec62d8f-71da-4f2d-9fa4-45debfd97d79'),
(227, 36, 213, NULL, 86, 4, '2021-02-03 19:10:53', '2021-02-03 19:10:53', '38180e73-5180-4b49-b074-14f38046b32c'),
(228, 36, 214, NULL, 119, 1, '2021-02-03 19:10:53', '2021-02-03 19:10:53', 'b62df89f-284f-41e8-86f1-52d35cd95ff0'),
(229, 36, 214, NULL, 89, 2, '2021-02-03 19:10:53', '2021-02-03 19:10:53', '9783f916-50b1-47cb-b765-ad8a8f1da3c2'),
(230, 36, 215, NULL, 118, 1, '2021-02-03 19:10:53', '2021-02-03 19:10:53', 'a6507fdd-c742-4508-a295-ca357e7d32da'),
(231, 36, 215, NULL, 9, 2, '2021-02-03 19:10:53', '2021-02-03 19:10:53', 'ab084015-5cd3-4428-8f42-ac84e8169b32'),
(232, 36, 216, NULL, 88, 1, '2021-02-03 19:10:53', '2021-02-03 19:10:53', '9681997d-8c05-43d1-ba16-b761adcd2427'),
(233, 36, 216, NULL, 54, 2, '2021-02-03 19:10:53', '2021-02-03 19:10:53', 'f7c4ecd6-1f73-4a6c-860b-39320fe60539'),
(235, 36, 218, NULL, 54, 1, '2021-02-03 19:11:39', '2021-02-03 19:11:39', '3cd83b1a-92b1-4fa1-a2e5-7c3086cb520c'),
(236, 36, 219, NULL, 119, 1, '2021-02-03 19:11:39', '2021-02-03 19:11:39', '1a1d50c4-fcb0-4e67-8d63-3645fab5ca00'),
(237, 36, 219, NULL, 118, 2, '2021-02-03 19:11:39', '2021-02-03 19:11:39', 'e3e57ca6-a7d3-4c90-a7d2-d42760ac5399'),
(238, 36, 220, NULL, 89, 1, '2021-02-03 19:11:39', '2021-02-03 19:11:39', '306fc5a7-ead6-4750-99be-0492cfdeb8f4'),
(239, 36, 220, NULL, 88, 2, '2021-02-03 19:11:39', '2021-02-03 19:11:39', 'c10faea7-52a4-49d3-8071-f086835dac2e'),
(240, 36, 220, NULL, 87, 3, '2021-02-03 19:11:39', '2021-02-03 19:11:39', '9b6bcb2a-0562-4b1a-8e18-90229f79288c'),
(241, 36, 220, NULL, 86, 4, '2021-02-03 19:11:39', '2021-02-03 19:11:39', 'c725274a-e7c6-4d3a-8c05-caee46f8539c'),
(242, 36, 221, NULL, 119, 1, '2021-02-03 19:11:39', '2021-02-03 19:11:39', '736ff202-2943-4716-91f2-1cdc9253ca5b'),
(243, 36, 221, NULL, 89, 2, '2021-02-03 19:11:39', '2021-02-03 19:11:39', '7fadaf88-7f43-4a4d-a26d-09932f14ad05'),
(244, 36, 222, NULL, 118, 1, '2021-02-03 19:11:39', '2021-02-03 19:11:39', 'c92095fa-4265-4dd7-97e5-82e0e853f35e'),
(245, 36, 222, NULL, 9, 2, '2021-02-03 19:11:39', '2021-02-03 19:11:39', 'f3e9d224-99a8-4944-bbdd-3fb83dab9f8c'),
(246, 36, 223, NULL, 88, 1, '2021-02-03 19:11:39', '2021-02-03 19:11:39', '77c1d534-a874-4bed-beef-1a7f3afad89a'),
(247, 36, 223, NULL, 54, 2, '2021-02-03 19:11:39', '2021-02-03 19:11:39', '226ba4aa-e99c-4303-8e8c-593979c81231'),
(248, 36, 223, NULL, 32, 3, '2021-02-03 19:11:39', '2021-02-03 19:11:39', '252684a6-8857-4548-bb6c-14c4dffb6c52'),
(249, 36, 224, NULL, 120, 1, '2021-02-03 19:15:28', '2021-02-03 19:15:28', '8f4417cb-9238-4812-b0b0-24390c778360'),
(250, 36, 224, NULL, 119, 2, '2021-02-03 19:15:28', '2021-02-03 19:15:28', '0c66fa26-3bbe-4cf0-99b0-51215a785f1d'),
(251, 36, 226, NULL, 54, 1, '2021-02-03 19:15:29', '2021-02-03 19:15:29', '6c684534-4f27-413d-a548-c4550cea07be'),
(252, 36, 227, NULL, 119, 1, '2021-02-03 19:15:29', '2021-02-03 19:15:29', '6cd65499-7b4a-44da-b7b2-c822bf1b4785'),
(253, 36, 227, NULL, 118, 2, '2021-02-03 19:15:29', '2021-02-03 19:15:29', 'cd95b3d9-75e5-435b-ab54-30ecc93f1ac6'),
(254, 36, 228, NULL, 89, 1, '2021-02-03 19:15:29', '2021-02-03 19:15:29', '5bec928d-4284-4614-b738-b37efc8be1d5'),
(255, 36, 228, NULL, 88, 2, '2021-02-03 19:15:29', '2021-02-03 19:15:29', '6eeb5fad-8ea0-49a7-839f-923505b9a6ba'),
(256, 36, 228, NULL, 87, 3, '2021-02-03 19:15:29', '2021-02-03 19:15:29', 'c4c09cbe-9c37-4b03-88c1-b43a800dbcce'),
(257, 36, 228, NULL, 86, 4, '2021-02-03 19:15:29', '2021-02-03 19:15:29', '7de36684-510b-4a54-939e-9d9ab0993ddc'),
(258, 36, 229, NULL, 119, 1, '2021-02-03 19:15:29', '2021-02-03 19:15:29', 'ce5212b1-6562-427a-961e-55673b0d7931'),
(259, 36, 229, NULL, 89, 2, '2021-02-03 19:15:29', '2021-02-03 19:15:29', '1da1f4cd-b037-4926-ba38-3da36a556587'),
(260, 36, 230, NULL, 118, 1, '2021-02-03 19:15:29', '2021-02-03 19:15:29', 'cc323615-0ba7-42ef-b157-73128aacc662'),
(261, 36, 230, NULL, 9, 2, '2021-02-03 19:15:29', '2021-02-03 19:15:29', 'c473749d-563e-47d2-bfd5-20571c39b413'),
(262, 36, 231, NULL, 88, 1, '2021-02-03 19:15:29', '2021-02-03 19:15:29', 'a07ba383-3e41-4e2d-a788-175db990f535'),
(263, 36, 231, NULL, 54, 2, '2021-02-03 19:15:29', '2021-02-03 19:15:29', '32ab3ac0-2258-4812-9e55-76e5ed9e621d'),
(264, 36, 232, NULL, 120, 1, '2021-02-03 19:15:29', '2021-02-03 19:15:29', 'fb0e77d4-5216-44fe-ab32-0e88c861a333'),
(265, 36, 232, NULL, 119, 2, '2021-02-03 19:15:29', '2021-02-03 19:15:29', '14366dcc-27d2-40f6-9584-195797b60254'),
(266, 36, 234, NULL, 54, 1, '2021-02-03 19:49:45', '2021-02-03 19:49:45', 'febb26e8-7fcc-433b-b601-853f13090792'),
(267, 36, 235, NULL, 119, 1, '2021-02-03 19:49:45', '2021-02-03 19:49:45', 'de6e181c-a2e5-4336-ad6f-5a4ea17bf581'),
(268, 36, 235, NULL, 118, 2, '2021-02-03 19:49:45', '2021-02-03 19:49:45', '9bd967a6-c05c-42f8-9bc0-cf23cde7268b'),
(269, 36, 236, NULL, 89, 1, '2021-02-03 19:49:45', '2021-02-03 19:49:45', 'bacabe4f-932a-4999-ae24-f9874eababb5'),
(270, 36, 236, NULL, 88, 2, '2021-02-03 19:49:45', '2021-02-03 19:49:45', '2956ecb5-64ee-4b38-853c-239a6945f3ba'),
(271, 36, 236, NULL, 87, 3, '2021-02-03 19:49:45', '2021-02-03 19:49:45', '158d8ba9-3443-4398-b013-ff46b201b457'),
(272, 36, 236, NULL, 86, 4, '2021-02-03 19:49:45', '2021-02-03 19:49:45', 'ce4cbe4a-dfb7-47cc-96b0-3e23f3158320'),
(273, 36, 237, NULL, 119, 1, '2021-02-03 19:49:45', '2021-02-03 19:49:45', '6f10f028-5213-48fe-8ada-6cda4572a3b6'),
(274, 36, 237, NULL, 89, 2, '2021-02-03 19:49:45', '2021-02-03 19:49:45', '4e610218-a84c-431e-8de6-01ca1c58c129'),
(275, 36, 238, NULL, 118, 1, '2021-02-03 19:49:46', '2021-02-03 19:49:46', '7286413a-52df-4e2a-892b-9c1b25aafca9'),
(276, 36, 238, NULL, 9, 2, '2021-02-03 19:49:46', '2021-02-03 19:49:46', 'c83b9bd0-e3af-4351-b270-c6c358443587'),
(277, 36, 239, NULL, 88, 1, '2021-02-03 19:49:46', '2021-02-03 19:49:46', '1fdbceb2-f41d-4e91-a16e-fc5319cd64f3'),
(278, 36, 239, NULL, 54, 2, '2021-02-03 19:49:46', '2021-02-03 19:49:46', '391072a5-656b-46f1-9a95-ace1132fdef9'),
(279, 36, 240, NULL, 120, 1, '2021-02-03 19:49:46', '2021-02-03 19:49:46', '1e316599-2161-4e03-807d-72d7a952ad81'),
(280, 36, 240, NULL, 119, 2, '2021-02-03 19:49:46', '2021-02-03 19:49:46', '196efbd7-aee7-46fc-8237-173b0312e3ed'),
(281, 36, 242, NULL, 54, 1, '2021-02-03 19:57:19', '2021-02-03 19:57:19', '567da5e1-7cd0-42bd-8a7b-d7ebe641edad'),
(282, 36, 243, NULL, 119, 1, '2021-02-03 19:57:19', '2021-02-03 19:57:19', '9eb83eed-1511-4b2e-80e9-b69911b27440'),
(283, 36, 243, NULL, 118, 2, '2021-02-03 19:57:19', '2021-02-03 19:57:19', 'd4bea5f5-12e2-41fa-8555-aec8a2c54ede'),
(284, 36, 244, NULL, 89, 1, '2021-02-03 19:57:19', '2021-02-03 19:57:19', 'deca407f-554a-4248-8766-68bb4aac72fa'),
(285, 36, 244, NULL, 88, 2, '2021-02-03 19:57:19', '2021-02-03 19:57:19', 'b3a0593a-9ef6-4c47-8ae2-f8095b70f2f4'),
(286, 36, 244, NULL, 87, 3, '2021-02-03 19:57:19', '2021-02-03 19:57:19', '6919ed19-063e-4fec-8ff4-59505fafa543'),
(287, 36, 244, NULL, 86, 4, '2021-02-03 19:57:19', '2021-02-03 19:57:19', 'da78ce92-f186-4973-b47f-a2a6a57be276'),
(288, 36, 245, NULL, 119, 1, '2021-02-03 19:57:19', '2021-02-03 19:57:19', '799e0b6b-bee9-44ae-8bd5-1325a2a5a752'),
(289, 36, 245, NULL, 89, 2, '2021-02-03 19:57:19', '2021-02-03 19:57:19', 'faa6b16f-fcd4-4030-8497-dd5ddc6239d6'),
(290, 36, 246, NULL, 118, 1, '2021-02-03 19:57:19', '2021-02-03 19:57:19', '45414505-07c7-4774-a95a-db3d2aff1894'),
(291, 36, 246, NULL, 9, 2, '2021-02-03 19:57:19', '2021-02-03 19:57:19', '4360ab0c-73ff-48b9-9abe-b3f4cff2eb1f'),
(292, 36, 247, NULL, 88, 1, '2021-02-03 19:57:19', '2021-02-03 19:57:19', '610d2822-cde4-4cd5-89cf-548e29800ce2'),
(293, 36, 247, NULL, 54, 2, '2021-02-03 19:57:19', '2021-02-03 19:57:19', 'e97c31d9-d1ca-4576-b5f2-916bf59dec24'),
(294, 36, 248, NULL, 120, 1, '2021-02-03 19:57:19', '2021-02-03 19:57:19', '8e226d18-d036-4a36-b072-ec1ec9ae7428'),
(295, 36, 248, NULL, 119, 2, '2021-02-03 19:57:19', '2021-02-03 19:57:19', 'efd603b7-2cb7-4d87-b477-8cb2e8dcec67'),
(296, 36, 250, NULL, 54, 1, '2021-02-03 19:57:57', '2021-02-03 19:57:57', '24e90882-cc94-42b2-988d-1d9107e459de'),
(297, 36, 251, NULL, 119, 1, '2021-02-03 19:57:57', '2021-02-03 19:57:57', '4b216add-7a67-4918-808f-052b78c3ee1c'),
(298, 36, 251, NULL, 118, 2, '2021-02-03 19:57:57', '2021-02-03 19:57:57', '2ce07613-0b18-41ba-8a75-479ab9e0186e'),
(299, 36, 252, NULL, 89, 1, '2021-02-03 19:57:57', '2021-02-03 19:57:57', 'a87d0df5-5fee-4092-8b52-8f67bd46ba30'),
(300, 36, 252, NULL, 88, 2, '2021-02-03 19:57:57', '2021-02-03 19:57:57', '52f505b0-ee63-4201-8bd2-4af63a107292'),
(301, 36, 252, NULL, 87, 3, '2021-02-03 19:57:57', '2021-02-03 19:57:57', '6260aec4-4d11-481d-ac83-f251b87f0187'),
(302, 36, 252, NULL, 86, 4, '2021-02-03 19:57:57', '2021-02-03 19:57:57', '37f648b1-b061-4607-a898-54d79d142283'),
(303, 36, 253, NULL, 119, 1, '2021-02-03 19:57:57', '2021-02-03 19:57:57', '1e7c0468-1408-4668-9f78-a0a3d0150e2d'),
(304, 36, 253, NULL, 89, 2, '2021-02-03 19:57:57', '2021-02-03 19:57:57', 'bffdcb37-1d2a-420c-9177-d762b5310f52'),
(305, 36, 254, NULL, 118, 1, '2021-02-03 19:57:57', '2021-02-03 19:57:57', 'dbe7dd48-2e10-4a12-a0fc-b75b130eb857'),
(306, 36, 254, NULL, 9, 2, '2021-02-03 19:57:57', '2021-02-03 19:57:57', 'a77c0145-6757-49fc-b4d9-bf4b04ce68cf'),
(307, 36, 255, NULL, 88, 1, '2021-02-03 19:57:57', '2021-02-03 19:57:57', 'c8ee706e-2cd7-4b28-9631-3f9463515630'),
(308, 36, 255, NULL, 54, 2, '2021-02-03 19:57:57', '2021-02-03 19:57:57', '2e373d7e-7579-484f-87f7-b70a0370af8d'),
(309, 36, 256, NULL, 120, 1, '2021-02-03 19:57:57', '2021-02-03 19:57:57', '112562c9-c1ba-4b1a-bc33-d43b6eae8352'),
(310, 36, 256, NULL, 119, 2, '2021-02-03 19:57:57', '2021-02-03 19:57:57', 'bee7af1e-3e3d-4891-9bb3-ad09046b2b57'),
(311, 36, 259, NULL, 54, 1, '2021-02-03 20:41:48', '2021-02-03 20:41:48', '63aea1d0-75b5-4156-b46a-3b6c54e022e1'),
(312, 36, 260, NULL, 119, 1, '2021-02-03 20:41:48', '2021-02-03 20:41:48', '9494a42a-7323-4755-a8f2-fb31f2204c75'),
(313, 36, 260, NULL, 118, 2, '2021-02-03 20:41:48', '2021-02-03 20:41:48', '16f391f2-bf8e-4c1b-a9ae-7dda26291c7e'),
(314, 36, 261, NULL, 89, 1, '2021-02-03 20:41:48', '2021-02-03 20:41:48', '0ea32be1-57a7-48fa-919d-8ec8ff333965'),
(315, 36, 261, NULL, 88, 2, '2021-02-03 20:41:48', '2021-02-03 20:41:48', '7de21a3f-4306-4b96-af83-80b5b35a9182'),
(316, 36, 261, NULL, 87, 3, '2021-02-03 20:41:48', '2021-02-03 20:41:48', '054fe8cf-e5b4-48ce-be7e-a22ed4dc5364'),
(317, 36, 261, NULL, 86, 4, '2021-02-03 20:41:48', '2021-02-03 20:41:48', '5caec831-d4d4-407d-bde9-d4eff148636b'),
(318, 36, 262, NULL, 119, 1, '2021-02-03 20:41:48', '2021-02-03 20:41:48', '9364a1b1-69f6-4714-b6d0-96ff04cf6a24'),
(319, 36, 262, NULL, 89, 2, '2021-02-03 20:41:48', '2021-02-03 20:41:48', 'c0996c8e-7bff-49cb-8c1b-4884713978c3'),
(320, 36, 263, NULL, 118, 1, '2021-02-03 20:41:48', '2021-02-03 20:41:48', '72532c2f-51ee-4000-ac72-677afb38a2a3'),
(321, 36, 263, NULL, 9, 2, '2021-02-03 20:41:48', '2021-02-03 20:41:48', '8f4e61d1-b82f-476d-bb63-9088ca0d3866'),
(322, 36, 264, NULL, 88, 1, '2021-02-03 20:41:48', '2021-02-03 20:41:48', 'e7df686f-3603-43c8-94b3-6a1ff0437d1e'),
(323, 36, 264, NULL, 54, 2, '2021-02-03 20:41:48', '2021-02-03 20:41:48', 'a095e278-5e64-4748-a932-ae751f86ec85'),
(324, 36, 265, NULL, 120, 1, '2021-02-03 20:41:48', '2021-02-03 20:41:48', '539d0d57-af9f-4d80-9485-149d3fc4d54b'),
(325, 36, 265, NULL, 119, 2, '2021-02-03 20:41:48', '2021-02-03 20:41:48', '2eaded71-62c0-451e-b63a-eb34fb36c851'),
(326, 36, 268, NULL, 54, 1, '2021-02-03 20:42:20', '2021-02-03 20:42:20', '87fab9ef-70be-4c78-abc8-5d946a4c4b8d'),
(327, 36, 269, NULL, 119, 1, '2021-02-03 20:42:20', '2021-02-03 20:42:20', '1085a51d-79d0-4a85-8847-7a9be12d1f9c'),
(328, 36, 269, NULL, 118, 2, '2021-02-03 20:42:20', '2021-02-03 20:42:20', '411ea98e-56b4-41b0-8b99-e0ec51d0de0c'),
(329, 36, 271, NULL, 89, 1, '2021-02-03 20:42:20', '2021-02-03 20:42:20', 'a14b7ca8-720d-410b-9d65-8e06fb6e33ee'),
(330, 36, 271, NULL, 88, 2, '2021-02-03 20:42:20', '2021-02-03 20:42:20', '126f9408-601a-48c2-8164-b6219d3d69ba'),
(331, 36, 271, NULL, 87, 3, '2021-02-03 20:42:20', '2021-02-03 20:42:20', 'c9548373-d08f-46d2-8fff-f147810c6e30'),
(332, 36, 271, NULL, 86, 4, '2021-02-03 20:42:20', '2021-02-03 20:42:20', '792b99d7-ba50-4e21-98eb-252defc3fa38'),
(333, 36, 272, NULL, 119, 1, '2021-02-03 20:42:20', '2021-02-03 20:42:20', '4aa8f814-3b1f-4465-ada0-7d740e01c4c1'),
(334, 36, 272, NULL, 89, 2, '2021-02-03 20:42:20', '2021-02-03 20:42:20', '3b1056b3-16ab-4f71-9fdc-5c36f6ff1efe'),
(335, 36, 274, NULL, 54, 1, '2021-02-03 20:43:23', '2021-02-03 20:43:23', '6a21083c-8f62-486c-ae70-b6b6a6c39fcd'),
(336, 36, 275, NULL, 119, 1, '2021-02-03 20:43:23', '2021-02-03 20:43:23', '39651a8d-fcdb-4a29-a89b-77e75d0c277c'),
(337, 36, 275, NULL, 118, 2, '2021-02-03 20:43:23', '2021-02-03 20:43:23', '088db30a-ffc5-4355-a174-27d7342009a2'),
(338, 36, 277, NULL, 89, 1, '2021-02-03 20:43:23', '2021-02-03 20:43:23', '6bd91d8d-5fbd-47c3-8d8e-93dc3a4d9cfc'),
(339, 36, 277, NULL, 88, 2, '2021-02-03 20:43:23', '2021-02-03 20:43:23', '65f5cba3-9f09-40cd-acf5-083e347a8efd'),
(340, 36, 277, NULL, 87, 3, '2021-02-03 20:43:23', '2021-02-03 20:43:23', 'a764933f-2183-40ba-9146-0b0b63be485c'),
(341, 36, 277, NULL, 86, 4, '2021-02-03 20:43:23', '2021-02-03 20:43:23', '6358d43f-0916-4270-a5a7-91b9fc7066a8'),
(342, 36, 278, NULL, 119, 1, '2021-02-03 20:43:23', '2021-02-03 20:43:23', '45bf5a4f-811e-4b84-87d7-a5b1ae3f2c37'),
(343, 36, 278, NULL, 89, 2, '2021-02-03 20:43:23', '2021-02-03 20:43:23', '2ab290b9-a645-465c-88db-c0e31133c09c'),
(345, 36, 284, NULL, 281, 1, '2021-02-03 21:56:44', '2021-02-03 21:56:44', '7bbb776a-a28b-4ef8-ad54-4694e2d87011'),
(346, 36, 286, NULL, 281, 1, '2021-02-03 21:56:44', '2021-02-03 21:56:44', '9aee3062-3dad-4b1c-a885-10f2155a12b1'),
(347, 36, 288, NULL, 281, 1, '2021-02-04 14:51:36', '2021-02-04 14:51:36', '895f22f4-641f-4aea-87e6-8b5a0cc75e3c'),
(348, 36, 290, NULL, 281, 1, '2021-02-04 15:15:01', '2021-02-04 15:15:01', 'db1059ff-1f48-4911-a98e-5600af6d85b7'),
(349, 45, 283, NULL, 291, 1, '2021-02-04 15:42:40', '2021-02-04 15:42:40', '9ce20a64-0082-442f-892b-e232ee564ae9'),
(350, 45, 292, NULL, 291, 1, '2021-02-04 15:42:40', '2021-02-04 15:42:40', '05311860-c422-42ad-80b5-af5c06e413cf'),
(351, 36, 293, NULL, 281, 1, '2021-02-04 15:42:40', '2021-02-04 15:42:40', '49198648-e04e-47be-97fd-3a7185cf80c1'),
(352, 45, 27, NULL, 291, 1, '2021-02-04 15:42:59', '2021-02-04 15:42:59', '17cdf3cc-41b0-45ea-87a6-3dc9949529f0'),
(353, 45, 294, NULL, 291, 1, '2021-02-04 15:42:59', '2021-02-04 15:42:59', '214a932d-2541-48a5-b731-c3215e92eee4'),
(354, 36, 295, NULL, 54, 1, '2021-02-04 15:42:59', '2021-02-04 15:42:59', '36a2ded8-b374-4947-8482-c28bbc16958b'),
(355, 36, 296, NULL, 119, 1, '2021-02-04 15:42:59', '2021-02-04 15:42:59', '9fe1a20f-a00c-4103-a14e-90890ae6d565'),
(356, 36, 296, NULL, 118, 2, '2021-02-04 15:42:59', '2021-02-04 15:42:59', '379d8d93-bcdf-4f82-8911-1aa1bd8ad616'),
(357, 36, 298, NULL, 89, 1, '2021-02-04 15:42:59', '2021-02-04 15:42:59', '7f428632-2700-49d1-ac1a-47fe58f3a2f2'),
(358, 36, 298, NULL, 88, 2, '2021-02-04 15:42:59', '2021-02-04 15:42:59', '5426be14-952c-4f86-bc22-09b934ebbac4'),
(359, 36, 298, NULL, 87, 3, '2021-02-04 15:42:59', '2021-02-04 15:42:59', 'cfd9da2a-35e2-4208-a396-00576fc50168'),
(360, 36, 298, NULL, 86, 4, '2021-02-04 15:42:59', '2021-02-04 15:42:59', '05e847d0-4d55-432c-8261-9f080c8111e9'),
(361, 36, 299, NULL, 119, 1, '2021-02-04 15:42:59', '2021-02-04 15:42:59', 'bfab9569-dd76-4674-a97c-ebd838211b4a'),
(362, 36, 299, NULL, 89, 2, '2021-02-04 15:42:59', '2021-02-04 15:42:59', '18f14db2-679f-4f34-9fcc-449098c60de6'),
(363, 45, 303, NULL, 291, 1, '2021-02-04 15:45:14', '2021-02-04 15:45:14', 'e1b79005-a17e-4a76-8a35-70fa8592c3d4'),
(364, 36, 305, NULL, 54, 1, '2021-02-04 15:45:14', '2021-02-04 15:45:14', '75eaa380-c6c5-4a37-b6cc-9c1d8f78c579'),
(365, 36, 306, NULL, 119, 1, '2021-02-04 15:45:14', '2021-02-04 15:45:14', '43823f58-6984-4054-92a3-c3c997a6a870'),
(366, 36, 306, NULL, 118, 2, '2021-02-04 15:45:14', '2021-02-04 15:45:14', 'abbc259c-46ac-4137-8e29-9e7b874caeb5'),
(367, 36, 308, NULL, 89, 1, '2021-02-04 15:45:14', '2021-02-04 15:45:14', 'b826356c-ad48-404d-ab7a-54bb84f6dffb'),
(368, 36, 308, NULL, 88, 2, '2021-02-04 15:45:14', '2021-02-04 15:45:14', '25aa3e1f-bfde-4569-9d5a-7ee656700553'),
(369, 36, 308, NULL, 87, 3, '2021-02-04 15:45:14', '2021-02-04 15:45:14', 'f5346d96-7a79-45e1-ad67-9d063825cbfd'),
(370, 36, 308, NULL, 86, 4, '2021-02-04 15:45:14', '2021-02-04 15:45:14', '7fdb1c5c-1e1a-4040-b11f-b9510dd6a9b6'),
(371, 36, 309, NULL, 119, 1, '2021-02-04 15:45:14', '2021-02-04 15:45:14', 'c5924311-8626-45d8-8fda-69691d17d8d2'),
(372, 36, 309, NULL, 89, 2, '2021-02-04 15:45:14', '2021-02-04 15:45:14', 'db5aceb5-3683-4e89-9708-024455165583'),
(373, 45, 310, NULL, 291, 1, '2021-02-04 15:49:23', '2021-02-04 15:49:23', '31cbfa3e-022d-4cf8-ad90-5175e8241e92'),
(374, 36, 312, NULL, 54, 1, '2021-02-04 15:49:23', '2021-02-04 15:49:23', 'c37c9eed-e60a-415b-975d-4030c061e088'),
(375, 36, 313, NULL, 119, 1, '2021-02-04 15:49:23', '2021-02-04 15:49:23', 'c1e4215a-af7c-4fbc-a14c-27d15438434d'),
(376, 36, 313, NULL, 118, 2, '2021-02-04 15:49:23', '2021-02-04 15:49:23', '3b8edee9-caaa-4a05-b5d6-fe66e9c37c02'),
(377, 36, 315, NULL, 89, 1, '2021-02-04 15:49:23', '2021-02-04 15:49:23', 'dfcdbc83-048a-49fe-938d-718e0607d49b'),
(378, 36, 315, NULL, 88, 2, '2021-02-04 15:49:23', '2021-02-04 15:49:23', '78cfc436-9070-4c47-a755-50103a2d5513'),
(379, 36, 315, NULL, 87, 3, '2021-02-04 15:49:23', '2021-02-04 15:49:23', 'e6aac485-dfa2-424b-bb8b-1094abc670a2'),
(380, 36, 315, NULL, 86, 4, '2021-02-04 15:49:23', '2021-02-04 15:49:23', '81f31d7e-c863-4e09-a045-e7687fbe71b7'),
(381, 36, 316, NULL, 119, 1, '2021-02-04 15:49:23', '2021-02-04 15:49:23', 'd443c470-99d6-4541-8733-950cc58c326f'),
(382, 36, 316, NULL, 89, 2, '2021-02-04 15:49:23', '2021-02-04 15:49:23', '413be8ae-a974-4c74-8e3e-47e22bbc434c'),
(385, 45, 321, NULL, 301, 1, '2021-02-04 15:57:13', '2021-02-04 15:57:13', 'd92f9fc7-80b8-4d8e-9d40-ff184e3a5a4d'),
(386, 36, 322, NULL, 319, 1, '2021-02-04 15:57:13', '2021-02-04 15:57:13', '9effc192-3945-43c8-9a87-d2bdb478db4e'),
(387, 45, 323, NULL, 301, 1, '2021-02-04 15:57:13', '2021-02-04 15:57:13', '5bfb92cc-5b85-4c78-ba40-21c5c8aa2e61'),
(388, 36, 324, NULL, 319, 1, '2021-02-04 15:57:13', '2021-02-04 15:57:13', '126dfa60-6f22-4350-be22-ac1a6db0c307'),
(389, 45, 325, NULL, 301, 1, '2021-02-04 16:09:13', '2021-02-04 16:09:13', 'ee73a1f8-8c27-412b-a584-7d741691d42c'),
(390, 36, 326, NULL, 319, 1, '2021-02-04 16:09:13', '2021-02-04 16:09:13', '9dc18e49-5e51-4a3b-8278-911b41527e88'),
(392, 45, 328, NULL, 300, 1, '2021-02-04 16:21:50', '2021-02-04 16:21:50', '4e9cb245-262c-4065-889c-f9cccfa8795d'),
(393, 45, 329, NULL, 300, 1, '2021-02-04 16:21:50', '2021-02-04 16:21:50', '5919f215-e3d1-4568-9897-cbc8be232edf'),
(394, 48, 328, NULL, 14, 1, '2021-02-04 16:39:45', '2021-02-04 16:39:45', 'e6b4301c-9eb2-427a-b485-9916817002d2'),
(395, 45, 330, NULL, 300, 1, '2021-02-04 16:39:45', '2021-02-04 16:39:45', 'a35a6f42-224c-4ad7-8379-90dfc7d20166'),
(396, 48, 330, NULL, 14, 1, '2021-02-04 16:39:45', '2021-02-04 16:39:45', 'd9ebee91-e821-4636-b339-e71170ed1df8'),
(397, 45, 331, NULL, 300, 1, '2021-02-04 16:41:49', '2021-02-04 16:41:49', '6da66ccc-527e-46b8-aeec-94558ebd02b3'),
(398, 48, 331, NULL, 14, 1, '2021-02-04 16:41:49', '2021-02-04 16:41:49', '5a6debf1-d64d-4f24-bea2-1f175e32c750'),
(399, 48, 27, NULL, 332, 1, '2021-02-04 17:31:46', '2021-02-04 17:31:46', '1dc21ac4-29e2-40f6-8323-f3370bfe75ff'),
(400, 45, 333, NULL, 291, 1, '2021-02-04 17:31:46', '2021-02-04 17:31:46', '85e9bc0e-3ae3-4a2d-9f5d-0367f12f9fde'),
(401, 48, 333, NULL, 332, 1, '2021-02-04 17:31:46', '2021-02-04 17:31:46', '67dfe934-3ee2-4ec6-bf93-5995bc3f29db'),
(402, 36, 335, NULL, 54, 1, '2021-02-04 17:31:46', '2021-02-04 17:31:46', '1a6a0e08-7c38-4bc8-ab9a-f492aac0779e'),
(403, 36, 336, NULL, 119, 1, '2021-02-04 17:31:47', '2021-02-04 17:31:47', 'f3452962-96cc-4c93-89e4-8d3b7d2a7f04'),
(404, 36, 336, NULL, 118, 2, '2021-02-04 17:31:47', '2021-02-04 17:31:47', 'f248b018-0952-4f6c-9ac8-f7e833f11ebc'),
(405, 36, 338, NULL, 89, 1, '2021-02-04 17:31:47', '2021-02-04 17:31:47', 'daa5b1b7-0b97-4d55-bd77-05a7f3d159ee'),
(406, 36, 338, NULL, 88, 2, '2021-02-04 17:31:47', '2021-02-04 17:31:47', '397aa73c-a66d-407d-bfcf-3d1522ff5563'),
(407, 36, 338, NULL, 87, 3, '2021-02-04 17:31:47', '2021-02-04 17:31:47', '718bcbca-9528-4b85-b73e-f693db0eafb5'),
(408, 36, 338, NULL, 86, 4, '2021-02-04 17:31:47', '2021-02-04 17:31:47', 'd3d378a2-4127-41c8-96f4-297d4b5ff2a7'),
(409, 36, 339, NULL, 119, 1, '2021-02-04 17:31:47', '2021-02-04 17:31:47', 'be5a5d87-23bb-4844-afbe-6a61a3f485cc'),
(410, 36, 339, NULL, 89, 2, '2021-02-04 17:31:47', '2021-02-04 17:31:47', 'c0307d8d-2f65-45fe-9761-50ad06556842'),
(411, 48, 321, NULL, 340, 1, '2021-02-04 18:23:16', '2021-02-04 18:23:16', 'c58a9567-3810-47d1-8f3a-6a2cd902c1ac'),
(412, 45, 341, NULL, 301, 1, '2021-02-04 18:23:17', '2021-02-04 18:23:17', 'c6b230ac-245f-41a8-907d-168c669be5b7'),
(413, 48, 341, NULL, 340, 1, '2021-02-04 18:23:17', '2021-02-04 18:23:17', 'cb78282b-5a85-4c96-803c-c27b75ae677b'),
(414, 36, 342, NULL, 319, 1, '2021-02-04 18:23:17', '2021-02-04 18:23:17', '207963ee-a90d-413f-a544-0f86a217e9d8'),
(415, 48, 283, NULL, 343, 1, '2021-02-04 18:24:38', '2021-02-04 18:24:38', '54abc84c-0316-4409-9e3e-6e523deda2ec'),
(416, 45, 344, NULL, 291, 1, '2021-02-04 18:24:38', '2021-02-04 18:24:38', 'ba99c5aa-ec57-438f-9f65-cc9b2b5f0c3c'),
(417, 48, 344, NULL, 343, 1, '2021-02-04 18:24:38', '2021-02-04 18:24:38', 'f2494cca-4132-4aeb-92e7-feab22fb4584'),
(418, 36, 345, NULL, 281, 1, '2021-02-04 18:24:38', '2021-02-04 18:24:38', '91726001-4600-44ca-bea4-c6eabcd2bc4a'),
(421, 48, 350, NULL, 340, 1, '2021-02-04 21:46:53', '2021-02-04 21:46:53', 'c345981c-8bb3-49c4-b96b-4587185adf88'),
(422, 36, 351, NULL, 319, 1, '2021-02-04 21:46:53', '2021-02-04 21:46:53', '4b9a4f50-d23e-4ca1-bc62-007eea88a3d5'),
(423, 48, 352, NULL, 340, 1, '2021-02-04 21:46:53', '2021-02-04 21:46:53', '51b8a52c-ca88-48e2-8a3f-fb93707727db'),
(424, 36, 353, NULL, 319, 1, '2021-02-04 21:46:53', '2021-02-04 21:46:53', 'a60e0dd9-5dbc-4c8d-a3a7-8b36b2ae4e8a'),
(426, 48, 355, NULL, 14, 1, '2021-02-04 21:47:53', '2021-02-04 21:47:53', '9cb9d7bb-842b-4cfd-8eff-551e6fa29005'),
(427, 48, 356, NULL, 14, 1, '2021-02-04 21:47:53', '2021-02-04 21:47:53', '02141c4f-982c-4eb5-b125-4c77218cd8e5');

-- --------------------------------------------------------

--
-- Table structure for table `resourcepaths`
--

CREATE TABLE `resourcepaths` (
  `hash` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `resourcepaths`
--

INSERT INTO `resourcepaths` (`hash`, `path`) VALUES
('10ef45b8', '@lib/velocity'),
('160b2c5', '@bower/jquery/dist'),
('221e4cb3', '@craft/awss3/resources'),
('241fb298', '@craft/web/assets/dashboard/dist'),
('2ef01930', '@lib/element-resize-detector'),
('3795363a', '@craft/web/assets/routes/dist'),
('3bd551f4', '@craft/web/assets/matrixsettings/dist'),
('3f18b1eb', '@craft/web/assets/edituser/dist'),
('462133be', '@craft/web/assets/editsection/dist'),
('488eb100', '@app/web/assets/craftsupport/dist'),
('4b97098', '@craft/web/assets/editentry/dist'),
('54919e54', '@lib/axios'),
('56494ffe', '@app/web/assets/updater/dist'),
('5a020035', '@craft/redactor/assets/field/dist'),
('5d5c9453', '@craft/web/assets/feed/dist'),
('5e46de1d', '@lib/jquery-ui'),
('6249a917', '@craft/web/assets/craftsupport/dist'),
('628a67e6', '@craft/redactor/assets/redactor-plugins/dist/fullscreen'),
('64263e76', '@weareferal/remotesync/assets/RemoteSyncUtility/dist'),
('65eb7822', '@app/web/assets/cp/dist'),
('6a4f1eda', '@craft/web/assets/login/dist'),
('78a65faf', '@app/web/assets/recententries/dist'),
('7903ab3', '@app/web/assets/utilities/dist'),
('797a3d21', '@lib/vue'),
('7ed33509', '@app/web/assets/pluginstore/dist'),
('836fae13', '@lib/d3'),
('8569be45', '@craft/web/assets/utilities/dist'),
('88e8b809', '@lib/prismjs'),
('8a6eb280', '@lib/jquery-touch-events'),
('8d431633', '@craft/web/assets/tablesettings/dist'),
('8db26a3c', '@craft/web/assets/matrix/dist'),
('8dca8e42', '@lib/picturefill'),
('95228fbc', '@lib/fileupload'),
('9981b0ab', '@lib/iframe-resizer'),
('99aeb94d', '@app/web/assets/dbbackup/dist'),
('a551a446', '@craft/web/assets/fields/dist'),
('a5946dab', '@lib/fabric'),
('a6e6366e', '@app/web/assets/dashboard/dist'),
('ac7f5c93', '@craft/web/assets/admintable/dist'),
('af264df3', '@remote-core/assets/RemoteCoreSettings/dist'),
('b0d2b995', '@lib/garnishjs'),
('b91bf91f', '@app/web/assets/updates/dist'),
('c106cd6f', '@remote-core/assets/RemoteCoreUtility/dist'),
('c5e55f1e', '@craft/web/assets/updateswidget/dist'),
('c8a67c47', '@craft/web/assets/fieldsettings/dist'),
('cc8ea50', '@lib/jquery.payment'),
('cd5b380f', '@craft/redactor/assets/redactor-plugins/dist/video'),
('cf0e2bac', '@craft/redactor/assets/redactor/dist'),
('d3d8e74c', '@lib/xregexp'),
('d6e0b6f2', '@craft/web/assets/pluginstore/dist'),
('d9b4a3c6', '@lib/selectize'),
('df9b868f', '@craft/web/assets/cp/dist'),
('e42d7b7d', '@app/web/assets/plugins/dist'),
('ec27bf39', '@lib/timepicker'),
('f29c5b2f', '@craft/web/assets/updater/dist'),
('f823f23e', '@app/web/assets/admintable/dist'),
('fb5f1d70', '@craft/web/assets/recententries/dist'),
('fc5d3c79', '@spicyweb/embeddedassets/resources');

-- --------------------------------------------------------

--
-- Table structure for table `revisions`
--

CREATE TABLE `revisions` (
  `id` int(11) NOT NULL,
  `sourceId` int(11) NOT NULL,
  `creatorId` int(11) DEFAULT NULL,
  `num` int(11) NOT NULL,
  `notes` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `revisions`
--

INSERT INTO `revisions` (`id`, `sourceId`, `creatorId`, `num`, `notes`) VALUES
(1, 1, NULL, 1, NULL),
(2, 3, NULL, 1, NULL),
(3, 3, 5, 2, ''),
(4, 10, 5, 1, NULL),
(5, 15, 5, 1, NULL),
(6, 1, 5, 2, ''),
(7, 1, 5, 3, ''),
(8, 1, 5, 4, ''),
(9, 21, 5, 1, NULL),
(10, 21, 5, 2, ''),
(11, 21, 5, 3, ''),
(12, 27, 5, 1, NULL),
(13, 27, 5, 2, ''),
(14, 15, 5, 2, ''),
(15, 10, 5, 2, ''),
(16, 27, 5, 3, ''),
(17, 27, 5, 4, ''),
(18, 27, 5, 5, ''),
(19, 27, 5, 6, ''),
(20, 27, 5, 7, ''),
(21, 27, 5, 8, ''),
(22, 21, 5, 4, ''),
(23, 27, 5, 9, ''),
(24, 27, 5, 10, ''),
(25, 27, 5, 11, ''),
(26, 27, 5, 12, ''),
(27, 27, 5, 13, ''),
(28, 27, 5, 14, ''),
(29, 27, 5, 15, ''),
(30, 27, 5, 16, ''),
(31, 27, 5, 17, ''),
(32, 27, 5, 18, ''),
(33, 27, 5, 19, ''),
(34, 27, 5, 20, ''),
(35, 27, 5, 21, ''),
(36, 27, 5, 22, ''),
(37, 27, 5, 23, ''),
(38, 27, 5, 24, ''),
(39, 27, 5, 25, ''),
(40, 27, 5, 26, ''),
(41, 27, 5, 27, ''),
(42, 27, 5, 28, ''),
(43, 27, 5, 29, ''),
(44, 27, 5, 30, ''),
(45, 27, 5, 31, ''),
(46, 27, 5, 32, ''),
(47, 27, 5, 33, ''),
(48, 27, 5, 34, ''),
(49, 27, 5, 35, ''),
(50, 27, 5, 36, ''),
(51, 27, 5, 37, ''),
(52, 27, 5, 38, ''),
(53, 283, 5, 1, NULL),
(54, 283, 5, 2, ''),
(55, 283, 5, 3, ''),
(56, 283, 5, 4, ''),
(57, 27, 5, 39, ''),
(58, 27, 5, 40, ''),
(59, 27, 5, 41, ''),
(60, 321, 5, 1, NULL),
(61, 321, 5, 2, ''),
(62, 328, 5, 1, NULL),
(63, 328, 5, 2, ''),
(64, 328, 5, 3, ''),
(65, 27, 5, 42, ''),
(66, 321, 5, 3, ''),
(67, 283, 5, 5, ''),
(68, 3, 5, 3, ''),
(69, 350, 5, 1, NULL),
(70, 355, 5, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `searchindex`
--

CREATE TABLE `searchindex` (
  `elementId` int(11) NOT NULL,
  `attribute` varchar(25) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `keywords` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `searchindex`
--

INSERT INTO `searchindex` (`elementId`, `attribute`, `fieldId`, `siteId`, `keywords`) VALUES
(1, 'title', 0, 1, ' home '),
(5, 'username', 0, 1, ' admin '),
(5, 'lastname', 0, 1, ''),
(5, 'firstname', 0, 1, ''),
(3, 'slug', 0, 1, ' contact '),
(8, 'slug', 0, 1, ' vogue '),
(8, 'title', 0, 1, ' vogue '),
(9, 'filename', 0, 1, ' dr clark glaviano 21 jpg '),
(9, 'extension', 0, 1, ' jpg '),
(9, 'kind', 0, 1, ' image '),
(9, 'slug', 0, 1, ''),
(9, 'title', 0, 1, ' dr clark glaviano 21 '),
(10, 'title', 0, 1, ' a first look inside dr clark the new chinatown restaurant with interiors from green river project and uniforms by bode '),
(10, 'slug', 0, 1, ' a first look inside dr clark the new chinatown restaurant with interiors from green river project and uniforms by bode '),
(10, 'field', 4, 1, ' vogue '),
(13, 'slug', 0, 1, ' mic '),
(13, 'title', 0, 1, ' mic '),
(14, 'filename', 0, 1, ' 158b1ca0 d50b 4a3d 8d3f f8840d516167 current jpg '),
(14, 'extension', 0, 1, ' jpg '),
(14, 'kind', 0, 1, ' image '),
(14, 'slug', 0, 1, ''),
(14, 'title', 0, 1, ' 158b1ca0 d50b 4a3d 8d3f f8840d516167 current '),
(15, 'title', 0, 1, ' the danish political drama borgen is a welcome contrast to trumpism '),
(15, 'slug', 0, 1, ' the danish political drama borgen is a welcome contrast to trumpism '),
(5, 'fullname', 0, 1, ''),
(5, 'email', 0, 1, ' wmaxand gmail com '),
(5, 'slug', 0, 1, ''),
(1, 'slug', 0, 1, ' home '),
(21, 'title', 0, 1, ' safe and well '),
(24, 'filename', 0, 1, ' 979747899 1 webp '),
(24, 'extension', 0, 1, ' webp '),
(24, 'kind', 0, 1, ' image '),
(24, 'slug', 0, 1, ''),
(24, 'title', 0, 1, ' 979747899 1 '),
(21, 'slug', 0, 1, ' safe and well '),
(27, 'title', 0, 1, ' codes of culture campaign '),
(30, 'filename', 0, 1, ' fungbrosthumbnail jpg '),
(30, 'extension', 0, 1, ' jpg '),
(30, 'kind', 0, 1, ' image '),
(30, 'slug', 0, 1, ''),
(30, 'title', 0, 1, ' fung bros thumbnail '),
(31, 'filename', 0, 1, ' buddythumbnail jpg '),
(31, 'extension', 0, 1, ' jpg '),
(31, 'kind', 0, 1, ' image '),
(31, 'slug', 0, 1, ''),
(31, 'title', 0, 1, ' buddy thumbnail '),
(32, 'filename', 0, 1, ' bdthumbnail jpg '),
(32, 'extension', 0, 1, ' jpg '),
(32, 'kind', 0, 1, ' image '),
(32, 'slug', 0, 1, ''),
(32, 'title', 0, 1, ' bd thumb nail '),
(33, 'filename', 0, 1, ' laurenthumbnail jpg '),
(33, 'extension', 0, 1, ' jpg '),
(33, 'kind', 0, 1, ' image '),
(33, 'slug', 0, 1, ''),
(33, 'title', 0, 1, ' lauren thumbnail '),
(34, 'slug', 0, 1, ''),
(35, 'slug', 0, 1, ''),
(36, 'slug', 0, 1, ''),
(37, 'slug', 0, 1, ''),
(38, 'slug', 0, 1, ''),
(47, 'slug', 0, 1, ' director '),
(47, 'title', 0, 1, ' director '),
(48, 'slug', 0, 1, ' editorial '),
(48, 'title', 0, 1, ' editorial '),
(49, 'slug', 0, 1, ' agency '),
(49, 'title', 0, 1, ' agency '),
(15, 'field', 4, 1, ' mic '),
(15, 'field', 7, 1, ''),
(10, 'field', 7, 1, ''),
(54, 'filename', 0, 1, ' att lauren halsey 60 json '),
(54, 'extension', 0, 1, ' json '),
(54, 'kind', 0, 1, ' json '),
(54, 'slug', 0, 1, ''),
(54, 'title', 0, 1, ' at t lauren halsey 60 '),
(55, 'slug', 0, 1, ''),
(27, 'slug', 0, 1, ' at t codes of culture campaign '),
(70, 'slug', 0, 1, ''),
(71, 'slug', 0, 1, ''),
(75, 'slug', 0, 1, ''),
(84, 'filename', 0, 1, ' safe and well json '),
(84, 'extension', 0, 1, ' json '),
(84, 'kind', 0, 1, ' json '),
(84, 'slug', 0, 1, ''),
(84, 'title', 0, 1, ' safe and well '),
(86, 'filename', 0, 1, ' buddythumbnail 2021 02 02 210007 jpg '),
(86, 'extension', 0, 1, ' jpg '),
(86, 'kind', 0, 1, ' image '),
(86, 'slug', 0, 1, ''),
(86, 'title', 0, 1, ' buddy thumbnail '),
(87, 'filename', 0, 1, ' bdthumbnail 2021 02 02 210015 jpg '),
(87, 'extension', 0, 1, ' jpg '),
(87, 'kind', 0, 1, ' image '),
(87, 'slug', 0, 1, ''),
(87, 'title', 0, 1, ' bd thumb nail '),
(88, 'filename', 0, 1, ' laurenthumbnail 2021 02 02 210027 jpg '),
(88, 'extension', 0, 1, ' jpg '),
(88, 'kind', 0, 1, ' image '),
(88, 'slug', 0, 1, ''),
(88, 'title', 0, 1, ' lauren thumbnail '),
(89, 'filename', 0, 1, ' fungbrosthumbnail 2021 02 02 210034 jpg '),
(89, 'extension', 0, 1, ' jpg '),
(89, 'kind', 0, 1, ' image '),
(89, 'slug', 0, 1, ''),
(89, 'title', 0, 1, ' fung bros thumbnail '),
(90, 'slug', 0, 1, ''),
(111, 'filename', 0, 1, ' lauren halsey 213 json '),
(111, 'extension', 0, 1, ' json '),
(111, 'kind', 0, 1, ' json '),
(111, 'slug', 0, 1, ''),
(111, 'title', 0, 1, ' lauren halsey 213 '),
(112, 'slug', 0, 1, ''),
(118, 'filename', 0, 1, ' bella dona 323 json '),
(118, 'extension', 0, 1, ' json '),
(118, 'kind', 0, 1, ' json '),
(118, 'slug', 0, 1, ''),
(118, 'title', 0, 1, ' bella dona 323 '),
(119, 'filename', 0, 1, ' fung brothers 626 json '),
(119, 'extension', 0, 1, ' json '),
(119, 'kind', 0, 1, ' json '),
(119, 'slug', 0, 1, ''),
(119, 'title', 0, 1, ' fung brothers 626 '),
(120, 'filename', 0, 1, ' fung brothers on instagram when it comes to conte json '),
(120, 'extension', 0, 1, ' json '),
(120, 'kind', 0, 1, ' json '),
(120, 'slug', 0, 1, ''),
(120, 'title', 0, 1, ' fung brothers on instagram when it comes to '),
(121, 'slug', 0, 1, ''),
(122, 'slug', 0, 1, ''),
(141, 'slug', 0, 1, ''),
(149, 'slug', 0, 1, ''),
(152, 'slug', 0, 1, ''),
(156, 'slug', 0, 1, ''),
(161, 'slug', 0, 1, ''),
(177, 'slug', 0, 1, ''),
(190, 'slug', 0, 1, ''),
(191, 'slug', 0, 1, ''),
(196, 'slug', 0, 1, ''),
(202, 'slug', 0, 1, ''),
(209, 'slug', 0, 1, ''),
(224, 'slug', 0, 1, ''),
(257, 'slug', 0, 1, ''),
(281, 'filename', 0, 1, ' my shoes my way fall 2018 json '),
(281, 'extension', 0, 1, ' json '),
(281, 'kind', 0, 1, ' json '),
(281, 'slug', 0, 1, ''),
(281, 'title', 0, 1, ' my shoes my way fall 2018 '),
(283, 'slug', 0, 1, ' my shoes my way '),
(284, 'slug', 0, 1, ''),
(300, 'slug', 0, 1, ' author '),
(283, 'title', 0, 1, ' my shoes my way '),
(291, 'slug', 0, 1, ' copywriter '),
(291, 'title', 0, 1, ' copywriter '),
(300, 'title', 0, 1, ' author '),
(301, 'slug', 0, 1, ' director '),
(301, 'title', 0, 1, ' director '),
(302, 'slug', 0, 1, ''),
(319, 'filename', 0, 1, ' safe and well 2021 02 04 155626 json '),
(319, 'extension', 0, 1, ' json '),
(319, 'kind', 0, 1, ' json '),
(319, 'slug', 0, 1, ''),
(319, 'title', 0, 1, ' safe and well '),
(321, 'slug', 0, 1, ' safe and well '),
(322, 'slug', 0, 1, ''),
(328, 'title', 0, 1, ' the danish political drama borgen is a welcome contrast to trumpism '),
(328, 'slug', 0, 1, ' the danish political drama borgen is a welcome contrast to trumpism '),
(332, 'filename', 0, 1, ' fc3f7892697313 5e5312d65880a 3 jpg '),
(332, 'extension', 0, 1, ' jpg '),
(332, 'kind', 0, 1, ' image '),
(332, 'slug', 0, 1, ''),
(332, 'title', 0, 1, ' fc3f7892697313 5e5312d65880a 3 '),
(340, 'filename', 0, 1, ' 979747899 copy jpg '),
(340, 'extension', 0, 1, ' jpg '),
(340, 'kind', 0, 1, ' image '),
(340, 'slug', 0, 1, ''),
(340, 'title', 0, 1, ' 979747899 copy '),
(321, 'title', 0, 1, ' safe and well '),
(343, 'filename', 0, 1, ' maxresdefault jpg '),
(343, 'extension', 0, 1, ' jpg '),
(343, 'kind', 0, 1, ' image '),
(343, 'slug', 0, 1, ''),
(343, 'title', 0, 1, ' maxresdefault '),
(3, 'title', 0, 1, ' contact '),
(350, 'slug', 0, 1, ' safe and well '),
(350, 'title', 0, 1, ' safe and well '),
(351, 'slug', 0, 1, ''),
(355, 'slug', 0, 1, ' the danish political drama borgen is a welcome contrast to trumpism '),
(355, 'title', 0, 1, ' the danish political drama borgen is a welcome contrast to trumpism ');

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` int(11) NOT NULL,
  `structureId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `type` enum('single','channel','structure') NOT NULL DEFAULT 'channel',
  `enableVersioning` tinyint(1) NOT NULL DEFAULT '0',
  `propagationMethod` varchar(255) NOT NULL DEFAULT 'all',
  `previewTargets` text,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `structureId`, `name`, `handle`, `type`, `enableVersioning`, `propagationMethod`, `previewTargets`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, NULL, 'Editorial', 'editorial', 'channel', 1, 'all', NULL, '2021-01-30 17:04:53', '2021-02-02 15:28:09', '2021-02-04 18:55:27', 'ddfc7e3f-358e-4ba2-8513-a79d91902712'),
(2, NULL, 'Home', 'home', 'single', 1, 'all', NULL, '2021-01-30 17:04:54', '2021-01-30 17:04:54', NULL, '2fe0a2c0-ae6c-4c9d-bf0a-94ef1dd21ff3'),
(3, NULL, 'Campaigns', 'campaigns', 'channel', 1, 'all', NULL, '2021-01-30 17:04:54', '2021-02-04 21:41:10', NULL, '703b5eed-0225-4060-81f0-38e05ea2dcb9'),
(4, NULL, 'Contact', 'contact', 'single', 1, 'all', NULL, '2021-01-30 17:04:54', '2021-01-30 17:04:54', NULL, 'db1fcc91-ecc4-4349-9e09-6a579c5b9ba1'),
(5, NULL, 'Directing', 'directing', 'channel', 1, 'all', NULL, '2021-02-01 15:45:11', '2021-02-01 15:45:11', '2021-02-04 18:55:23', 'f2eb6d1b-6a16-4f5c-9d97-8e85079ab65a'),
(6, NULL, 'Editorial', 'editorial', 'channel', 1, 'all', NULL, '2021-02-04 21:35:05', '2021-02-04 21:35:05', NULL, 'f3f4a1c9-69f2-4d31-8193-11ca589533da'),
(7, NULL, 'Video', 'video', 'channel', 1, 'all', NULL, '2021-02-04 21:38:25', '2021-02-04 21:38:25', NULL, '5e908aab-5aef-4028-ae8a-159e0800450f');

-- --------------------------------------------------------

--
-- Table structure for table `sections_sites`
--

CREATE TABLE `sections_sites` (
  `id` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `hasUrls` tinyint(1) NOT NULL DEFAULT '1',
  `uriFormat` text,
  `template` varchar(500) DEFAULT NULL,
  `enabledByDefault` tinyint(1) NOT NULL DEFAULT '1',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sections_sites`
--

INSERT INTO `sections_sites` (`id`, `sectionId`, `siteId`, `hasUrls`, `uriFormat`, `template`, `enabledByDefault`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, 1, 1, 'editorial/{slug}', 'editorial/listing', 1, '2021-01-30 17:04:53', '2021-02-02 15:33:18', 'cfc27e55-12db-4558-a739-8aa8901938d0'),
(2, 2, 1, 1, '__home__', NULL, 1, '2021-01-30 17:04:54', '2021-01-30 17:04:54', '8e84aa0a-8549-45a4-a0c0-f6a419b2418b'),
(3, 3, 1, 1, 'campaign/{slug}', 'campaigns/_entry', 1, '2021-01-30 17:04:54', '2021-02-04 21:54:56', 'a6939fa4-b395-41ee-8c54-587cf3858a21'),
(4, 4, 1, 1, 'contact', 'contact', 1, '2021-01-30 17:04:54', '2021-01-30 17:04:54', 'ed3483bc-60f8-4b34-8b77-5f24bfd881e0'),
(5, 5, 1, 1, 'directing/{slug}', 'directing/_entry', 1, '2021-02-01 15:45:11', '2021-02-01 18:07:10', 'd5b2ee0f-d753-486c-a8b1-5de6338f7a1a'),
(6, 6, 1, 1, 'editorial/{slug}', 'editorial/index', 1, '2021-02-04 21:35:05', '2021-02-04 21:37:35', 'e440eaa6-f9bd-4ce2-b83b-434c9ea15816'),
(7, 7, 1, 1, 'video/{slug}', 'video/_entry', 1, '2021-02-04 21:38:25', '2021-02-04 21:38:40', 'ba5bec15-26c7-473f-9fd2-7b76514a7222');

-- --------------------------------------------------------

--
-- Table structure for table `sequences`
--

CREATE TABLE `sequences` (
  `name` varchar(255) NOT NULL,
  `next` int(11) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `token` char(100) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `userId`, `token`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(3, 5, 'WBT2RxtTX_1EEAHp85m6s6RroJ1uSPi0zQV3wuNnp41LsyvXMrwebAdcR2PRhLaON8HVjQqH0LYDq_MihvTDasF0O3UEH9LnqsPs', '2021-02-01 15:12:49', '2021-02-01 15:57:04', 'dabe0469-8ed1-4cf1-b007-616ff8ad62b4'),
(7, 5, 'nSLAAQfUPCIa90YndNWp0ck-XnfwLRNoYXnZ2XpZgahlO4h_5WK58mRAn5JxRbqkjisWhKOCm7xrIbLV_1qW6T6MeOcfwFCCvx58', '2021-02-02 15:27:42', '2021-02-02 16:59:17', '5c34f194-542b-4dca-bfe1-55948c743c50'),
(8, 5, 'Rp5aYFZBhyJN852v3PDoODPOWycwyRN_cOeh71865AR2Do3bRxaxnq9aOpc4cW8d4SkC5kSndCrXWtTYE3QM67oQVnhI5DHEqoOS', '2021-02-02 18:25:44', '2021-02-02 18:55:07', '795c3345-7a88-40f4-b6b0-3e30447b6d23'),
(9, 5, 'dSoE4DwxFm9GJDkbL1WFwmaM9z4Ex6fwKKAblHE3xnGdU9hdllq_9RETVgDldaH_v9gvf0GnLEFTx9QJAwNBT6ZR4FTtPT817pTr', '2021-02-02 19:41:59', '2021-02-02 21:23:26', 'faf9f98a-6d62-42fe-bf70-04e3d6d502e6'),
(11, 5, 'r7crsOT9YGYdEKYLTkrZ4OWjcOuIWI9-11oVJf4Fj0FCc_mcSfncdhsz7Y6wPE9_qkCn75d6nPRW1G2pBzlPyeGZsgwi9Hmb_3Wo', '2021-02-03 15:34:23', '2021-02-03 20:00:32', 'adff9ee2-ff6e-43a8-8936-091b5238ade8'),
(14, 5, 'dOJHCwtHDtdPyk6vjknwBL97xNFN9MnRcarYYtlOtgTiZFavh4PvgnFEMrBms0TiplrgbOtY7i5DdNjBFf92re3n_k7t1w_Rp4RF', '2021-02-04 14:33:20', '2021-02-04 18:57:55', 'e88046dc-f9e9-45cf-a48c-2cf70d1dc817'),
(16, 5, '-eqSsLgnH49bLcx1xc4nzFwtEZgzkrJq01qGM1NFwRpT5zhb_T66pqTLISWVcXNWtwX9qP0sh39oYt9lhmGfPujmKCDy6gx6v4VP', '2021-02-04 20:26:08', '2021-02-04 22:08:00', '444745c3-424b-41d9-81e9-ffce6560b8e1');

-- --------------------------------------------------------

--
-- Table structure for table `shunnedmessages`
--

CREATE TABLE `shunnedmessages` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `message` varchar(255) NOT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sitegroups`
--

CREATE TABLE `sitegroups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sitegroups`
--

INSERT INTO `sitegroups` (`id`, `name`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 'CraftMamp', '2021-01-30 17:04:52', '2021-01-30 17:04:52', NULL, '6365b6b2-7fc7-4dc0-8e2c-da399c122e92');

-- --------------------------------------------------------

--
-- Table structure for table `sites`
--

CREATE TABLE `sites` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `primary` tinyint(1) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `language` varchar(12) NOT NULL,
  `hasUrls` tinyint(1) NOT NULL DEFAULT '0',
  `baseUrl` varchar(255) DEFAULT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sites`
--

INSERT INTO `sites` (`id`, `groupId`, `primary`, `enabled`, `name`, `handle`, `language`, `hasUrls`, `baseUrl`, `sortOrder`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 1, 1, 1, 'Nora Deligter', 'default', 'en-US', 1, '$PRIMARY_SITE_URL', 1, '2021-01-30 17:04:52', '2021-01-30 17:04:52', NULL, '9e92814a-721a-4b15-ad0e-5862784c6bd0');

-- --------------------------------------------------------

--
-- Table structure for table `structureelements`
--

CREATE TABLE `structureelements` (
  `id` int(11) NOT NULL,
  `structureId` int(11) NOT NULL,
  `elementId` int(11) DEFAULT NULL,
  `root` int(11) UNSIGNED DEFAULT NULL,
  `lft` int(11) UNSIGNED NOT NULL,
  `rgt` int(11) UNSIGNED NOT NULL,
  `level` smallint(6) UNSIGNED NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `structureelements`
--

INSERT INTO `structureelements` (`id`, `structureId`, `elementId`, `root`, `lft`, `rgt`, `level`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 1, NULL, 1, 1, 2, 0, '2021-01-31 19:24:44', '2021-02-02 15:34:28', '618e8940-43e6-4c6e-91ad-d327853db865'),
(2, 2, NULL, 2, 1, 8, 0, '2021-02-04 15:42:35', '2021-02-04 15:43:20', 'd4b13e3c-d695-4dfa-8dde-1a9c7cf4df34'),
(3, 2, 291, 2, 2, 3, 1, '2021-02-04 15:42:35', '2021-02-04 15:42:35', '1a1c5f4c-6923-44a1-ac22-15f0abd7a61a'),
(4, 2, 300, 2, 4, 5, 1, '2021-02-04 15:43:11', '2021-02-04 15:43:11', '2ac18eb7-c170-4de6-81f3-a09f32bb5246'),
(5, 2, 301, 2, 6, 7, 1, '2021-02-04 15:43:20', '2021-02-04 15:43:20', '7ecac1f4-4cd4-4eac-a19f-97270701d253');

-- --------------------------------------------------------

--
-- Table structure for table `structures`
--

CREATE TABLE `structures` (
  `id` int(11) NOT NULL,
  `maxLevels` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `structures`
--

INSERT INTO `structures` (`id`, `maxLevels`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 1, '2021-01-30 17:04:53', '2021-01-30 17:04:53', '2021-02-02 15:34:28', '2de35f56-104b-41c8-86e5-7d914e6bb469'),
(2, 1, '2021-02-04 15:39:59', '2021-02-04 21:22:07', NULL, 'c8d6ce19-2bbf-43da-b49a-8cfe4c4d6c82');

-- --------------------------------------------------------

--
-- Table structure for table `systemmessages`
--

CREATE TABLE `systemmessages` (
  `id` int(11) NOT NULL,
  `language` varchar(255) NOT NULL,
  `key` varchar(255) NOT NULL,
  `subject` text NOT NULL,
  `body` text NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `taggroups`
--

CREATE TABLE `taggroups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `deletedWithGroup` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `templatecacheelements`
--

CREATE TABLE `templatecacheelements` (
  `id` int(11) NOT NULL,
  `cacheId` int(11) NOT NULL,
  `elementId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `templatecachequeries`
--

CREATE TABLE `templatecachequeries` (
  `id` int(11) NOT NULL,
  `cacheId` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `query` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `templatecaches`
--

CREATE TABLE `templatecaches` (
  `id` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `cacheKey` varchar(255) NOT NULL,
  `path` varchar(255) DEFAULT NULL,
  `expiryDate` datetime NOT NULL,
  `body` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tokens`
--

CREATE TABLE `tokens` (
  `id` int(11) NOT NULL,
  `token` char(32) NOT NULL,
  `route` text,
  `usageLimit` tinyint(3) UNSIGNED DEFAULT NULL,
  `usageCount` tinyint(3) UNSIGNED DEFAULT NULL,
  `expiryDate` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `usergroups`
--

CREATE TABLE `usergroups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `description` text,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `usergroups_users`
--

CREATE TABLE `usergroups_users` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `userpermissions`
--

CREATE TABLE `userpermissions` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `userpermissions_usergroups`
--

CREATE TABLE `userpermissions_usergroups` (
  `id` int(11) NOT NULL,
  `permissionId` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `userpermissions_users`
--

CREATE TABLE `userpermissions_users` (
  `id` int(11) NOT NULL,
  `permissionId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `userpreferences`
--

CREATE TABLE `userpreferences` (
  `userId` int(11) NOT NULL,
  `preferences` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `userpreferences`
--

INSERT INTO `userpreferences` (`userId`, `preferences`) VALUES
(5, '{\"language\":\"en-US\",\"locale\":null,\"weekStartDay\":\"1\",\"useShapes\":false,\"underlineLinks\":false,\"showFieldHandles\":false,\"enableDebugToolbarForSite\":false,\"enableDebugToolbarForCp\":false,\"showExceptionView\":false,\"profileTemplates\":false}');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `photoId` int(11) DEFAULT NULL,
  `firstName` varchar(100) DEFAULT NULL,
  `lastName` varchar(100) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `suspended` tinyint(1) NOT NULL DEFAULT '0',
  `pending` tinyint(1) NOT NULL DEFAULT '0',
  `lastLoginDate` datetime DEFAULT NULL,
  `lastLoginAttemptIp` varchar(45) DEFAULT NULL,
  `invalidLoginWindowStart` datetime DEFAULT NULL,
  `invalidLoginCount` tinyint(3) UNSIGNED DEFAULT NULL,
  `lastInvalidLoginDate` datetime DEFAULT NULL,
  `lockoutDate` datetime DEFAULT NULL,
  `hasDashboard` tinyint(1) NOT NULL DEFAULT '0',
  `verificationCode` varchar(255) DEFAULT NULL,
  `verificationCodeIssuedDate` datetime DEFAULT NULL,
  `unverifiedEmail` varchar(255) DEFAULT NULL,
  `passwordResetRequired` tinyint(1) NOT NULL DEFAULT '0',
  `lastPasswordChangeDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `photoId`, `firstName`, `lastName`, `email`, `password`, `admin`, `locked`, `suspended`, `pending`, `lastLoginDate`, `lastLoginAttemptIp`, `invalidLoginWindowStart`, `invalidLoginCount`, `lastInvalidLoginDate`, `lockoutDate`, `hasDashboard`, `verificationCode`, `verificationCodeIssuedDate`, `unverifiedEmail`, `passwordResetRequired`, `lastPasswordChangeDate`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(5, 'admin', NULL, '', '', 'wmaxand@gmail.com', '$2y$13$eQpAUFyM4KFt5D0MWx8QQ.Nk9qrUq9xBjMgliCAn2sajHWVmZABFC', 1, 0, 0, 0, '2021-02-04 22:49:52', NULL, NULL, NULL, '2021-02-01 17:42:50', NULL, 1, NULL, NULL, NULL, 0, '2021-02-01 15:12:49', '2021-01-30 17:05:00', '2021-02-04 22:49:52', '54d981a0-566d-4c15-8871-43071631bae5');

-- --------------------------------------------------------

--
-- Table structure for table `volumefolders`
--

CREATE TABLE `volumefolders` (
  `id` int(11) NOT NULL,
  `parentId` int(11) DEFAULT NULL,
  `volumeId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `path` varchar(255) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `volumefolders`
--

INSERT INTO `volumefolders` (`id`, `parentId`, `volumeId`, `name`, `path`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, NULL, 1, 'General', '', '2021-01-30 17:04:53', '2021-01-30 17:04:53', '363de0c1-8403-4172-aa02-f392ce358629'),
(2, NULL, 2, 'Brand', '', '2021-01-30 17:04:53', '2021-01-30 17:04:53', '764131d3-f685-41cc-92ab-54b7433d20d0'),
(3, NULL, 3, 'Editorial', '', '2021-01-30 17:04:53', '2021-01-30 17:04:53', 'fa636cf6-9ae3-43b3-a257-b3e743c63ad3'),
(4, NULL, NULL, 'Temporary source', NULL, '2021-01-31 19:26:44', '2021-01-31 19:26:44', '6d7872fa-de10-4693-99ad-ad6740062cd9'),
(5, 4, NULL, 'user_5', 'user_5/', '2021-01-31 19:26:44', '2021-01-31 19:26:44', 'c55e6a06-034d-445d-aafc-638b9fd7a794');

-- --------------------------------------------------------

--
-- Table structure for table `volumes`
--

CREATE TABLE `volumes` (
  `id` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `hasUrls` tinyint(1) NOT NULL DEFAULT '1',
  `url` varchar(255) DEFAULT NULL,
  `settings` text,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `volumes`
--

INSERT INTO `volumes` (`id`, `fieldLayoutId`, `name`, `handle`, `type`, `hasUrls`, `url`, `settings`, `sortOrder`, `dateCreated`, `dateUpdated`, `dateDeleted`, `uid`) VALUES
(1, 1, 'General', 'general', 'craft\\volumes\\Local', 1, '@web/assets/general', '{\"path\":\"@webroot/assets/general\"}', 2, '2021-01-30 17:04:53', '2021-01-30 17:04:53', NULL, '7c10fe48-df6f-43c9-b993-ad9897a2ac8f'),
(2, 2, 'Brand', 'brand', 'craft\\volumes\\Local', 0, NULL, '{\"path\":\"@webroot/assets/brand\"}', 3, '2021-01-30 17:04:53', '2021-01-30 17:04:53', NULL, '5c928ce6-eb9c-4f91-a1e1-ae3e535cf8e7'),
(3, 3, 'Editorial', 'editorial', 'craft\\volumes\\Local', 1, '@web/assets/editorial', '{\"path\":\"@webroot/assets/editorial\"}', 1, '2021-01-30 17:04:53', '2021-01-30 17:04:53', NULL, '8182eadf-ef29-4df4-b0b7-ff9afd8a6d8a');

-- --------------------------------------------------------

--
-- Table structure for table `widgets`
--

CREATE TABLE `widgets` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `sortOrder` smallint(6) UNSIGNED DEFAULT NULL,
  `colspan` tinyint(3) DEFAULT NULL,
  `settings` text,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `widgets`
--

INSERT INTO `widgets` (`id`, `userId`, `type`, `sortOrder`, `colspan`, `settings`, `enabled`, `dateCreated`, `dateUpdated`, `uid`) VALUES
(1, 5, 'craft\\widgets\\RecentEntries', 1, NULL, '{\"siteId\":1,\"section\":\"*\",\"limit\":10}', 1, '2021-01-30 17:05:03', '2021-01-30 17:05:03', 'ddac4d44-3cd5-4e9f-9e46-5f5fdfd807ea'),
(2, 5, 'craft\\widgets\\CraftSupport', 2, NULL, '[]', 1, '2021-01-30 17:05:03', '2021-01-30 17:05:03', 'f4eacc17-02a7-4005-862d-13655452ae78'),
(3, 5, 'craft\\widgets\\Updates', 3, NULL, '[]', 1, '2021-01-30 17:05:03', '2021-01-30 17:05:03', '02ef4268-7fe6-4e76-bf95-c3fb1e9a6243'),
(4, 5, 'craft\\widgets\\Feed', 4, NULL, '{\"url\":\"https://craftcms.com/news.rss\",\"title\":\"Craft News\",\"limit\":5}', 1, '2021-01-30 17:05:03', '2021-01-30 17:05:03', '0026259d-293f-45e8-b21d-33e6319aa9fc');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assetindexdata`
--
ALTER TABLE `assetindexdata`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assetindexdata_sessionId_volumeId_idx` (`sessionId`,`volumeId`),
  ADD KEY `assetindexdata_volumeId_idx` (`volumeId`);

--
-- Indexes for table `assets`
--
ALTER TABLE `assets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assets_filename_folderId_idx` (`filename`,`folderId`),
  ADD KEY `assets_folderId_idx` (`folderId`),
  ADD KEY `assets_volumeId_idx` (`volumeId`),
  ADD KEY `assets_uploaderId_fk` (`uploaderId`);

--
-- Indexes for table `assettransformindex`
--
ALTER TABLE `assettransformindex`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assettransformindex_volumeId_assetId_location_idx` (`volumeId`,`assetId`,`location`);

--
-- Indexes for table `assettransforms`
--
ALTER TABLE `assettransforms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assettransforms_name_idx` (`name`),
  ADD KEY `assettransforms_handle_idx` (`handle`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_groupId_idx` (`groupId`),
  ADD KEY `categories_parentId_fk` (`parentId`);

--
-- Indexes for table `categorygroups`
--
ALTER TABLE `categorygroups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categorygroups_name_idx` (`name`),
  ADD KEY `categorygroups_handle_idx` (`handle`),
  ADD KEY `categorygroups_structureId_idx` (`structureId`),
  ADD KEY `categorygroups_fieldLayoutId_idx` (`fieldLayoutId`),
  ADD KEY `categorygroups_dateDeleted_idx` (`dateDeleted`);

--
-- Indexes for table `categorygroups_sites`
--
ALTER TABLE `categorygroups_sites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categorygroups_sites_groupId_siteId_unq_idx` (`groupId`,`siteId`),
  ADD KEY `categorygroups_sites_siteId_idx` (`siteId`);

--
-- Indexes for table `changedattributes`
--
ALTER TABLE `changedattributes`
  ADD PRIMARY KEY (`elementId`,`siteId`,`attribute`),
  ADD KEY `changedattributes_elementId_siteId_dateUpdated_idx` (`elementId`,`siteId`,`dateUpdated`),
  ADD KEY `changedattributes_siteId_fk` (`siteId`),
  ADD KEY `changedattributes_userId_fk` (`userId`);

--
-- Indexes for table `changedfields`
--
ALTER TABLE `changedfields`
  ADD PRIMARY KEY (`elementId`,`siteId`,`fieldId`),
  ADD KEY `changedfields_elementId_siteId_dateUpdated_idx` (`elementId`,`siteId`,`dateUpdated`),
  ADD KEY `changedfields_siteId_fk` (`siteId`),
  ADD KEY `changedfields_fieldId_fk` (`fieldId`),
  ADD KEY `changedfields_userId_fk` (`userId`);

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `content_elementId_siteId_unq_idx` (`elementId`,`siteId`),
  ADD KEY `content_siteId_idx` (`siteId`),
  ADD KEY `content_title_idx` (`title`);

--
-- Indexes for table `craftidtokens`
--
ALTER TABLE `craftidtokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `craftidtokens_userId_fk` (`userId`);

--
-- Indexes for table `deprecationerrors`
--
ALTER TABLE `deprecationerrors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `deprecationerrors_key_fingerprint_unq_idx` (`key`,`fingerprint`);

--
-- Indexes for table `drafts`
--
ALTER TABLE `drafts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `drafts_creatorId_fk` (`creatorId`),
  ADD KEY `drafts_sourceId_fk` (`sourceId`);

--
-- Indexes for table `elementindexsettings`
--
ALTER TABLE `elementindexsettings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `elementindexsettings_type_unq_idx` (`type`);

--
-- Indexes for table `elements`
--
ALTER TABLE `elements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `elements_dateDeleted_idx` (`dateDeleted`),
  ADD KEY `elements_fieldLayoutId_idx` (`fieldLayoutId`),
  ADD KEY `elements_type_idx` (`type`),
  ADD KEY `elements_enabled_idx` (`enabled`),
  ADD KEY `elements_archived_dateCreated_idx` (`archived`,`dateCreated`),
  ADD KEY `elements_archived_dateDeleted_draftId_revisionId_idx` (`archived`,`dateDeleted`,`draftId`,`revisionId`),
  ADD KEY `elements_draftId_fk` (`draftId`),
  ADD KEY `elements_revisionId_fk` (`revisionId`);

--
-- Indexes for table `elements_sites`
--
ALTER TABLE `elements_sites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `elements_sites_elementId_siteId_unq_idx` (`elementId`,`siteId`),
  ADD KEY `elements_sites_siteId_idx` (`siteId`),
  ADD KEY `elements_sites_slug_siteId_idx` (`slug`,`siteId`),
  ADD KEY `elements_sites_enabled_idx` (`enabled`),
  ADD KEY `elements_sites_uri_siteId_idx` (`uri`,`siteId`);

--
-- Indexes for table `entries`
--
ALTER TABLE `entries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entries_postDate_idx` (`postDate`),
  ADD KEY `entries_expiryDate_idx` (`expiryDate`),
  ADD KEY `entries_authorId_idx` (`authorId`),
  ADD KEY `entries_sectionId_idx` (`sectionId`),
  ADD KEY `entries_typeId_idx` (`typeId`),
  ADD KEY `entries_parentId_fk` (`parentId`);

--
-- Indexes for table `entrytypes`
--
ALTER TABLE `entrytypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entrytypes_name_sectionId_idx` (`name`,`sectionId`),
  ADD KEY `entrytypes_handle_sectionId_idx` (`handle`,`sectionId`),
  ADD KEY `entrytypes_sectionId_idx` (`sectionId`),
  ADD KEY `entrytypes_fieldLayoutId_idx` (`fieldLayoutId`),
  ADD KEY `entrytypes_dateDeleted_idx` (`dateDeleted`);

--
-- Indexes for table `fieldgroups`
--
ALTER TABLE `fieldgroups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fieldgroups_name_idx` (`name`);

--
-- Indexes for table `fieldlayoutfields`
--
ALTER TABLE `fieldlayoutfields`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `fieldlayoutfields_layoutId_fieldId_unq_idx` (`layoutId`,`fieldId`),
  ADD KEY `fieldlayoutfields_sortOrder_idx` (`sortOrder`),
  ADD KEY `fieldlayoutfields_tabId_idx` (`tabId`),
  ADD KEY `fieldlayoutfields_fieldId_idx` (`fieldId`);

--
-- Indexes for table `fieldlayouts`
--
ALTER TABLE `fieldlayouts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fieldlayouts_dateDeleted_idx` (`dateDeleted`),
  ADD KEY `fieldlayouts_type_idx` (`type`);

--
-- Indexes for table `fieldlayouttabs`
--
ALTER TABLE `fieldlayouttabs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fieldlayouttabs_sortOrder_idx` (`sortOrder`),
  ADD KEY `fieldlayouttabs_layoutId_idx` (`layoutId`);

--
-- Indexes for table `fields`
--
ALTER TABLE `fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fields_handle_context_idx` (`handle`,`context`),
  ADD KEY `fields_groupId_idx` (`groupId`),
  ADD KEY `fields_context_idx` (`context`);

--
-- Indexes for table `globalsets`
--
ALTER TABLE `globalsets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `globalsets_name_idx` (`name`),
  ADD KEY `globalsets_handle_idx` (`handle`),
  ADD KEY `globalsets_fieldLayoutId_idx` (`fieldLayoutId`);

--
-- Indexes for table `gqlschemas`
--
ALTER TABLE `gqlschemas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gqltokens`
--
ALTER TABLE `gqltokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `gqltokens_accessToken_unq_idx` (`accessToken`),
  ADD UNIQUE KEY `gqltokens_name_unq_idx` (`name`),
  ADD KEY `gqltokens_schemaId_fk` (`schemaId`);

--
-- Indexes for table `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `matrixblocks`
--
ALTER TABLE `matrixblocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `matrixblocks_ownerId_idx` (`ownerId`),
  ADD KEY `matrixblocks_fieldId_idx` (`fieldId`),
  ADD KEY `matrixblocks_typeId_idx` (`typeId`),
  ADD KEY `matrixblocks_sortOrder_idx` (`sortOrder`);

--
-- Indexes for table `matrixblocktypes`
--
ALTER TABLE `matrixblocktypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `matrixblocktypes_name_fieldId_idx` (`name`,`fieldId`),
  ADD KEY `matrixblocktypes_handle_fieldId_idx` (`handle`,`fieldId`),
  ADD KEY `matrixblocktypes_fieldId_idx` (`fieldId`),
  ADD KEY `matrixblocktypes_fieldLayoutId_idx` (`fieldLayoutId`);

--
-- Indexes for table `matrixcontent_sections`
--
ALTER TABLE `matrixcontent_sections`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `matrixcontent_sections_elementId_siteId_unq_idx` (`elementId`,`siteId`),
  ADD KEY `matrixcontent_sections_siteId_idx` (`siteId`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `migrations_track_name_unq_idx` (`track`,`name`);

--
-- Indexes for table `plugins`
--
ALTER TABLE `plugins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `plugins_handle_unq_idx` (`handle`);

--
-- Indexes for table `projectconfig`
--
ALTER TABLE `projectconfig`
  ADD PRIMARY KEY (`path`);

--
-- Indexes for table `queue`
--
ALTER TABLE `queue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `queue_channel_fail_timeUpdated_timePushed_idx` (`channel`,`fail`,`timeUpdated`,`timePushed`),
  ADD KEY `queue_channel_fail_timeUpdated_delay_idx` (`channel`,`fail`,`timeUpdated`,`delay`);

--
-- Indexes for table `relations`
--
ALTER TABLE `relations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `relations_fieldId_sourceId_sourceSiteId_targetId_unq_idx` (`fieldId`,`sourceId`,`sourceSiteId`,`targetId`),
  ADD KEY `relations_sourceId_idx` (`sourceId`),
  ADD KEY `relations_targetId_idx` (`targetId`),
  ADD KEY `relations_sourceSiteId_idx` (`sourceSiteId`);

--
-- Indexes for table `resourcepaths`
--
ALTER TABLE `resourcepaths`
  ADD PRIMARY KEY (`hash`);

--
-- Indexes for table `revisions`
--
ALTER TABLE `revisions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `revisions_sourceId_num_unq_idx` (`sourceId`,`num`),
  ADD KEY `revisions_creatorId_fk` (`creatorId`);

--
-- Indexes for table `searchindex`
--
ALTER TABLE `searchindex`
  ADD PRIMARY KEY (`elementId`,`attribute`,`fieldId`,`siteId`);
ALTER TABLE `searchindex` ADD FULLTEXT KEY `searchindex_keywords_idx` (`keywords`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sections_handle_idx` (`handle`),
  ADD KEY `sections_name_idx` (`name`),
  ADD KEY `sections_structureId_idx` (`structureId`),
  ADD KEY `sections_dateDeleted_idx` (`dateDeleted`);

--
-- Indexes for table `sections_sites`
--
ALTER TABLE `sections_sites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sections_sites_sectionId_siteId_unq_idx` (`sectionId`,`siteId`),
  ADD KEY `sections_sites_siteId_idx` (`siteId`);

--
-- Indexes for table `sequences`
--
ALTER TABLE `sequences`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_uid_idx` (`uid`),
  ADD KEY `sessions_token_idx` (`token`),
  ADD KEY `sessions_dateUpdated_idx` (`dateUpdated`),
  ADD KEY `sessions_userId_idx` (`userId`);

--
-- Indexes for table `shunnedmessages`
--
ALTER TABLE `shunnedmessages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `shunnedmessages_userId_message_unq_idx` (`userId`,`message`);

--
-- Indexes for table `sitegroups`
--
ALTER TABLE `sitegroups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sitegroups_name_idx` (`name`);

--
-- Indexes for table `sites`
--
ALTER TABLE `sites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sites_dateDeleted_idx` (`dateDeleted`),
  ADD KEY `sites_handle_idx` (`handle`),
  ADD KEY `sites_sortOrder_idx` (`sortOrder`),
  ADD KEY `sites_groupId_fk` (`groupId`);

--
-- Indexes for table `structureelements`
--
ALTER TABLE `structureelements`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `structureelements_structureId_elementId_unq_idx` (`structureId`,`elementId`),
  ADD KEY `structureelements_root_idx` (`root`),
  ADD KEY `structureelements_lft_idx` (`lft`),
  ADD KEY `structureelements_rgt_idx` (`rgt`),
  ADD KEY `structureelements_level_idx` (`level`),
  ADD KEY `structureelements_elementId_idx` (`elementId`);

--
-- Indexes for table `structures`
--
ALTER TABLE `structures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `structures_dateDeleted_idx` (`dateDeleted`);

--
-- Indexes for table `systemmessages`
--
ALTER TABLE `systemmessages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `systemmessages_key_language_unq_idx` (`key`,`language`),
  ADD KEY `systemmessages_language_idx` (`language`);

--
-- Indexes for table `taggroups`
--
ALTER TABLE `taggroups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `taggroups_name_idx` (`name`),
  ADD KEY `taggroups_handle_idx` (`handle`),
  ADD KEY `taggroups_dateDeleted_idx` (`dateDeleted`),
  ADD KEY `taggroups_fieldLayoutId_fk` (`fieldLayoutId`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tags_groupId_idx` (`groupId`);

--
-- Indexes for table `templatecacheelements`
--
ALTER TABLE `templatecacheelements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `templatecacheelements_cacheId_idx` (`cacheId`),
  ADD KEY `templatecacheelements_elementId_idx` (`elementId`);

--
-- Indexes for table `templatecachequeries`
--
ALTER TABLE `templatecachequeries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `templatecachequeries_cacheId_idx` (`cacheId`),
  ADD KEY `templatecachequeries_type_idx` (`type`);

--
-- Indexes for table `templatecaches`
--
ALTER TABLE `templatecaches`
  ADD PRIMARY KEY (`id`),
  ADD KEY `templatecaches_cacheKey_siteId_expiryDate_path_idx` (`cacheKey`,`siteId`,`expiryDate`,`path`),
  ADD KEY `templatecaches_cacheKey_siteId_expiryDate_idx` (`cacheKey`,`siteId`,`expiryDate`),
  ADD KEY `templatecaches_siteId_idx` (`siteId`);

--
-- Indexes for table `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tokens_token_unq_idx` (`token`),
  ADD KEY `tokens_expiryDate_idx` (`expiryDate`);

--
-- Indexes for table `usergroups`
--
ALTER TABLE `usergroups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usergroups_handle_idx` (`handle`),
  ADD KEY `usergroups_name_idx` (`name`);

--
-- Indexes for table `usergroups_users`
--
ALTER TABLE `usergroups_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usergroups_users_groupId_userId_unq_idx` (`groupId`,`userId`),
  ADD KEY `usergroups_users_userId_idx` (`userId`);

--
-- Indexes for table `userpermissions`
--
ALTER TABLE `userpermissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `userpermissions_name_unq_idx` (`name`);

--
-- Indexes for table `userpermissions_usergroups`
--
ALTER TABLE `userpermissions_usergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `userpermissions_usergroups_permissionId_groupId_unq_idx` (`permissionId`,`groupId`),
  ADD KEY `userpermissions_usergroups_groupId_idx` (`groupId`);

--
-- Indexes for table `userpermissions_users`
--
ALTER TABLE `userpermissions_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `userpermissions_users_permissionId_userId_unq_idx` (`permissionId`,`userId`),
  ADD KEY `userpermissions_users_userId_idx` (`userId`);

--
-- Indexes for table `userpreferences`
--
ALTER TABLE `userpreferences`
  ADD PRIMARY KEY (`userId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_uid_idx` (`uid`),
  ADD KEY `users_verificationCode_idx` (`verificationCode`),
  ADD KEY `users_email_idx` (`email`),
  ADD KEY `users_username_idx` (`username`),
  ADD KEY `users_photoId_fk` (`photoId`);

--
-- Indexes for table `volumefolders`
--
ALTER TABLE `volumefolders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `volumefolders_name_parentId_volumeId_unq_idx` (`name`,`parentId`,`volumeId`),
  ADD KEY `volumefolders_parentId_idx` (`parentId`),
  ADD KEY `volumefolders_volumeId_idx` (`volumeId`);

--
-- Indexes for table `volumes`
--
ALTER TABLE `volumes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `volumes_name_idx` (`name`),
  ADD KEY `volumes_handle_idx` (`handle`),
  ADD KEY `volumes_fieldLayoutId_idx` (`fieldLayoutId`),
  ADD KEY `volumes_dateDeleted_idx` (`dateDeleted`);

--
-- Indexes for table `widgets`
--
ALTER TABLE `widgets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `widgets_userId_idx` (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assetindexdata`
--
ALTER TABLE `assetindexdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assettransformindex`
--
ALTER TABLE `assettransformindex`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assettransforms`
--
ALTER TABLE `assettransforms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categorygroups`
--
ALTER TABLE `categorygroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categorygroups_sites`
--
ALTER TABLE `categorygroups_sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `craftidtokens`
--
ALTER TABLE `craftidtokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deprecationerrors`
--
ALTER TABLE `deprecationerrors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=598;

--
-- AUTO_INCREMENT for table `drafts`
--
ALTER TABLE `drafts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `elementindexsettings`
--
ALTER TABLE `elementindexsettings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `elements`
--
ALTER TABLE `elements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=358;

--
-- AUTO_INCREMENT for table `elements_sites`
--
ALTER TABLE `elements_sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=358;

--
-- AUTO_INCREMENT for table `entrytypes`
--
ALTER TABLE `entrytypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `fieldgroups`
--
ALTER TABLE `fieldgroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `fieldlayoutfields`
--
ALTER TABLE `fieldlayoutfields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=320;

--
-- AUTO_INCREMENT for table `fieldlayouts`
--
ALTER TABLE `fieldlayouts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `fieldlayouttabs`
--
ALTER TABLE `fieldlayouttabs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT for table `fields`
--
ALTER TABLE `fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `globalsets`
--
ALTER TABLE `globalsets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gqlschemas`
--
ALTER TABLE `gqlschemas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gqltokens`
--
ALTER TABLE `gqltokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `info`
--
ALTER TABLE `info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `matrixblocktypes`
--
ALTER TABLE `matrixblocktypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `matrixcontent_sections`
--
ALTER TABLE `matrixcontent_sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=231;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;

--
-- AUTO_INCREMENT for table `plugins`
--
ALTER TABLE `plugins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `queue`
--
ALTER TABLE `queue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `relations`
--
ALTER TABLE `relations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=428;

--
-- AUTO_INCREMENT for table `revisions`
--
ALTER TABLE `revisions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sections_sites`
--
ALTER TABLE `sections_sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `shunnedmessages`
--
ALTER TABLE `shunnedmessages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sitegroups`
--
ALTER TABLE `sitegroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sites`
--
ALTER TABLE `sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `structureelements`
--
ALTER TABLE `structureelements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `structures`
--
ALTER TABLE `structures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `systemmessages`
--
ALTER TABLE `systemmessages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `taggroups`
--
ALTER TABLE `taggroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `templatecacheelements`
--
ALTER TABLE `templatecacheelements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `templatecachequeries`
--
ALTER TABLE `templatecachequeries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `templatecaches`
--
ALTER TABLE `templatecaches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tokens`
--
ALTER TABLE `tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `usergroups`
--
ALTER TABLE `usergroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `usergroups_users`
--
ALTER TABLE `usergroups_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userpermissions`
--
ALTER TABLE `userpermissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userpermissions_usergroups`
--
ALTER TABLE `userpermissions_usergroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userpermissions_users`
--
ALTER TABLE `userpermissions_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userpreferences`
--
ALTER TABLE `userpreferences`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `volumefolders`
--
ALTER TABLE `volumefolders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `volumes`
--
ALTER TABLE `volumes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `widgets`
--
ALTER TABLE `widgets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `assetindexdata`
--
ALTER TABLE `assetindexdata`
  ADD CONSTRAINT `assetindexdata_volumeId_fk` FOREIGN KEY (`volumeId`) REFERENCES `volumes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `assets`
--
ALTER TABLE `assets`
  ADD CONSTRAINT `assets_folderId_fk` FOREIGN KEY (`folderId`) REFERENCES `volumefolders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `assets_id_fk` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `assets_uploaderId_fk` FOREIGN KEY (`uploaderId`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `assets_volumeId_fk` FOREIGN KEY (`volumeId`) REFERENCES `volumes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `categorygroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `categories_id_fk` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `categories_parentId_fk` FOREIGN KEY (`parentId`) REFERENCES `categories` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `categorygroups`
--
ALTER TABLE `categorygroups`
  ADD CONSTRAINT `categorygroups_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `categorygroups_structureId_fk` FOREIGN KEY (`structureId`) REFERENCES `structures` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `categorygroups_sites`
--
ALTER TABLE `categorygroups_sites`
  ADD CONSTRAINT `categorygroups_sites_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `categorygroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `categorygroups_sites_siteId_fk` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `changedattributes`
--
ALTER TABLE `changedattributes`
  ADD CONSTRAINT `changedattributes_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `changedattributes_siteId_fk` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `changedattributes_userId_fk` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `changedfields`
--
ALTER TABLE `changedfields`
  ADD CONSTRAINT `changedfields_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `changedfields_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `fields` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `changedfields_siteId_fk` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `changedfields_userId_fk` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `content`
--
ALTER TABLE `content`
  ADD CONSTRAINT `content_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `content_siteId_fk` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `craftidtokens`
--
ALTER TABLE `craftidtokens`
  ADD CONSTRAINT `craftidtokens_userId_fk` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `drafts`
--
ALTER TABLE `drafts`
  ADD CONSTRAINT `drafts_creatorId_fk` FOREIGN KEY (`creatorId`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `drafts_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `elements`
--
ALTER TABLE `elements`
  ADD CONSTRAINT `elements_draftId_fk` FOREIGN KEY (`draftId`) REFERENCES `drafts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `elements_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `elements_revisionId_fk` FOREIGN KEY (`revisionId`) REFERENCES `revisions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `elements_sites`
--
ALTER TABLE `elements_sites`
  ADD CONSTRAINT `elements_sites_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `elements_sites_siteId_fk` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `entries`
--
ALTER TABLE `entries`
  ADD CONSTRAINT `entries_authorId_fk` FOREIGN KEY (`authorId`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `entries_id_fk` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `entries_parentId_fk` FOREIGN KEY (`parentId`) REFERENCES `entries` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `entries_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `entries_typeId_fk` FOREIGN KEY (`typeId`) REFERENCES `entrytypes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `entrytypes`
--
ALTER TABLE `entrytypes`
  ADD CONSTRAINT `entrytypes_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `entrytypes_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `fieldlayoutfields`
--
ALTER TABLE `fieldlayoutfields`
  ADD CONSTRAINT `fieldlayoutfields_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fieldlayoutfields_layoutId_fk` FOREIGN KEY (`layoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fieldlayoutfields_tabId_fk` FOREIGN KEY (`tabId`) REFERENCES `fieldlayouttabs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `fieldlayouttabs`
--
ALTER TABLE `fieldlayouttabs`
  ADD CONSTRAINT `fieldlayouttabs_layoutId_fk` FOREIGN KEY (`layoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `fields`
--
ALTER TABLE `fields`
  ADD CONSTRAINT `fields_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `fieldgroups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `globalsets`
--
ALTER TABLE `globalsets`
  ADD CONSTRAINT `globalsets_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `globalsets_id_fk` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `gqltokens`
--
ALTER TABLE `gqltokens`
  ADD CONSTRAINT `gqltokens_schemaId_fk` FOREIGN KEY (`schemaId`) REFERENCES `gqlschemas` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `matrixblocks`
--
ALTER TABLE `matrixblocks`
  ADD CONSTRAINT `matrixblocks_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `matrixblocks_id_fk` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `matrixblocks_ownerId_fk` FOREIGN KEY (`ownerId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `matrixblocks_typeId_fk` FOREIGN KEY (`typeId`) REFERENCES `matrixblocktypes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `matrixblocktypes`
--
ALTER TABLE `matrixblocktypes`
  ADD CONSTRAINT `matrixblocktypes_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `matrixblocktypes_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `matrixcontent_sections`
--
ALTER TABLE `matrixcontent_sections`
  ADD CONSTRAINT `matrixcontent_sections_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `matrixcontent_sections_siteId_fk` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `relations`
--
ALTER TABLE `relations`
  ADD CONSTRAINT `relations_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `fields` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `relations_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `relations_sourceSiteId_fk` FOREIGN KEY (`sourceSiteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `relations_targetId_fk` FOREIGN KEY (`targetId`) REFERENCES `elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `revisions`
--
ALTER TABLE `revisions`
  ADD CONSTRAINT `revisions_creatorId_fk` FOREIGN KEY (`creatorId`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `revisions_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sections`
--
ALTER TABLE `sections`
  ADD CONSTRAINT `sections_structureId_fk` FOREIGN KEY (`structureId`) REFERENCES `structures` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `sections_sites`
--
ALTER TABLE `sections_sites`
  ADD CONSTRAINT `sections_sites_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sections_sites_siteId_fk` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sessions`
--
ALTER TABLE `sessions`
  ADD CONSTRAINT `sessions_userId_fk` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shunnedmessages`
--
ALTER TABLE `shunnedmessages`
  ADD CONSTRAINT `shunnedmessages_userId_fk` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sites`
--
ALTER TABLE `sites`
  ADD CONSTRAINT `sites_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `sitegroups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `structureelements`
--
ALTER TABLE `structureelements`
  ADD CONSTRAINT `structureelements_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `structureelements_structureId_fk` FOREIGN KEY (`structureId`) REFERENCES `structures` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `taggroups`
--
ALTER TABLE `taggroups`
  ADD CONSTRAINT `taggroups_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `tags`
--
ALTER TABLE `tags`
  ADD CONSTRAINT `tags_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `taggroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tags_id_fk` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `templatecacheelements`
--
ALTER TABLE `templatecacheelements`
  ADD CONSTRAINT `templatecacheelements_cacheId_fk` FOREIGN KEY (`cacheId`) REFERENCES `templatecaches` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `templatecacheelements_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `templatecachequeries`
--
ALTER TABLE `templatecachequeries`
  ADD CONSTRAINT `templatecachequeries_cacheId_fk` FOREIGN KEY (`cacheId`) REFERENCES `templatecaches` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `templatecaches`
--
ALTER TABLE `templatecaches`
  ADD CONSTRAINT `templatecaches_siteId_fk` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `usergroups_users`
--
ALTER TABLE `usergroups_users`
  ADD CONSTRAINT `usergroups_users_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `usergroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `usergroups_users_userId_fk` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `userpermissions_usergroups`
--
ALTER TABLE `userpermissions_usergroups`
  ADD CONSTRAINT `userpermissions_usergroups_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `usergroups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `userpermissions_usergroups_permissionId_fk` FOREIGN KEY (`permissionId`) REFERENCES `userpermissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `userpermissions_users`
--
ALTER TABLE `userpermissions_users`
  ADD CONSTRAINT `userpermissions_users_permissionId_fk` FOREIGN KEY (`permissionId`) REFERENCES `userpermissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `userpermissions_users_userId_fk` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `userpreferences`
--
ALTER TABLE `userpreferences`
  ADD CONSTRAINT `userpreferences_userId_fk` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_id_fk` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_photoId_fk` FOREIGN KEY (`photoId`) REFERENCES `assets` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `volumefolders`
--
ALTER TABLE `volumefolders`
  ADD CONSTRAINT `volumefolders_parentId_fk` FOREIGN KEY (`parentId`) REFERENCES `volumefolders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `volumefolders_volumeId_fk` FOREIGN KEY (`volumeId`) REFERENCES `volumes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `volumes`
--
ALTER TABLE `volumes`
  ADD CONSTRAINT `volumes_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `widgets`
--
ALTER TABLE `widgets`
  ADD CONSTRAINT `widgets_userId_fk` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;
