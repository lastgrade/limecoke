-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 06, 2016 at 05:25 AM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `limecoke`
--

-- --------------------------------------------------------

--
-- Table structure for table `ContactPage`
--

CREATE TABLE IF NOT EXISTS `ContactPage` (
`ID` int(11) NOT NULL,
  `Mailto` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `SubmitText` mediumtext CHARACTER SET utf8
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `ContactPage`
--

INSERT INTO `ContactPage` (`ID`, `Mailto`, `SubmitText`) VALUES
(8, 'limecoketrades@gmail.com', '<p>Thank you for submitting your message, we will contact you  shortly</p>');

-- --------------------------------------------------------

--
-- Table structure for table `ContactPage_Live`
--

CREATE TABLE IF NOT EXISTS `ContactPage_Live` (
`ID` int(11) NOT NULL,
  `Mailto` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `SubmitText` mediumtext CHARACTER SET utf8
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `ContactPage_Live`
--

INSERT INTO `ContactPage_Live` (`ID`, `Mailto`, `SubmitText`) VALUES
(8, 'limecoketrades@gmail.com', '<p>Thank you for submitting your message, we will contact you  shortly</p>');

-- --------------------------------------------------------

--
-- Table structure for table `ContactPage_versions`
--

CREATE TABLE IF NOT EXISTS `ContactPage_versions` (
`ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `Mailto` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `SubmitText` mediumtext CHARACTER SET utf8
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `ContactPage_versions`
--

INSERT INTO `ContactPage_versions` (`ID`, `RecordID`, `Version`, `Mailto`, `SubmitText`) VALUES
(9, 8, 13, 'limecoketrades@gmail.com', '<p>Thank you for submitting your message, we will contact you  shortly</p>'),
(10, 8, 14, 'limecoketrades@gmail.com', '<p>Thank you for submitting your message, we will contact you  shortly</p>');

-- --------------------------------------------------------

--
-- Table structure for table `ErrorPage`
--

CREATE TABLE IF NOT EXISTS `ErrorPage` (
`ID` int(11) NOT NULL,
  `ErrorCode` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `ErrorPage`
--

INSERT INTO `ErrorPage` (`ID`, `ErrorCode`) VALUES
(4, 404),
(5, 500);

-- --------------------------------------------------------

--
-- Table structure for table `ErrorPage_Live`
--

CREATE TABLE IF NOT EXISTS `ErrorPage_Live` (
`ID` int(11) NOT NULL,
  `ErrorCode` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `ErrorPage_Live`
--

INSERT INTO `ErrorPage_Live` (`ID`, `ErrorCode`) VALUES
(4, 404),
(5, 500);

-- --------------------------------------------------------

--
-- Table structure for table `ErrorPage_versions`
--

CREATE TABLE IF NOT EXISTS `ErrorPage_versions` (
`ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ErrorCode` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `File`
--

CREATE TABLE IF NOT EXISTS `File` (
`ID` int(11) NOT NULL,
  `ClassName` enum('File','Folder','Image','Image_Cached') CHARACTER SET utf8 DEFAULT 'File',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Filename` mediumtext CHARACTER SET utf8,
  `Content` mediumtext CHARACTER SET utf8,
  `ShowInSearch` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  `OwnerID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `File`
--

INSERT INTO `File` (`ID`, `ClassName`, `Created`, `LastEdited`, `Name`, `Title`, `Filename`, `Content`, `ShowInSearch`, `ParentID`, `OwnerID`) VALUES
(1, 'Folder', '2013-10-31 17:26:15', '2013-10-31 17:26:15', 'Uploads', 'Uploads', 'assets/Uploads/', NULL, 1, 0, 0),
(4, 'Image', '2013-10-31 17:29:18', '2013-10-31 17:29:18', '1.jpg', '1', 'assets/1.jpg', NULL, 1, 0, 1),
(5, 'Image', '2013-10-31 17:29:49', '2013-10-31 17:29:49', 'Chrysanthemum.jpg', 'Chrysanthemum', 'assets/Chrysanthemum.jpg', NULL, 1, 0, 1),
(6, 'Image', '2013-11-02 13:15:57', '2013-11-02 13:15:57', 'coal.png', 'coal', 'assets/Uploads/coal.png', NULL, 1, 1, 1),
(7, 'Image', '2013-11-12 10:42:24', '2013-11-12 10:42:24', 'Chrysanthemum.jpg', 'Chrysanthemum', 'assets/Uploads/Chrysanthemum.jpg', NULL, 1, 1, 1),
(8, 'Image', '2013-11-12 11:21:22', '2013-11-12 11:21:22', 'Hydrangeas.jpg', 'Hydrangeas', 'assets/Uploads/Hydrangeas.jpg', NULL, 1, 1, 1),
(10, 'Image', '2014-02-10 11:11:51', '2014-02-10 11:11:51', 'google-maps-logo-300x300.png', 'google maps logo 300x300', 'assets/Uploads/google-maps-logo-300x300.png', NULL, 1, 1, 1),
(11, 'Image', '2014-02-10 12:09:38', '2014-02-10 12:09:38', 'google-maps-logo-256x256.png', 'google maps logo 256x256', 'assets/Uploads/google-maps-logo-256x256.png', NULL, 1, 1, 1),
(12, 'Image', '2016-12-02 12:45:29', '2016-12-02 12:45:29', 'charcoal.jpg', 'charcoal', 'assets/Uploads/charcoal.jpg', NULL, 1, 1, 2),
(13, 'Image', '2016-12-02 17:29:01', '2016-12-02 17:29:01', 'SilverStripeLogo.png', 'SilverStripeLogo.png', 'assets/Uploads/SilverStripeLogo.png', NULL, 1, 1, 2),
(14, 'Image', '2016-12-02 13:19:05', '2016-12-02 13:19:05', 'indian-coal.jpg', 'indian coal', 'assets/Uploads/indian-coal.jpg', NULL, 1, 1, 2),
(15, 'Image', '2016-12-02 13:30:38', '2016-12-02 13:30:38', 'met-coke.jpg', 'met coke', 'assets/Uploads/met-coke.jpg', NULL, 1, 1, 2),
(16, 'Image', '2016-12-03 06:35:38', '2016-12-03 06:35:38', 'image1.jpg', 'image1', 'assets/Uploads/image1.jpg', NULL, 1, 1, 2),
(17, 'Image', '2016-12-03 06:35:55', '2016-12-03 06:35:55', 'image2.jpg', 'image2', 'assets/Uploads/image2.jpg', NULL, 1, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `GalleryImage`
--

CREATE TABLE IF NOT EXISTS `GalleryImage` (
`ID` int(11) NOT NULL,
  `ClassName` enum('GalleryImage') CHARACTER SET utf8 DEFAULT 'GalleryImage',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `SortOrder` int(11) NOT NULL DEFAULT '0',
  `Title` mediumtext CHARACTER SET utf8,
  `ImageID` int(11) NOT NULL DEFAULT '0',
  `GalleryPageID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `GalleryImage`
--

INSERT INTO `GalleryImage` (`ID`, `ClassName`, `Created`, `LastEdited`, `SortOrder`, `Title`, `ImageID`, `GalleryPageID`) VALUES
(3, 'GalleryImage', '2013-11-12 11:21:34', '2013-11-12 11:21:39', 1, 'Hydrangeas', 8, 10);

-- --------------------------------------------------------

--
-- Table structure for table `Group`
--

CREATE TABLE IF NOT EXISTS `Group` (
`ID` int(11) NOT NULL,
  `ClassName` enum('Group') CHARACTER SET utf8 DEFAULT 'Group',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Description` mediumtext CHARACTER SET utf8,
  `Code` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Locked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HtmlEditorConfig` mediumtext CHARACTER SET utf8,
  `ParentID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `Group`
--

INSERT INTO `Group` (`ID`, `ClassName`, `Created`, `LastEdited`, `Title`, `Description`, `Code`, `Locked`, `Sort`, `HtmlEditorConfig`, `ParentID`) VALUES
(1, 'Group', '2013-10-31 17:26:14', '2013-10-31 17:26:14', 'Content Authors', NULL, 'content-authors', 0, 1, NULL, 0),
(2, 'Group', '2013-10-31 17:26:14', '2013-10-31 17:26:14', 'Administrators', NULL, 'administrators', 0, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `Group_Members`
--

CREATE TABLE IF NOT EXISTS `Group_Members` (
`ID` int(11) NOT NULL,
  `GroupID` int(11) NOT NULL DEFAULT '0',
  `MemberID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `Group_Members`
--

INSERT INTO `Group_Members` (`ID`, `GroupID`, `MemberID`) VALUES
(1, 2, 1),
(2, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `Group_Roles`
--

CREATE TABLE IF NOT EXISTS `Group_Roles` (
`ID` int(11) NOT NULL,
  `GroupID` int(11) NOT NULL DEFAULT '0',
  `PermissionRoleID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `LoginAttempt`
--

CREATE TABLE IF NOT EXISTS `LoginAttempt` (
`ID` int(11) NOT NULL,
  `ClassName` enum('LoginAttempt') CHARACTER SET utf8 DEFAULT 'LoginAttempt',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Email` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Status` enum('Success','Failure') CHARACTER SET utf8 DEFAULT 'Success',
  `IP` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `MemberID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `Member`
--

CREATE TABLE IF NOT EXISTS `Member` (
`ID` int(11) NOT NULL,
  `ClassName` enum('Member') CHARACTER SET utf8 DEFAULT 'Member',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `FirstName` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Surname` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Email` varchar(254) CHARACTER SET utf8 DEFAULT NULL,
  `Password` varchar(160) CHARACTER SET utf8 DEFAULT NULL,
  `RememberLoginToken` varchar(160) CHARACTER SET utf8 DEFAULT NULL,
  `NumVisit` int(11) NOT NULL DEFAULT '0',
  `LastVisited` datetime DEFAULT NULL,
  `AutoLoginHash` varchar(160) CHARACTER SET utf8 DEFAULT NULL,
  `AutoLoginExpired` datetime DEFAULT NULL,
  `PasswordEncryption` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Salt` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `PasswordExpiry` date DEFAULT NULL,
  `LockedOutUntil` datetime DEFAULT NULL,
  `Locale` varchar(6) CHARACTER SET utf8 DEFAULT NULL,
  `FailedLoginCount` int(11) NOT NULL DEFAULT '0',
  `DateFormat` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `TimeFormat` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `TempIDHash` varchar(160) CHARACTER SET utf8 DEFAULT NULL,
  `TempIDExpired` datetime DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `Member`
--

INSERT INTO `Member` (`ID`, `ClassName`, `Created`, `LastEdited`, `FirstName`, `Surname`, `Email`, `Password`, `RememberLoginToken`, `NumVisit`, `LastVisited`, `AutoLoginHash`, `AutoLoginExpired`, `PasswordEncryption`, `Salt`, `PasswordExpiry`, `LockedOutUntil`, `Locale`, `FailedLoginCount`, `DateFormat`, `TimeFormat`, `TempIDHash`, `TempIDExpired`) VALUES
(1, 'Member', '2013-10-31 17:26:14', '2016-02-04 10:51:40', 'Default Admin', NULL, 'thomas.paulson@hotmail.com', '$2y$10$35eec77c5b45f9f85e170uJAGJmGSLukInHiO2732317xmoQWRxjy', NULL, 32, '2016-12-02 13:48:38', NULL, NULL, 'blowfish', '10$35eec77c5b45f9f85e1700', NULL, NULL, 'en_US', 0, NULL, NULL, NULL, NULL),
(2, 'Member', '2016-12-02 08:46:48', '2016-12-03 10:53:57', 'Default Admin', NULL, 'admin', NULL, NULL, 3, '2016-12-03 17:12:58', NULL, NULL, NULL, NULL, NULL, NULL, 'en_US', 0, NULL, NULL, '14ea57320ac9cb14806cd17adf40054b2f7b61d9', '2016-12-06 10:53:57');

-- --------------------------------------------------------

--
-- Table structure for table `MemberPassword`
--

CREATE TABLE IF NOT EXISTS `MemberPassword` (
`ID` int(11) NOT NULL,
  `ClassName` enum('MemberPassword') CHARACTER SET utf8 DEFAULT 'MemberPassword',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Password` varchar(160) CHARACTER SET utf8 DEFAULT NULL,
  `Salt` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `PasswordEncryption` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `MemberID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `MemberPassword`
--

INSERT INTO `MemberPassword` (`ID`, `ClassName`, `Created`, `LastEdited`, `Password`, `Salt`, `PasswordEncryption`, `MemberID`) VALUES
(1, 'MemberPassword', '2013-10-31 17:26:15', '2013-10-31 17:26:15', '$2y$10$35eec77c5b45f9f85e170uJAGJmGSLukInHiO2732317xmoQWRxjy', '10$35eec77c5b45f9f85e1700', 'blowfish', 1),
(2, 'MemberPassword', '2014-01-03 12:20:19', '2014-01-03 12:20:19', '$2y$10$35eec77c5b45f9f85e170uJAGJmGSLukInHiO2732317xmoQWRxjy', '10$35eec77c5b45f9f85e1700', 'blowfish', 1);

-- --------------------------------------------------------

--
-- Table structure for table `Page`
--

CREATE TABLE IF NOT EXISTS `Page` (
`ID` int(11) NOT NULL,
  `BannerImageID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `Page`
--

INSERT INTO `Page` (`ID`, `BannerImageID`) VALUES
(7, 0),
(8, 0);

-- --------------------------------------------------------

--
-- Table structure for table `Page_Live`
--

CREATE TABLE IF NOT EXISTS `Page_Live` (
`ID` int(11) NOT NULL,
  `BannerImageID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `Page_Live`
--

INSERT INTO `Page_Live` (`ID`, `BannerImageID`) VALUES
(7, 0),
(8, 0);

-- --------------------------------------------------------

--
-- Table structure for table `Page_versions`
--

CREATE TABLE IF NOT EXISTS `Page_versions` (
`ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `BannerImageID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `Page_versions`
--

INSERT INTO `Page_versions` (`ID`, `RecordID`, `Version`, `BannerImageID`) VALUES
(1, 8, 13, 0),
(2, 7, 6, 0),
(3, 8, 14, 0);

-- --------------------------------------------------------

--
-- Table structure for table `Permission`
--

CREATE TABLE IF NOT EXISTS `Permission` (
`ID` int(11) NOT NULL,
  `ClassName` enum('Permission') CHARACTER SET utf8 DEFAULT 'Permission',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Code` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Arg` int(11) NOT NULL DEFAULT '0',
  `Type` int(11) NOT NULL DEFAULT '1',
  `GroupID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `Permission`
--

INSERT INTO `Permission` (`ID`, `ClassName`, `Created`, `LastEdited`, `Code`, `Arg`, `Type`, `GroupID`) VALUES
(1, 'Permission', '2013-10-31 17:26:14', '2013-10-31 17:26:14', 'CMS_ACCESS_CMSMain', 0, 1, 1),
(2, 'Permission', '2013-10-31 17:26:14', '2013-10-31 17:26:14', 'CMS_ACCESS_AssetAdmin', 0, 1, 1),
(3, 'Permission', '2013-10-31 17:26:14', '2013-10-31 17:26:14', 'CMS_ACCESS_ReportAdmin', 0, 1, 1),
(4, 'Permission', '2013-10-31 17:26:14', '2013-10-31 17:26:14', 'SITETREE_REORGANISE', 0, 1, 1),
(5, 'Permission', '2013-10-31 17:26:14', '2013-10-31 17:26:14', 'ADMIN', 0, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `PermissionRole`
--

CREATE TABLE IF NOT EXISTS `PermissionRole` (
`ID` int(11) NOT NULL,
  `ClassName` enum('PermissionRole') CHARACTER SET utf8 DEFAULT 'PermissionRole',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Title` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `OnlyAdminCanApply` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `PermissionRoleCode`
--

CREATE TABLE IF NOT EXISTS `PermissionRoleCode` (
`ID` int(11) NOT NULL,
  `ClassName` enum('PermissionRoleCode') CHARACTER SET utf8 DEFAULT 'PermissionRoleCode',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Code` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `RoleID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `Product`
--

CREATE TABLE IF NOT EXISTS `Product` (
`ID` int(11) NOT NULL,
  `PhotoID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `Product`
--

INSERT INTO `Product` (`ID`, `PhotoID`) VALUES
(6, 6),
(13, 12),
(14, 14),
(9, 15);

-- --------------------------------------------------------

--
-- Table structure for table `Product_Live`
--

CREATE TABLE IF NOT EXISTS `Product_Live` (
`ID` int(11) NOT NULL,
  `PhotoID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `Product_Live`
--

INSERT INTO `Product_Live` (`ID`, `PhotoID`) VALUES
(6, 6),
(13, 12),
(14, 14),
(9, 15);

-- --------------------------------------------------------

--
-- Table structure for table `Product_versions`
--

CREATE TABLE IF NOT EXISTS `Product_versions` (
`ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `PhotoID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `RedirectorPage`
--

CREATE TABLE IF NOT EXISTS `RedirectorPage` (
`ID` int(11) NOT NULL,
  `RedirectionType` enum('Internal','External') CHARACTER SET utf8 DEFAULT 'Internal',
  `ExternalURL` varchar(2083) CHARACTER SET utf8 DEFAULT NULL,
  `LinkToID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `RedirectorPage_Live`
--

CREATE TABLE IF NOT EXISTS `RedirectorPage_Live` (
`ID` int(11) NOT NULL,
  `RedirectionType` enum('Internal','External') CHARACTER SET utf8 DEFAULT 'Internal',
  `ExternalURL` varchar(2083) CHARACTER SET utf8 DEFAULT NULL,
  `LinkToID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `RedirectorPage_versions`
--

CREATE TABLE IF NOT EXISTS `RedirectorPage_versions` (
`ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `RedirectionType` enum('Internal','External') CHARACTER SET utf8 DEFAULT 'Internal',
  `ExternalURL` varchar(2083) CHARACTER SET utf8 DEFAULT NULL,
  `LinkToID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `SiteConfig`
--

CREATE TABLE IF NOT EXISTS `SiteConfig` (
`ID` int(11) NOT NULL,
  `ClassName` enum('SiteConfig') CHARACTER SET utf8 DEFAULT 'SiteConfig',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Tagline` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Theme` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers') CHARACTER SET utf8 DEFAULT 'Anyone',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers') CHARACTER SET utf8 DEFAULT 'LoggedInUsers',
  `CanCreateTopLevelType` enum('LoggedInUsers','OnlyTheseUsers') CHARACTER SET utf8 DEFAULT 'LoggedInUsers',
  `MetaTitle` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  `GoogleAnalyticsTrackingID` varchar(16) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `SiteConfig`
--

INSERT INTO `SiteConfig` (`ID`, `ClassName`, `Created`, `LastEdited`, `Title`, `Tagline`, `Theme`, `CanViewType`, `CanEditType`, `CanCreateTopLevelType`, `MetaTitle`, `GoogleAnalyticsTrackingID`) VALUES
(1, 'SiteConfig', '2013-10-31 17:26:14', '2016-12-03 06:47:07', 'Limecoke Trades', 'Coke & Coal Dealers', 'default', 'Anyone', 'LoggedInUsers', 'LoggedInUsers', 'petroleum coke, pet coke, charcoal, met coke, coal, Metallurgical Coke', 'UA-88177641-1');

-- --------------------------------------------------------

--
-- Table structure for table `SiteConfig_CreateTopLevelGroups`
--

CREATE TABLE IF NOT EXISTS `SiteConfig_CreateTopLevelGroups` (
`ID` int(11) NOT NULL,
  `SiteConfigID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `SiteConfig_EditorGroups`
--

CREATE TABLE IF NOT EXISTS `SiteConfig_EditorGroups` (
`ID` int(11) NOT NULL,
  `SiteConfigID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `SiteConfig_ViewerGroups`
--

CREATE TABLE IF NOT EXISTS `SiteConfig_ViewerGroups` (
`ID` int(11) NOT NULL,
  `SiteConfigID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `SiteTree`
--

CREATE TABLE IF NOT EXISTS `SiteTree` (
`ID` int(11) NOT NULL,
  `ClassName` enum('SiteTree','Page','ContactPage','GalleryPage','HomePage','ProductHolder','Product','ErrorPage','RedirectorPage','VirtualPage') CHARACTER SET utf8 DEFAULT 'SiteTree',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `URLSegment` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `MenuTitle` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `Content` mediumtext CHARACTER SET utf8,
  `MetaDescription` mediumtext CHARACTER SET utf8,
  `ExtraMeta` mediumtext CHARACTER SET utf8,
  `ShowInMenus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ShowInSearch` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HasBrokenFile` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HasBrokenLink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ReportClass` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8 DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8 DEFAULT 'Inherit',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `SiteTree`
--

INSERT INTO `SiteTree` (`ID`, `ClassName`, `Created`, `LastEdited`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaDescription`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `ReportClass`, `CanViewType`, `CanEditType`, `Version`, `ParentID`) VALUES
(1, 'HomePage', '2013-10-31 17:26:14', '2016-12-03 06:27:53', 'home', 'Home', NULL, '<p>We are coke &amp; coal dealer selling Petroleum Coke, Metallurgical coke, Charcoal and Coal, based in Kochi, Kerala, India.</p><p>We started our business as dealers in Met Coke &amp; Steam Coal in 1975.  We now deal with Metallurgical coke, Petroleum coke, Coal, Charcoal. <a class="button float-right" href="[sitetree_link,id=12]">more..</a></p>', 'we are dealer in  Pet coke, Petroleum Coke, Metallugrical coke, Charcoal. we are based in kochi, kerala, India', '<meta name="keywords" content="Pet coke, Petroleum Coke, Metallugrical coke, Charcoal,wood coal">', 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 16, 0),
(2, 'ProductHolder', '2013-10-31 17:26:14', '2016-12-02 12:59:02', 'coke-and-coal', 'Coke & Coal', NULL, '<p>We sell Petroluem coke, Metallurgical coke, Coal &amp; Charcoal.</p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 5, 0),
(4, 'ErrorPage', '2013-10-31 17:26:14', '2016-12-02 12:59:02', 'page-not-found', 'Page not found', NULL, '<p>Sorry, it seems you were trying to access a page that doesn''t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>', NULL, NULL, 0, 0, 5, 0, 0, NULL, 'Inherit', 'Inherit', 1, 0),
(5, 'ErrorPage', '2013-10-31 17:26:15', '2016-12-02 12:59:02', 'server-error', 'Server error', NULL, '<p>Sorry, there was a problem with handling your request.</p>', NULL, NULL, 0, 0, 6, 0, 0, NULL, 'Inherit', 'Inherit', 1, 0),
(6, 'Product', '2013-11-02 11:14:20', '2016-12-02 12:59:02', 'petroluem-coke', 'Petroluem Coke', NULL, '<p>Petroleum coke (pet coke or petcoke) is byproduct of oil refinery. Pet coke are good fuel for lime shell industries, steam boiler and dryers for hill produce(like spices, tea leave), hardening/tempering of metals.</p>\n<p>We offer pet coke ( petroleum coke ) in different size ie 0-10mm, 10-30mm &amp; above 30mm. Pet coke are stored in 50kg bag and we also make sure no direct sunlight/rain exposure, so that quality of pet coke is preserved.</p>\n<p><strong>Industries where Pet/Petroleum coke are used, based on size are mentioned below</strong></p>\n<table border="0"><tbody><tr><th>Size</th><th>Industry/Equiment</th></tr><tr><td>0-10 mm</td>\n<td>steam boilers &amp; lime shells processing</td>\n</tr><tr><td>10-30 mm</td>\n<td>hardening, melting &amp; tempering metals</td>\n</tr><tr><td>above 30 mm</td>\n<td>hardening, melting &amp; tempering metals; in dryers for hill produces</td>\n</tr></tbody></table><p> </p>\n<p><strong>*</strong>for more information <a href="[sitetree_link,id=8]">contact us </a></p>\n<p> </p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 8, 2),
(7, 'Page', '2013-11-02 11:16:41', '2016-12-03 07:05:51', 'location', 'Location', NULL, '<p>Our office is located at Kochi, India and we are physically located at Edakochi, Kochi, Kerala - 682010</p><p><iframe style="border: 0;" src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15721.930030189622!2d76.296256!3d9.893711!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x5c256683c3fa3db6!2sLime+Coke+Trades!5e0!3m2!1sen!2sin!4v1480744842163" width="100%" height="450" frameborder="0"></iframe></p>', NULL, NULL, 0, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 6, 0),
(8, 'ContactPage', '2013-11-02 11:17:15', '2016-12-03 11:54:19', 'contact', 'Contact', NULL, '<h3>Address</h3><p>Limecoke Trades<br>Edakochi<br> Kochi<br> India<br> Pincode - 682010</p><p>You can reach us at <br>0484 2327751(landline)<br> 94957 14057(mob)</p><p><a title="Google Map" href="https://www.google.co.in/maps/place/Lime+Coke+Trades/@9.893711,76.296256,15z/data=!4m5!3m4!1s0x0:0x5c256683c3fa3db6!8m2!3d9.893711!4d76.296256" target="_blank">View on Google Map</a></p>', NULL, NULL, 1, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 14, 0),
(9, 'Product', '2013-11-02 13:14:59', '2016-12-02 13:30:40', 'metallurgical-coke', 'Metallurgical Coke', NULL, '<p>Met/Metallurgical coke is made by special coal under high temperature in the absence of air(oxygen), which vaporises volatile impurities. And leftover is pure Met Coke ready for industrial purpose like foundry, melting iron ore, metal casting etc.<br><br></p><p><strong>Industries where Met/for heating iron ore/iron, gun metals, gold coke are used, based on size are mentioned below</strong></p><table><tbody><tr><th>Size</th><th>Industry/Equiment</th></tr><tr><td>10-30 mm</td>\n<td>for heating iron ore/iron, gun metals, gold</td>\n</tr><tr><td>40- above 40mm</td>\n<td>for heating/melting/casting iron ore/iron, gun metals, gold</td>\n</tr></tbody></table><p> </p><p><strong>*</strong>for more information <a href="[sitetree_link,id=8]">contact us </a></p><p> </p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 5, 2),
(10, 'GalleryPage', '2013-11-12 10:29:16', '2016-12-02 12:59:02', 'gallery', 'Gallery', NULL, '<p>Click on image to enlarge</p>', NULL, NULL, 0, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 4, 0),
(12, 'Page', '2014-01-07 09:42:47', '2016-12-02 12:59:02', 'about', 'About', NULL, '<p>We started the business as dealars in Met Coke &amp; Steam Coal in 1975. We deal with Metallurgical coke, Petroluem coke, Coal, Charcoal.</p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 7, 0),
(13, 'Product', '2016-12-02 12:41:37', '2016-12-02 12:59:02', 'charcoal', 'Charcoal', NULL, '<p>Charcoal is usually produced by slow pyrolysis, the heating of wood or other substances in the absence of oxygen (see <a title="Charcoal" href="https://en.wikipedia.org/wiki/Charcoal" target="_blank">wikipedia</a> for info).</p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 2, 2),
(14, 'Product', '2016-12-02 13:04:27', '2016-12-02 13:20:30', 'coal', 'Coal', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `SiteTree_EditorGroups`
--

CREATE TABLE IF NOT EXISTS `SiteTree_EditorGroups` (
`ID` int(11) NOT NULL,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `SiteTree_ImageTracking`
--

CREATE TABLE IF NOT EXISTS `SiteTree_ImageTracking` (
`ID` int(11) NOT NULL,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `FileID` int(11) NOT NULL DEFAULT '0',
  `FieldName` varchar(50) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `SiteTree_LinkTracking`
--

CREATE TABLE IF NOT EXISTS `SiteTree_LinkTracking` (
`ID` int(11) NOT NULL,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `ChildID` int(11) NOT NULL DEFAULT '0',
  `FieldName` varchar(50) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=56 ;

--
-- Dumping data for table `SiteTree_LinkTracking`
--

INSERT INTO `SiteTree_LinkTracking` (`ID`, `SiteTreeID`, `ChildID`, `FieldName`) VALUES
(51, 1, 12, 'Content'),
(54, 6, 8, 'Content'),
(55, 9, 8, 'Content');

-- --------------------------------------------------------

--
-- Table structure for table `SiteTree_Live`
--

CREATE TABLE IF NOT EXISTS `SiteTree_Live` (
`ID` int(11) NOT NULL,
  `ClassName` enum('SiteTree','Page','ContactPage','GalleryPage','HomePage','ProductHolder','Product','ErrorPage','RedirectorPage','VirtualPage') CHARACTER SET utf8 DEFAULT 'SiteTree',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `URLSegment` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `MenuTitle` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `Content` mediumtext CHARACTER SET utf8,
  `MetaDescription` mediumtext CHARACTER SET utf8,
  `ExtraMeta` mediumtext CHARACTER SET utf8,
  `ShowInMenus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ShowInSearch` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HasBrokenFile` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HasBrokenLink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ReportClass` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8 DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8 DEFAULT 'Inherit',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `SiteTree_Live`
--

INSERT INTO `SiteTree_Live` (`ID`, `ClassName`, `Created`, `LastEdited`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaDescription`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `ReportClass`, `CanViewType`, `CanEditType`, `Version`, `ParentID`) VALUES
(1, 'HomePage', '2013-10-31 17:26:14', '2016-12-03 06:27:54', 'home', 'Home', NULL, '<p>We are coke &amp; coal dealer selling Petroleum Coke, Metallurgical coke, Charcoal and Coal, based in Kochi, Kerala, India.</p><p>We started our business as dealers in Met Coke &amp; Steam Coal in 1975.  We now deal with Metallurgical coke, Petroleum coke, Coal, Charcoal. <a class="button float-right" href="[sitetree_link,id=12]">more..</a></p>', 'we are dealer in  Pet coke, Petroleum Coke, Metallugrical coke, Charcoal. we are based in kochi, kerala, India', '<meta name="keywords" content="Pet coke, Petroleum Coke, Metallugrical coke, Charcoal,wood coal">', 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 16, 0),
(2, 'ProductHolder', '2013-10-31 17:26:14', '2016-02-04 11:10:29', 'coke-and-coal', 'Coke & Coal', NULL, '<p>We sell Petroluem coke, Metallurgical coke, Coal &amp; Charcoal.</p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 5, 0),
(4, 'ErrorPage', '2013-10-31 17:26:14', '2013-10-31 17:26:20', 'page-not-found', 'Page not found', NULL, '<p>Sorry, it seems you were trying to access a page that doesn''t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>', NULL, NULL, 0, 0, 5, 0, 0, NULL, 'Inherit', 'Inherit', 1, 0),
(5, 'ErrorPage', '2013-10-31 17:26:15', '2013-10-31 17:26:15', 'server-error', 'Server error', NULL, '<p>Sorry, there was a problem with handling your request.</p>', NULL, NULL, 0, 0, 6, 0, 0, NULL, 'Inherit', 'Inherit', 1, 0),
(6, 'Product', '2013-11-02 11:14:20', '2016-12-03 11:54:19', 'petroluem-coke', 'Petroluem Coke', NULL, '<p>Petroleum coke (pet coke or petcoke) is byproduct of oil refinery. Pet coke are good fuel for lime shell industries, steam boiler and dryers for hill produce(like spices, tea leave), hardening/tempering of metals.</p>\n<p>We offer pet coke ( petroleum coke ) in different size ie 0-10mm, 10-30mm &amp; above 30mm. Pet coke are stored in 50kg bag and we also make sure no direct sunlight/rain exposure, so that quality of pet coke is preserved.</p>\n<p><strong>Industries where Pet/Petroleum coke are used, based on size are mentioned below</strong></p>\n<table border="0"><tbody><tr><th>Size</th><th>Industry/Equiment</th></tr><tr><td>0-10 mm</td>\n<td>steam boilers &amp; lime shells processing</td>\n</tr><tr><td>10-30 mm</td>\n<td>hardening, melting &amp; tempering metals</td>\n</tr><tr><td>above 30 mm</td>\n<td>hardening, melting &amp; tempering metals; in dryers for hill produces</td>\n</tr></tbody></table><p> </p>\n<p><strong>*</strong>for more information <a href="[sitetree_link,id=8]">contact us </a></p>\n<p> </p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 8, 2),
(7, 'Page', '2013-11-02 11:16:41', '2016-12-03 07:05:52', 'location', 'Location', NULL, '<p>Our office is located at Kochi, India and we are physically located at Edakochi, Kochi, Kerala - 682010</p><p><iframe style="border: 0;" src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15721.930030189622!2d76.296256!3d9.893711!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x5c256683c3fa3db6!2sLime+Coke+Trades!5e0!3m2!1sen!2sin!4v1480744842163" width="100%" height="450" frameborder="0"></iframe></p>', NULL, NULL, 0, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 6, 0),
(8, 'ContactPage', '2013-11-02 11:17:15', '2016-12-03 11:54:19', 'contact', 'Contact', NULL, '<h3>Address</h3><p>Limecoke Trades<br>Edakochi<br> Kochi<br> India<br> Pincode - 682010</p><p>You can reach us at <br>0484 2327751(landline)<br> 94957 14057(mob)</p><p><a title="Google Map" href="https://www.google.co.in/maps/place/Lime+Coke+Trades/@9.893711,76.296256,15z/data=!4m5!3m4!1s0x0:0x5c256683c3fa3db6!8m2!3d9.893711!4d76.296256" target="_blank">View on Google Map</a></p>', NULL, NULL, 1, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 14, 0),
(9, 'Product', '2013-11-02 13:14:59', '2016-12-03 11:54:20', 'metallurgical-coke', 'Metallurgical Coke', NULL, '<p>Met/Metallurgical coke is made by special coal under high temperature in the absence of air(oxygen), which vaporises volatile impurities. And leftover is pure Met Coke ready for industrial purpose like foundry, melting iron ore, metal casting etc.<br><br></p><p><strong>Industries where Met/for heating iron ore/iron, gun metals, gold coke are used, based on size are mentioned below</strong></p><table><tbody><tr><th>Size</th><th>Industry/Equiment</th></tr><tr><td>10-30 mm</td>\n<td>for heating iron ore/iron, gun metals, gold</td>\n</tr><tr><td>40- above 40mm</td>\n<td>for heating/melting/casting iron ore/iron, gun metals, gold</td>\n</tr></tbody></table><p> </p><p><strong>*</strong>for more information <a href="[sitetree_link,id=8]">contact us </a></p><p> </p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 5, 2),
(10, 'GalleryPage', '2013-11-12 10:29:16', '2015-06-04 09:21:31', 'gallery', 'Gallery', NULL, '<p>Click on image to enlarge</p>', NULL, NULL, 0, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 4, 0),
(12, 'Page', '2014-01-07 09:42:47', '2015-08-05 12:25:17', 'about', 'About', NULL, '<p>We started the business as dealars in Met Coke &amp; Steam Coal in 1975. We deal with Metallurgical coke, Petroluem coke, Coal, Charcoal.</p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 7, 0),
(13, 'Product', '2016-12-02 12:41:37', '2016-12-02 12:47:00', 'charcoal', 'Charcoal', NULL, '<p>Charcoal is usually produced by slow pyrolysis, the heating of wood or other substances in the absence of oxygen (see <a title="Charcoal" href="https://en.wikipedia.org/wiki/Charcoal" target="_blank">wikipedia</a> for info).</p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 2, 2),
(14, 'Product', '2016-12-02 13:04:27', '2016-12-02 13:20:31', 'coal', 'Coal', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `SiteTree_versions`
--

CREATE TABLE IF NOT EXISTS `SiteTree_versions` (
`ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `WasPublished` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `AuthorID` int(11) NOT NULL DEFAULT '0',
  `PublisherID` int(11) NOT NULL DEFAULT '0',
  `ClassName` enum('SiteTree','Page','ContactPage','GalleryPage','HomePage','ProductHolder','Product','ErrorPage','RedirectorPage','VirtualPage') CHARACTER SET utf8 DEFAULT 'SiteTree',
  `Created` datetime DEFAULT NULL,
  `LastEdited` datetime DEFAULT NULL,
  `URLSegment` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `MenuTitle` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `Content` mediumtext CHARACTER SET utf8,
  `MetaDescription` mediumtext CHARACTER SET utf8,
  `ExtraMeta` mediumtext CHARACTER SET utf8,
  `ShowInMenus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ShowInSearch` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HasBrokenFile` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HasBrokenLink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ReportClass` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8 DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8 DEFAULT 'Inherit',
  `ParentID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=77 ;

--
-- Dumping data for table `SiteTree_versions`
--

INSERT INTO `SiteTree_versions` (`ID`, `RecordID`, `Version`, `WasPublished`, `AuthorID`, `PublisherID`, `ClassName`, `Created`, `LastEdited`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaDescription`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `ReportClass`, `CanViewType`, `CanEditType`, `ParentID`) VALUES
(1, 1, 1, 1, 0, 0, 'Page', '2013-10-31 17:26:14', '2013-10-31 17:26:14', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href="admin/">the CMS</a>. You can now access the <a href="http://doc.silverstripe.org">developer documentation</a>, or begin <a href="http://doc.silverstripe.org/doku.php?id=tutorials">the tutorials.</a></p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(2, 2, 1, 1, 0, 0, 'Page', '2013-10-31 17:26:14', '2013-10-31 17:26:14', 'about-us', 'About Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.<br /></p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(3, 3, 1, 1, 0, 0, 'Page', '2013-10-31 17:26:14', '2013-10-31 17:26:14', 'contact-us', 'Contact Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.<br /></p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(4, 4, 1, 1, 0, 0, 'ErrorPage', '2013-10-31 17:26:14', '2013-10-31 17:26:14', 'page-not-found', 'Page not found', NULL, '<p>Sorry, it seems you were trying to access a page that doesn''t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>', NULL, NULL, 0, 0, 4, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(5, 5, 1, 1, 0, 0, 'ErrorPage', '2013-10-31 17:26:15', '2013-10-31 17:26:15', 'server-error', 'Server error', NULL, '<p>Sorry, there was a problem with handling your request.</p>', NULL, NULL, 0, 0, 5, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(6, 2, 2, 1, 1, 1, 'Page', '2013-10-31 17:26:14', '2013-11-02 11:13:11', 'what-we-do', 'What we do', NULL, '<p>We sell Petroluem coke, Metallurgical coke, Coal &amp; Charcoal.</p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(7, 2, 3, 1, 1, 1, 'ProductHolder', '2013-10-31 17:26:14', '2013-11-02 11:13:45', 'what-we-do', 'What we do', NULL, '<p>We sell Petroluem coke, Metallurgical coke, Coal &amp; Charcoal.</p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(8, 6, 1, 0, 1, 0, 'Product', '2013-11-02 11:14:20', '2013-11-02 11:14:20', 'new-product', 'New Product', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 2),
(9, 6, 2, 1, 1, 1, 'Product', '2013-11-02 11:14:20', '2013-11-02 11:14:40', 'petroluem-coke', 'Petroluem Coke', NULL, '<p>Donec id elit non mi porta gravida at eget metus. Maecenas faucibus mollis interdum.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 2),
(10, 1, 2, 1, 1, 1, 'HomePage', '2013-10-31 17:26:14', '2013-11-02 11:15:43', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href="admin/">the CMS</a>. You can now access the <a href="http://doc.silverstripe.org">developer documentation</a>, or begin <a href="http://doc.silverstripe.org/doku.php?id=tutorials">the tutorials.</a></p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(11, 3, 2, 1, 1, 1, 'Page', '2013-10-31 17:26:14', '2013-11-02 11:16:29', 'gallery', 'Gallery', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.</p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(12, 7, 1, 0, 1, 0, 'Page', '2013-11-02 11:16:41', '2013-11-02 11:16:41', 'new-page', 'New Page', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(13, 7, 2, 1, 1, 1, 'Page', '2013-11-02 11:16:41', '2013-11-02 11:17:06', 'location', 'Location', NULL, '<p>Our office is located at Kochi, India and we are physically located at Edakochi, Kochi, Kerala - 682010</p>', NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(14, 8, 1, 0, 1, 0, 'Page', '2013-11-02 11:17:15', '2013-11-02 11:17:15', 'new-page', 'New Page', NULL, NULL, NULL, NULL, 1, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(15, 8, 2, 1, 1, 1, 'Page', '2013-11-02 11:17:15', '2013-11-02 11:17:24', 'contact', 'Contact', NULL, NULL, NULL, NULL, 1, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(16, 8, 3, 1, 1, 1, 'Page', '2013-11-02 11:17:15', '2013-11-02 11:18:18', 'contact', 'Contact', NULL, '<p>Limecoke Trades<br> Edakochi<br> Kochi<br> India<br> Pincode - 682010</p>\n<p>You can reach us at <br>0484 2327751(landline)<br> 99999 99999(mob)</p>', NULL, NULL, 1, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(17, 9, 1, 0, 1, 0, 'Product', '2013-11-02 13:14:59', '2013-11-02 13:14:59', 'new-product', 'New Product', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 2),
(18, 9, 2, 1, 1, 1, 'Product', '2013-11-02 13:14:59', '2013-11-02 13:15:56', 'metallurgical-coke', 'Metallurgical Coke', NULL, '<p>Donec id elit non mi porta gravida at eget metus. Maecenas faucibus mollis interdum</p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 2),
(19, 6, 3, 1, 1, 1, 'Product', '2013-11-02 11:14:20', '2013-11-02 13:17:26', 'petroluem-coke', 'Petroluem Coke', NULL, '<p>Donec id elit non mi porta gravida at eget metus. Maecenas faucibus mollis interdum.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 2),
(20, 9, 3, 1, 1, 1, 'Product', '2013-11-02 13:14:59', '2013-11-02 14:04:35', 'metallurgical-coke', 'Metallurgical Coke', NULL, '<p>Donec id elit non mi porta gravida at eget metus. Maecenas faucibus mollis interdum</p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 2),
(21, 7, 3, 1, 1, 1, 'Page', '2013-11-02 11:16:41', '2013-11-02 14:07:27', 'location', 'Location', NULL, '<p>Our office is located at Kochi, India and we are physically located at Edakochi, Kochi, Kerala - 682010</p>\n<p><iframe src="https://mapsengine.google.com/map/embed?mid=zW-60jDUx45Q.kpu27bfjkm-8" height="480" width="100%"></iframe></p>', NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(22, 1, 3, 1, 1, 1, 'HomePage', '2013-10-31 17:26:14', '2013-11-03 08:37:29', 'home', 'Home', NULL, '<p>We started the business as dealars in Met Coke &amp; Steam Coal in 1975. We deal with Metallurgical coke, Petroluem coke, Coal, Charcoal.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(23, 8, 4, 1, 1, 1, 'Page', '2013-11-02 11:17:15', '2013-11-09 08:53:39', 'contact', 'Contact', NULL, '<p>Limecoke Trades<br> Edakochi<br> Kochi<br> India<br> Pincode - 682010</p>\n<p>You can reach us at <br>0484 2327751(landline)<br> 94957 14057(mob)</p>', NULL, NULL, 1, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(24, 8, 5, 1, 1, 1, 'ContactPage', '2013-11-02 11:17:15', '2013-11-09 12:14:34', 'contact', 'Contact', NULL, '<p>Limecoke Trades<br> Edakochi<br> Kochi<br> India<br> Pincode - 682010</p>\n<p>You can reach us at <br>0484 2327751(landline)<br> 94957 14057(mob)</p>', NULL, NULL, 1, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(25, 8, 6, 1, 1, 1, 'ContactPage', '2013-11-02 11:17:15', '2013-11-09 17:08:20', 'contact', 'Contact', NULL, '<p>Limecoke Trades<br> Edakochi<br> Kochi<br> India<br> Pincode - 682010</p>\n<p>You can reach us at <br>0484 2327751(landline)<br> 94957 14057(mob)</p>', NULL, NULL, 1, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(26, 8, 7, 1, 1, 1, 'ContactPage', '2013-11-02 11:17:15', '2013-11-09 17:57:16', 'contact', 'Contact', NULL, '<p>Limecoke Trades<br> Edakochi<br> Kochi<br> India<br> Pincode - 682010</p>\n<p>You can reach us at <br>0484 2327751(landline)<br> 94957 14057(mob)</p>', NULL, NULL, 1, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(27, 3, 3, 1, 1, 1, 'GalleryPage', '2013-10-31 17:26:14', '2013-11-12 10:23:22', 'gallery', 'Gallery', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.</p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(28, 10, 1, 0, 1, 0, 'GalleryPage', '2013-11-12 10:29:16', '2013-11-12 10:29:16', 'new-gallery-page', 'New Gallery Page', NULL, NULL, NULL, NULL, 1, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(29, 11, 1, 0, 1, 0, 'GalleryPage', '2013-11-12 10:37:09', '2013-11-12 10:37:09', 'new-gallery-page-2', 'New Gallery Page', NULL, NULL, NULL, NULL, 1, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(30, 10, 2, 1, 1, 1, 'GalleryPage', '2013-11-12 10:29:16', '2013-11-12 10:41:42', 'gallery', 'Gallery', NULL, '<p>Click on image to enlarge</p>', NULL, NULL, 1, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(31, 10, 3, 1, 1, 1, 'GalleryPage', '2013-11-12 10:29:16', '2013-11-12 12:04:21', 'gallery', 'Gallery', NULL, '<p>Click on image to enlarge</p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(32, 12, 1, 0, 1, 0, 'Page', '2014-01-07 09:42:47', '2014-01-07 09:42:47', 'new-page', 'New Page', NULL, NULL, NULL, NULL, 1, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(33, 12, 2, 1, 1, 1, 'Page', '2014-01-07 09:42:47', '2014-01-07 09:43:08', 'about-us', 'About Us', NULL, '<p>We started the business as dealars in Met Coke &amp; Steam Coal in 1975. We deal with Metallurgical coke, Petroluem coke, Coal, Charcoal.</p>', NULL, NULL, 1, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(34, 12, 3, 1, 1, 1, 'Page', '2014-01-07 09:42:47', '2014-01-07 09:43:21', 'about-us', 'About Us', NULL, '<p>We started the business as dealars in Met Coke &amp; Steam Coal in 1975. We deal with Metallurgical coke, Petroluem coke, Coal, Charcoal.</p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(35, 8, 8, 1, 1, 1, 'ContactPage', '2013-11-02 11:17:15', '2014-01-07 12:30:10', 'contact', 'Contact', NULL, '<p>[googlemap,width=500,height=300]97-99 Courtenay Place, Wellington, New Zealand[/googlemap]</p>\n<h3>Address</h3>\n<p>Limecoke Trades Edakochi<br> Kochi<br> India<br> Pincode - 682010</p>\n<p>You can reach us at <br>0484 2327751(landline)<br> 94957 14057(mob)</p>', NULL, NULL, 1, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(36, 8, 9, 1, 1, 1, 'ContactPage', '2013-11-02 11:17:15', '2014-01-07 12:31:53', 'contact', 'Contact', NULL, '<p>[googlemap,width=500,height=300]Lime Coke Trades, Boat Jetty Rd, Edakochi, Ernakulam, Kerala 680010[/googlemap]</p>\n<h3>Address</h3>\n<p>Limecoke Trades Edakochi<br> Kochi<br> India<br> Pincode - 682010</p>\n<p>You can reach us at <br>0484 2327751(landline)<br> 94957 14057(mob)</p>', NULL, NULL, 1, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(37, 8, 10, 1, 1, 1, 'ContactPage', '2013-11-02 11:17:15', '2014-01-07 12:32:11', 'contact', 'Contact', NULL, '<p>[googlemap,width=300,height=210]Lime Coke Trades, Boat Jetty Rd, Edakochi, Ernakulam, Kerala 680010[/googlemap]</p>\n<h3>Address</h3>\n<p>Limecoke Trades Edakochi<br> Kochi<br> India<br> Pincode - 682010</p>\n<p>You can reach us at <br>0484 2327751(landline)<br> 94957 14057(mob)</p>', NULL, NULL, 1, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(38, 8, 11, 1, 1, 1, 'ContactPage', '2013-11-02 11:17:15', '2014-02-11 11:13:35', 'contact', 'Contact', NULL, '<p>[googlemap,width=300,height=210]Lime Coke Trades, Boat Jetty Rd, Edakochi, Ernakulam, Kerala 680010[/googlemap]</p>\n<h5>Google Map</h5>\n<h3>Address</h3>\n<p>Limecoke Trades Edakochi<br> Kochi<br> India<br> Pincode - 682010</p>\n<p>You can reach us at <br>0484 2327751(landline)<br> 94957 14057(mob)</p>', NULL, NULL, 1, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(39, 1, 4, 1, 1, 1, 'HomePage', '2013-10-31 17:26:14', '2014-02-11 11:20:25', 'home', 'Home', NULL, '<p>We started the business as dealars in Met Coke &amp; Steam Coal in 1975. We deal with Metallurgical coke, Petroluem coke, Coal, Charcoal.</p>', 'we are dealer in  Pet coke, Petroleum Coke, Metallugrical coke, Charcoal. we are based in kochi, kerala, India', '<meta name="keywords" content="Pet coke, Petroleum Coke, Metallugrical coke, Charcoal,wood coal" />', 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(40, 1, 5, 1, 1, 1, 'HomePage', '2013-10-31 17:26:14', '2014-02-12 10:48:11', 'home', 'Home', NULL, '<p><span>We are one of largest suppliers of processed Pet Coke, Met coke, Leco in south india, limecok, Kochi, Kerala India.</span>We started the business as dealars in Met Coke &amp; Steam Coal in 1975. We now deal with Metallurgical coke, Petroluem coke, Coal, Charcoal.</p>', 'we are dealer in  Pet coke, Petroleum Coke, Metallugrical coke, Charcoal. we are based in kochi, kerala, India', '<meta name="keywords" content="Pet coke, Petroleum Coke, Metallugrical coke, Charcoal,wood coal" />', 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(41, 1, 6, 1, 1, 1, 'HomePage', '2013-10-31 17:26:14', '2014-02-12 10:48:55', 'home', 'Home', NULL, '<p><span>We are one of largest suppliers of processed Pet Coke, Met coke, Leco in South India; limecoke, Kochi, Kerala India.</span>We started the business as dealars in Met Coke &amp; Steam Coal in 1975. We now deal with Metallurgical coke, Petroluem coke, Coal, Charcoal.</p>', 'we are dealer in  Pet coke, Petroleum Coke, Metallugrical coke, Charcoal. we are based in kochi, kerala, India', '<meta name="keywords" content="Pet coke, Petroleum Coke, Metallugrical coke, Charcoal,wood coal" />', 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(42, 1, 7, 1, 1, 1, 'HomePage', '2013-10-31 17:26:14', '2014-02-12 10:49:13', 'home', 'Home', NULL, '<p><span>We are one of largest suppliers of processed Pet Coke, Met coke, Leco in South India; limecoke, Kochi, Kerala India.</span></p>\n<p>We started the business as dealars in Met Coke &amp; Steam Coal in 1975. We now deal with Metallurgical coke, Petroluem coke, Coal, Charcoal.</p>', 'we are dealer in  Pet coke, Petroleum Coke, Metallugrical coke, Charcoal. we are based in kochi, kerala, India', '<meta name="keywords" content="Pet coke, Petroleum Coke, Metallugrical coke, Charcoal,wood coal" />', 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(43, 8, 12, 1, 1, 1, 'ContactPage', '2013-11-02 11:17:15', '2014-02-12 11:08:57', 'contact', 'Contact', NULL, '<p>[googlemap,width=300,height=210]Lime Coke Trades, Boat Jetty Rd, Edakochi, Ernakulam, Kerala 680010[/googlemap]</p>\n<h5>Google Map</h5>\n<h3>Address</h3>\n<p>Limecoke Trades Edakochi<br> Kochi<br> India<br> Pincode - 682010</p>\n<p>You can reach us at <br>0484 2327751(landline)<br> 94957 14057(mob)</p>', NULL, NULL, 1, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(44, 2, 4, 1, 1, 1, 'ProductHolder', '2013-10-31 17:26:14', '2015-06-04 08:37:43', 'products', 'Products', NULL, '<p>We sell Petroluem coke, Metallurgical coke, Coal &amp; Charcoal.</p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(45, 12, 4, 1, 1, 1, 'Page', '2014-01-07 09:42:47', '2015-06-04 08:48:29', 'about-us', 'About us', NULL, '<p>We started the business as dealars in Met Coke &amp; Steam Coal in 1975. We deal with Metallurgical coke, Petroluem coke, Coal, Charcoal.</p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(46, 1, 8, 1, 1, 1, 'HomePage', '2013-10-31 17:26:14', '2015-06-04 08:51:41', 'home', 'Home', NULL, '<p><span>We are one of largest suppliers of processed Pet Coke, Met coke, Leco in South India; limecoke, Kochi, Kerala India.</span></p>\n<p>We started our business as dealars in Met Coke &amp; Steam Coal in 1975.  We now deal with Metallurgical coke, Petroluem coke, Coal, Charcoal.</p>', 'we are dealer in  Pet coke, Petroleum Coke, Metallugrical coke, Charcoal. we are based in kochi, kerala, India', '<meta name="keywords" content="Pet coke, Petroleum Coke, Metallugrical coke, Charcoal,wood coal" />', 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(47, 7, 4, 1, 1, 1, 'Page', '2013-11-02 11:16:41', '2015-06-04 09:20:51', 'location', 'Location', NULL, '<p>Our office is located at Kochi, India and we are physically located at Edakochi, Kochi, Kerala - 682010</p>\n<p><iframe src="https://mapsengine.google.com/map/embed?mid=zW-60jDUx45Q.kpu27bfjkm-8" width="100%" height="480"></iframe></p>', NULL, NULL, 1, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(48, 10, 4, 1, 1, 1, 'GalleryPage', '2013-11-12 10:29:16', '2015-06-04 09:21:31', 'gallery', 'Gallery', NULL, '<p>Click on image to enlarge</p>', NULL, NULL, 0, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(49, 7, 5, 1, 1, 1, 'Page', '2013-11-02 11:16:41', '2015-06-04 09:21:54', 'location', 'Location', NULL, '<p>Our office is located at Kochi, India and we are physically located at Edakochi, Kochi, Kerala - 682010</p>\n<p><iframe src="https://mapsengine.google.com/map/embed?mid=zW-60jDUx45Q.kpu27bfjkm-8" width="100%" height="480"></iframe></p>', NULL, NULL, 0, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(50, 6, 4, 1, 1, 1, 'Product', '2013-11-02 11:14:20', '2015-06-04 10:26:43', 'petroluem-coke', 'Petroluem Coke', NULL, '<p>Petroleum coke (pet coke or petcoke) is byproduct of oil refinery. Pet coke are good fuel for lime shell industries, steam boiler and dryers for hill produce(like spices, tea leave), hardening/tempering of metals. We offer pet coke ( petroleum coke ) in different size ie 0-10mm, 10-30mm &amp; above 30mm. Pet coke are stored in 50kg bag and we also make sure no direct sunlight/rain exposure, so that quality of pet coke is preserved. Industries where pet coke are used, based on size are mentioned below</p>\n<p> </p>\n<table border="0"><tbody><tr><th>Product</th><th>Size</th><th>Industry/Equiment</th></tr><tr><td>Pet coke</td>\n<td>0-10 mm</td>\n<td>steam boilers &amp; lime shells processing</td>\n</tr><tr><td>Pet coke</td>\n<td>10-30 mm</td>\n<td>hardening, melting &amp; tempering metals</td>\n</tr><tr><td>Pet coke</td>\n<td>above 30 mm</td>\n<td>hardening, melting &amp; tempering metals; in dryers for hill produces</td>\n</tr></tbody></table><p>for more information <a href="[sitetree_link,id=8]">contact us </a></p>\n<p>Product Size Industry/Equiment Pet coke 0-10 mm steam boilers &amp; lime shells processing Pet coke 10-30 mm hardening, melting &amp; tempering metals Pet coke above 30 mm hardening, melting &amp; tempering metals; in dryers for hill produces</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 2),
(51, 6, 5, 1, 1, 1, 'Product', '2013-11-02 11:14:20', '2015-06-04 10:27:39', 'petroluem-coke', 'Petroluem Coke', NULL, '<p>Petroleum coke (pet coke or petcoke) is byproduct of oil refinery. Pet coke are good fuel for lime shell industries, steam boiler and dryers for hill produce(like spices, tea leave), hardening/tempering of metals.</p>\n<p>We offer pet coke ( petroleum coke ) in different size ie 0-10mm, 10-30mm &amp; above 30mm. Pet coke are stored in 50kg bag and we also make sure no direct sunlight/rain exposure, so that quality of pet coke is preserved. Industries where pet coke are used, based on size are mentioned below</p>\n<p> </p>\n<table border="0"><tbody><tr><th>Product</th><th>Size</th><th>Industry/Equiment</th></tr><tr><td>Pet coke</td>\n<td>0-10 mm</td>\n<td>steam boilers &amp; lime shells processing</td>\n</tr><tr><td>Pet coke</td>\n<td>10-30 mm</td>\n<td>hardening, melting &amp; tempering metals</td>\n</tr><tr><td>Pet coke</td>\n<td>above 30 mm</td>\n<td>hardening, melting &amp; tempering metals; in dryers for hill produces</td>\n</tr></tbody></table><p>for more information <a href="[sitetree_link,id=8]">contact us </a></p>\n<p>Product Size Industry/Equiment Pet coke 0-10 mm steam boilers &amp; lime shells processing Pet coke 10-30 mm hardening, melting &amp; tempering metals Pet coke above 30 mm hardening, melting &amp; tempering metals; in dryers for hill produces</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 2),
(52, 6, 6, 1, 1, 1, 'Product', '2013-11-02 11:14:20', '2015-06-04 10:28:48', 'petroluem-coke', 'Petroluem Coke', NULL, '<p>Petroleum coke (pet coke or petcoke) is byproduct of oil refinery. Pet coke are good fuel for lime shell industries, steam boiler and dryers for hill produce(like spices, tea leave), hardening/tempering of metals.</p>\n<p>We offer pet coke ( petroleum coke ) in different size ie 0-10mm, 10-30mm &amp; above 30mm. Pet coke are stored in 50kg bag and we also make sure no direct sunlight/rain exposure, so that quality of pet coke is preserved.</p>\n<p><strong>Industries where pet coke are used, based on size are mentioned below</strong></p>\n<p> </p>\n<table border="0"><tbody><tr><th>Product</th><th>Size</th><th>Industry/Equiment</th></tr><tr><td>Pet coke</td>\n<td>0-10 mm</td>\n<td>steam boilers &amp; lime shells processing</td>\n</tr><tr><td>Pet coke</td>\n<td>10-30 mm</td>\n<td>hardening, melting &amp; tempering metals</td>\n</tr><tr><td>Pet coke</td>\n<td>above 30 mm</td>\n<td>hardening, melting &amp; tempering metals; in dryers for hill produces</td>\n</tr></tbody></table><p>for more information <a href="[sitetree_link,id=8]">contact us </a></p>\n<p> </p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 2),
(53, 6, 7, 1, 1, 1, 'Product', '2013-11-02 11:14:20', '2015-06-04 10:30:02', 'petroluem-coke', 'Petroluem Coke', NULL, '<p>Petroleum coke (pet coke or petcoke) is byproduct of oil refinery. Pet coke are good fuel for lime shell industries, steam boiler and dryers for hill produce(like spices, tea leave), hardening/tempering of metals.</p>\n<p>We offer pet coke ( petroleum coke ) in different size ie 0-10mm, 10-30mm &amp; above 30mm. Pet coke are stored in 50kg bag and we also make sure no direct sunlight/rain exposure, so that quality of pet coke is preserved.</p>\n<p><strong>Industries where pet coke are used, based on size are mentioned below</strong></p>\n<table border="0"><tbody><tr><th>Product</th><th>Size</th><th>Industry/Equiment</th></tr><tr><td>Pet coke</td>\n<td>0-10 mm</td>\n<td>steam boilers &amp; lime shells processing</td>\n</tr><tr><td>Pet coke</td>\n<td>10-30 mm</td>\n<td>hardening, melting &amp; tempering metals</td>\n</tr><tr><td>Pet coke</td>\n<td>above 30 mm</td>\n<td>hardening, melting &amp; tempering metals; in dryers for hill produces</td>\n</tr></tbody></table><p> </p>\n<p><strong>*</strong>for more information <a href="[sitetree_link,id=8]">contact us </a></p>\n<p> </p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 2),
(54, 12, 5, 1, 1, 1, 'Page', '2014-01-07 09:42:47', '2015-06-04 10:43:42', 'about-us', 'Aboutus', NULL, '<p>We started the business as dealars in Met Coke &amp; Steam Coal in 1975. We deal with Metallurgical coke, Petroluem coke, Coal, Charcoal.</p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(55, 12, 6, 1, 1, 1, 'Page', '2014-01-07 09:42:47', '2015-06-04 10:43:48', 'about-us', 'Aboutus', NULL, '<p>We started the business as dealars in Met Coke &amp; Steam Coal in 1975. We deal with Metallurgical coke, Petroluem coke, Coal, Charcoal.</p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(56, 9, 4, 1, 1, 1, 'Product', '2013-11-02 13:14:59', '2015-08-05 12:20:44', 'metallurgical-coke', 'Metallurgical Coke', NULL, '<p>Met/Metallurgical coke is made by special coal under high temperature in the absence of air(oxygen), which vaporises volatile impurities. And leftover is pure Met Coke ready for industrial purpose like foundry, melting iron ore, metal casting etc.<br><br></p>\n<p><strong>Industries where Met/for heating iron ore/iron, gun metals, gold coke are used, based on size are mentioned below</strong></p>\n<table border="0"><tbody><tr><th>Size</th><th>Industry/Equiment</th></tr><tr><td>10-30 mm</td>\n<td>for heating iron ore/iron, gun metals, gold</td>\n</tr><tr><td>40- above 40mm</td>\n<td>for heating/melting/casting iron ore/iron, gun metals, gold</td>\n</tr></tbody></table><p> </p>\n<p><strong>*</strong>for more information <a href="[sitetree_link,id=8]">contact us </a></p>\n<p> </p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 2),
(57, 6, 8, 1, 1, 1, 'Product', '2013-11-02 11:14:20', '2015-08-05 12:24:08', 'petroluem-coke', 'Petroluem Coke', NULL, '<p>Petroleum coke (pet coke or petcoke) is byproduct of oil refinery. Pet coke are good fuel for lime shell industries, steam boiler and dryers for hill produce(like spices, tea leave), hardening/tempering of metals.</p>\n<p>We offer pet coke ( petroleum coke ) in different size ie 0-10mm, 10-30mm &amp; above 30mm. Pet coke are stored in 50kg bag and we also make sure no direct sunlight/rain exposure, so that quality of pet coke is preserved.</p>\n<p><strong>Industries where Pet/Petroleum coke are used, based on size are mentioned below</strong></p>\n<table border="0"><tbody><tr><th>Size</th><th>Industry/Equiment</th></tr><tr><td>0-10 mm</td>\n<td>steam boilers &amp; lime shells processing</td>\n</tr><tr><td>10-30 mm</td>\n<td>hardening, melting &amp; tempering metals</td>\n</tr><tr><td>above 30 mm</td>\n<td>hardening, melting &amp; tempering metals; in dryers for hill produces</td>\n</tr></tbody></table><p> </p>\n<p><strong>*</strong>for more information <a href="[sitetree_link,id=8]">contact us </a></p>\n<p> </p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 2),
(58, 12, 7, 1, 1, 1, 'Page', '2014-01-07 09:42:47', '2015-08-05 12:25:17', 'about', 'About', NULL, '<p>We started the business as dealars in Met Coke &amp; Steam Coal in 1975. We deal with Metallurgical coke, Petroluem coke, Coal, Charcoal.</p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(59, 2, 5, 1, 1, 1, 'ProductHolder', '2013-10-31 17:26:14', '2016-02-04 11:10:29', 'coke-and-coal', 'Coke & Coal', NULL, '<p>We sell Petroluem coke, Metallurgical coke, Coal &amp; Charcoal.</p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(60, 1, 9, 1, 2, 2, 'HomePage', '2013-10-31 17:26:14', '2016-12-02 12:28:40', 'home', 'Home', NULL, '<p><span>We are dealer in Petroleum Coke, Metallugrical coke, Charcoal and Leco. We are based in Kochi, Kerala, India. </span>We started our business as dealers in Met Coke &amp; Steam Coal in 1975.  We now deal with Metallurgical coke, Petroluem coke, Coal, Charcoal.</p>', 'we are dealer in  Pet coke, Petroleum Coke, Metallugrical coke, Charcoal. we are based in kochi, kerala, India', '<meta name="keywords" content="Pet coke, Petroleum Coke, Metallugrical coke, Charcoal,wood coal">', 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(61, 13, 1, 0, 2, 0, 'Product', '2016-12-02 12:41:37', '2016-12-02 12:41:37', 'new-product', 'New Product', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 2),
(62, 13, 2, 1, 2, 2, 'Product', '2016-12-02 12:41:37', '2016-12-02 12:47:00', 'charcoal', 'Charcoal', NULL, '<p>Charcoal is usually produced by slow pyrolysis, the heating of wood or other substances in the absence of oxygen (see <a title="Charcoal" href="https://en.wikipedia.org/wiki/Charcoal" target="_blank">wikipedia</a> for info).</p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 2),
(63, 14, 1, 0, 2, 0, 'Product', '2016-12-02 13:04:27', '2016-12-02 13:04:27', 'new-product', 'New Product', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 2),
(64, 14, 2, 1, 2, 2, 'Product', '2016-12-02 13:04:27', '2016-12-02 13:04:40', 'coal', 'Coal', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 2),
(65, 14, 3, 1, 2, 2, 'Product', '2016-12-02 13:04:27', '2016-12-02 13:20:30', 'coal', 'Coal', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 2),
(66, 9, 5, 1, 2, 2, 'Product', '2013-11-02 13:14:59', '2016-12-02 13:30:40', 'metallurgical-coke', 'Metallurgical Coke', NULL, '<p>Met/Metallurgical coke is made by special coal under high temperature in the absence of air(oxygen), which vaporises volatile impurities. And leftover is pure Met Coke ready for industrial purpose like foundry, melting iron ore, metal casting etc.<br><br></p><p><strong>Industries where Met/for heating iron ore/iron, gun metals, gold coke are used, based on size are mentioned below</strong></p><table><tbody><tr><th>Size</th><th>Industry/Equiment</th></tr><tr><td>10-30 mm</td>\n<td>for heating iron ore/iron, gun metals, gold</td>\n</tr><tr><td>40- above 40mm</td>\n<td>for heating/melting/casting iron ore/iron, gun metals, gold</td>\n</tr></tbody></table><p> </p><p><strong>*</strong>for more information <a href="[sitetree_link,id=8]">contact us </a></p><p> </p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 2),
(67, 1, 10, 1, 2, 2, 'HomePage', '2013-10-31 17:26:14', '2016-12-02 13:34:05', 'home', 'Home', NULL, '<p><span>We are dealer in Petroleum Coke, Metallurgical coke, Charcoal and Coal. We are based in Kochi, Kerala, India. </span>We started our business as dealers in Met Coke &amp; Steam Coal in 1975.  We now deal with Metallurgical coke, Petroleum coke, Coal, Charcoal.</p>', 'we are dealer in  Pet coke, Petroleum Coke, Metallugrical coke, Charcoal. we are based in kochi, kerala, India', '<meta name="keywords" content="Pet coke, Petroleum Coke, Metallugrical coke, Charcoal,wood coal">', 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(68, 1, 11, 1, 2, 2, 'HomePage', '2013-10-31 17:26:14', '2016-12-02 13:38:20', 'home', 'Home', NULL, '<p><span>We are dealer in Petroleum Coke, Metallurgical coke, Charcoal and Coal. We are based in Kochi, Kerala, India. </span><a href="[sitetree_link,id=12]">We started our business as dealers in Met Coke &amp; Steam Coal in 1975.  We now deal with Metallurgical coke, Petroleum coke, Coal, Charcoal.</a></p><p><a class="button float-right" href="[sitetree_link,id=12]">more..</a></p>', 'we are dealer in  Pet coke, Petroleum Coke, Metallugrical coke, Charcoal. we are based in kochi, kerala, India', '<meta name="keywords" content="Pet coke, Petroleum Coke, Metallugrical coke, Charcoal,wood coal">', 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(69, 1, 12, 1, 2, 2, 'HomePage', '2013-10-31 17:26:14', '2016-12-02 13:39:13', 'home', 'Home', NULL, '<p>We are dealer in Petroleum Coke, Metallurgical coke, Charcoal and Coal. We are based in Kochi, Kerala, India. We started our business as dealers in Met Coke &amp; Steam Coal in 1975.  We now deal with Metallurgical coke, Petroleum coke, Coal, Charcoal.</p><p><a class="button float-right" href="[sitetree_link,id=12]">more..</a></p>', 'we are dealer in  Pet coke, Petroleum Coke, Metallugrical coke, Charcoal. we are based in kochi, kerala, India', '<meta name="keywords" content="Pet coke, Petroleum Coke, Metallugrical coke, Charcoal,wood coal">', 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(70, 1, 13, 1, 2, 2, 'HomePage', '2013-10-31 17:26:14', '2016-12-02 13:39:43', 'home', 'Home', NULL, '<p>We are dealer in Petroleum Coke, Metallurgical coke, Charcoal and Coal. We are based in Kochi, Kerala, India.</p><p>We started our business as dealers in Met Coke &amp; Steam Coal in 1975.  We now deal with Metallurgical coke, Petroleum coke, Coal, Charcoal. <a class="button float-right" href="[sitetree_link,id=12]">more..</a></p>', 'we are dealer in  Pet coke, Petroleum Coke, Metallugrical coke, Charcoal. we are based in kochi, kerala, India', '<meta name="keywords" content="Pet coke, Petroleum Coke, Metallugrical coke, Charcoal,wood coal">', 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(71, 1, 14, 1, 2, 2, 'HomePage', '2013-10-31 17:26:14', '2016-12-03 05:53:35', 'home', 'Limecoke Trades', 'Home', '<p>We are dealer in Petroleum Coke, Metallurgical coke, Charcoal and Coal. We are based in Kochi, Kerala, India.</p><p>We started our business as dealers in Met Coke &amp; Steam Coal in 1975.  We now deal with Metallurgical coke, Petroleum coke, Coal, Charcoal. <a class="button float-right" href="[sitetree_link,id=12]">more..</a></p>', 'we are dealer in  Pet coke, Petroleum Coke, Metallugrical coke, Charcoal. we are based in kochi, kerala, India', '<meta name="keywords" content="Pet coke, Petroleum Coke, Metallugrical coke, Charcoal,wood coal">', 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(72, 1, 15, 1, 2, 2, 'HomePage', '2013-10-31 17:26:14', '2016-12-03 05:54:52', 'home', 'Limecoke Trades', 'Home', '<p>We are coke &amp; coal dealer selling Petroleum Coke, Metallurgical coke, Charcoal and Coal, based in Kochi, Kerala, India.</p><p>We started our business as dealers in Met Coke &amp; Steam Coal in 1975.  We now deal with Metallurgical coke, Petroleum coke, Coal, Charcoal. <a class="button float-right" href="[sitetree_link,id=12]">more..</a></p>', 'we are dealer in  Pet coke, Petroleum Coke, Metallugrical coke, Charcoal. we are based in kochi, kerala, India', '<meta name="keywords" content="Pet coke, Petroleum Coke, Metallugrical coke, Charcoal,wood coal">', 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(73, 1, 16, 1, 2, 2, 'HomePage', '2013-10-31 17:26:14', '2016-12-03 06:27:53', 'home', 'Home', 'Home', '<p>We are coke &amp; coal dealer selling Petroleum Coke, Metallurgical coke, Charcoal and Coal, based in Kochi, Kerala, India.</p><p>We started our business as dealers in Met Coke &amp; Steam Coal in 1975.  We now deal with Metallurgical coke, Petroleum coke, Coal, Charcoal. <a class="button float-right" href="[sitetree_link,id=12]">more..</a></p>', 'we are dealer in  Pet coke, Petroleum Coke, Metallugrical coke, Charcoal. we are based in kochi, kerala, India', '<meta name="keywords" content="Pet coke, Petroleum Coke, Metallugrical coke, Charcoal,wood coal">', 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(74, 8, 13, 1, 2, 2, 'ContactPage', '2013-11-02 11:17:15', '2016-12-03 07:02:27', 'contact', 'Contact', NULL, '<h3>Address</h3><p>Limecoke Trades Edakochi<br> Kochi<br> India<br> Pincode - 682010</p><p>You can reach us at <br>0484 2327751(landline)<br> 94957 14057(mob)</p><p><a title="Google Map" href="https://www.google.co.in/maps/place/Lime+Coke+Trades/@9.893711,76.296256,15z/data=!4m5!3m4!1s0x0:0x5c256683c3fa3db6!8m2!3d9.893711!4d76.296256" target="_blank">View on Google Map</a></p>', NULL, NULL, 1, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(75, 7, 6, 1, 2, 2, 'Page', '2013-11-02 11:16:41', '2016-12-03 07:05:51', 'location', 'Location', NULL, '<p>Our office is located at Kochi, India and we are physically located at Edakochi, Kochi, Kerala - 682010</p><p><iframe style="border: 0;" src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15721.930030189622!2d76.296256!3d9.893711!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x5c256683c3fa3db6!2sLime+Coke+Trades!5e0!3m2!1sen!2sin!4v1480744842163" width="100%" height="450" frameborder="0"></iframe></p>', NULL, NULL, 0, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 0),
(76, 8, 14, 1, 2, 2, 'ContactPage', '2013-11-02 11:17:15', '2016-12-03 11:54:19', 'contact', 'Contact', NULL, '<h3>Address</h3><p>Limecoke Trades<br>Edakochi<br> Kochi<br> India<br> Pincode - 682010</p><p>You can reach us at <br>0484 2327751(landline)<br> 94957 14057(mob)</p><p><a title="Google Map" href="https://www.google.co.in/maps/place/Lime+Coke+Trades/@9.893711,76.296256,15z/data=!4m5!3m4!1s0x0:0x5c256683c3fa3db6!8m2!3d9.893711!4d76.296256" target="_blank">View on Google Map</a></p>', NULL, NULL, 1, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 0);

-- --------------------------------------------------------

--
-- Table structure for table `SiteTree_ViewerGroups`
--

CREATE TABLE IF NOT EXISTS `SiteTree_ViewerGroups` (
`ID` int(11) NOT NULL,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `Slider`
--

CREATE TABLE IF NOT EXISTS `Slider` (
`ID` int(11) NOT NULL,
  `ClassName` enum('Slider') DEFAULT 'Slider',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `SortOrder` int(11) NOT NULL DEFAULT '0',
  `PhotoID` int(11) NOT NULL DEFAULT '0',
  `PageID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `Slider`
--

INSERT INTO `Slider` (`ID`, `ClassName`, `LastEdited`, `Created`, `SortOrder`, `PhotoID`, `PageID`) VALUES
(1, 'Slider', '2016-12-03 06:35:41', '2016-12-03 06:35:41', 0, 16, 1),
(2, 'Slider', '2016-12-03 06:35:56', '2016-12-03 06:35:56', 0, 17, 1);

-- --------------------------------------------------------

--
-- Table structure for table `VirtualPage`
--

CREATE TABLE IF NOT EXISTS `VirtualPage` (
`ID` int(11) NOT NULL,
  `VersionID` int(11) NOT NULL DEFAULT '0',
  `CopyContentFromID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `VirtualPage_Live`
--

CREATE TABLE IF NOT EXISTS `VirtualPage_Live` (
`ID` int(11) NOT NULL,
  `VersionID` int(11) NOT NULL DEFAULT '0',
  `CopyContentFromID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `VirtualPage_versions`
--

CREATE TABLE IF NOT EXISTS `VirtualPage_versions` (
`ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `VersionID` int(11) NOT NULL DEFAULT '0',
  `CopyContentFromID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ContactPage`
--
ALTER TABLE `ContactPage`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ContactPage_Live`
--
ALTER TABLE `ContactPage_Live`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ContactPage_versions`
--
ALTER TABLE `ContactPage_versions`
 ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`), ADD KEY `RecordID` (`RecordID`), ADD KEY `Version` (`Version`);

--
-- Indexes for table `ErrorPage`
--
ALTER TABLE `ErrorPage`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ErrorPage_Live`
--
ALTER TABLE `ErrorPage_Live`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ErrorPage_versions`
--
ALTER TABLE `ErrorPage_versions`
 ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`), ADD KEY `RecordID` (`RecordID`), ADD KEY `Version` (`Version`);

--
-- Indexes for table `File`
--
ALTER TABLE `File`
 ADD PRIMARY KEY (`ID`), ADD KEY `ParentID` (`ParentID`), ADD KEY `OwnerID` (`OwnerID`), ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `GalleryImage`
--
ALTER TABLE `GalleryImage`
 ADD PRIMARY KEY (`ID`), ADD KEY `ImageID` (`ImageID`), ADD KEY `GalleryPageID` (`GalleryPageID`), ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `Group`
--
ALTER TABLE `Group`
 ADD PRIMARY KEY (`ID`), ADD KEY `ParentID` (`ParentID`), ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `Group_Members`
--
ALTER TABLE `Group_Members`
 ADD PRIMARY KEY (`ID`), ADD KEY `GroupID` (`GroupID`), ADD KEY `MemberID` (`MemberID`);

--
-- Indexes for table `Group_Roles`
--
ALTER TABLE `Group_Roles`
 ADD PRIMARY KEY (`ID`), ADD KEY `GroupID` (`GroupID`), ADD KEY `PermissionRoleID` (`PermissionRoleID`);

--
-- Indexes for table `LoginAttempt`
--
ALTER TABLE `LoginAttempt`
 ADD PRIMARY KEY (`ID`), ADD KEY `MemberID` (`MemberID`), ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `Member`
--
ALTER TABLE `Member`
 ADD PRIMARY KEY (`ID`), ADD KEY `Email` (`Email`), ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `MemberPassword`
--
ALTER TABLE `MemberPassword`
 ADD PRIMARY KEY (`ID`), ADD KEY `MemberID` (`MemberID`), ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `Page`
--
ALTER TABLE `Page`
 ADD PRIMARY KEY (`ID`), ADD KEY `BannerImageID` (`BannerImageID`);

--
-- Indexes for table `Page_Live`
--
ALTER TABLE `Page_Live`
 ADD PRIMARY KEY (`ID`), ADD KEY `BannerImageID` (`BannerImageID`);

--
-- Indexes for table `Page_versions`
--
ALTER TABLE `Page_versions`
 ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`), ADD KEY `RecordID` (`RecordID`), ADD KEY `Version` (`Version`), ADD KEY `BannerImageID` (`BannerImageID`);

--
-- Indexes for table `Permission`
--
ALTER TABLE `Permission`
 ADD PRIMARY KEY (`ID`), ADD KEY `GroupID` (`GroupID`), ADD KEY `Code` (`Code`), ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `PermissionRole`
--
ALTER TABLE `PermissionRole`
 ADD PRIMARY KEY (`ID`), ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `PermissionRoleCode`
--
ALTER TABLE `PermissionRoleCode`
 ADD PRIMARY KEY (`ID`), ADD KEY `RoleID` (`RoleID`), ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `Product`
--
ALTER TABLE `Product`
 ADD PRIMARY KEY (`ID`), ADD KEY `PhotoID` (`PhotoID`);

--
-- Indexes for table `Product_Live`
--
ALTER TABLE `Product_Live`
 ADD PRIMARY KEY (`ID`), ADD KEY `PhotoID` (`PhotoID`);

--
-- Indexes for table `Product_versions`
--
ALTER TABLE `Product_versions`
 ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`), ADD KEY `RecordID` (`RecordID`), ADD KEY `Version` (`Version`), ADD KEY `PhotoID` (`PhotoID`);

--
-- Indexes for table `RedirectorPage`
--
ALTER TABLE `RedirectorPage`
 ADD PRIMARY KEY (`ID`), ADD KEY `LinkToID` (`LinkToID`);

--
-- Indexes for table `RedirectorPage_Live`
--
ALTER TABLE `RedirectorPage_Live`
 ADD PRIMARY KEY (`ID`), ADD KEY `LinkToID` (`LinkToID`);

--
-- Indexes for table `RedirectorPage_versions`
--
ALTER TABLE `RedirectorPage_versions`
 ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`), ADD KEY `RecordID` (`RecordID`), ADD KEY `Version` (`Version`), ADD KEY `LinkToID` (`LinkToID`);

--
-- Indexes for table `SiteConfig`
--
ALTER TABLE `SiteConfig`
 ADD PRIMARY KEY (`ID`), ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `SiteConfig_CreateTopLevelGroups`
--
ALTER TABLE `SiteConfig_CreateTopLevelGroups`
 ADD PRIMARY KEY (`ID`), ADD KEY `SiteConfigID` (`SiteConfigID`), ADD KEY `GroupID` (`GroupID`);

--
-- Indexes for table `SiteConfig_EditorGroups`
--
ALTER TABLE `SiteConfig_EditorGroups`
 ADD PRIMARY KEY (`ID`), ADD KEY `SiteConfigID` (`SiteConfigID`), ADD KEY `GroupID` (`GroupID`);

--
-- Indexes for table `SiteConfig_ViewerGroups`
--
ALTER TABLE `SiteConfig_ViewerGroups`
 ADD PRIMARY KEY (`ID`), ADD KEY `SiteConfigID` (`SiteConfigID`), ADD KEY `GroupID` (`GroupID`);

--
-- Indexes for table `SiteTree`
--
ALTER TABLE `SiteTree`
 ADD PRIMARY KEY (`ID`), ADD KEY `ParentID` (`ParentID`), ADD KEY `URLSegment` (`URLSegment`), ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `SiteTree_EditorGroups`
--
ALTER TABLE `SiteTree_EditorGroups`
 ADD PRIMARY KEY (`ID`), ADD KEY `SiteTreeID` (`SiteTreeID`), ADD KEY `GroupID` (`GroupID`);

--
-- Indexes for table `SiteTree_ImageTracking`
--
ALTER TABLE `SiteTree_ImageTracking`
 ADD PRIMARY KEY (`ID`), ADD KEY `SiteTreeID` (`SiteTreeID`), ADD KEY `FileID` (`FileID`);

--
-- Indexes for table `SiteTree_LinkTracking`
--
ALTER TABLE `SiteTree_LinkTracking`
 ADD PRIMARY KEY (`ID`), ADD KEY `SiteTreeID` (`SiteTreeID`), ADD KEY `ChildID` (`ChildID`);

--
-- Indexes for table `SiteTree_Live`
--
ALTER TABLE `SiteTree_Live`
 ADD PRIMARY KEY (`ID`), ADD KEY `ParentID` (`ParentID`), ADD KEY `URLSegment` (`URLSegment`), ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `SiteTree_versions`
--
ALTER TABLE `SiteTree_versions`
 ADD PRIMARY KEY (`ID`), ADD KEY `RecordID_Version` (`RecordID`,`Version`), ADD KEY `RecordID` (`RecordID`), ADD KEY `Version` (`Version`), ADD KEY `AuthorID` (`AuthorID`), ADD KEY `PublisherID` (`PublisherID`), ADD KEY `ParentID` (`ParentID`), ADD KEY `URLSegment` (`URLSegment`), ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `SiteTree_ViewerGroups`
--
ALTER TABLE `SiteTree_ViewerGroups`
 ADD PRIMARY KEY (`ID`), ADD KEY `SiteTreeID` (`SiteTreeID`), ADD KEY `GroupID` (`GroupID`);

--
-- Indexes for table `Slider`
--
ALTER TABLE `Slider`
 ADD PRIMARY KEY (`ID`), ADD KEY `PhotoID` (`PhotoID`), ADD KEY `PageID` (`PageID`), ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `VirtualPage`
--
ALTER TABLE `VirtualPage`
 ADD PRIMARY KEY (`ID`), ADD KEY `CopyContentFromID` (`CopyContentFromID`);

--
-- Indexes for table `VirtualPage_Live`
--
ALTER TABLE `VirtualPage_Live`
 ADD PRIMARY KEY (`ID`), ADD KEY `CopyContentFromID` (`CopyContentFromID`);

--
-- Indexes for table `VirtualPage_versions`
--
ALTER TABLE `VirtualPage_versions`
 ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`), ADD KEY `RecordID` (`RecordID`), ADD KEY `Version` (`Version`), ADD KEY `CopyContentFromID` (`CopyContentFromID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ContactPage`
--
ALTER TABLE `ContactPage`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `ContactPage_Live`
--
ALTER TABLE `ContactPage_Live`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `ContactPage_versions`
--
ALTER TABLE `ContactPage_versions`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `ErrorPage`
--
ALTER TABLE `ErrorPage`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `ErrorPage_Live`
--
ALTER TABLE `ErrorPage_Live`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `ErrorPage_versions`
--
ALTER TABLE `ErrorPage_versions`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `File`
--
ALTER TABLE `File`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `GalleryImage`
--
ALTER TABLE `GalleryImage`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `Group`
--
ALTER TABLE `Group`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `Group_Members`
--
ALTER TABLE `Group_Members`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `Group_Roles`
--
ALTER TABLE `Group_Roles`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `LoginAttempt`
--
ALTER TABLE `LoginAttempt`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Member`
--
ALTER TABLE `Member`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `MemberPassword`
--
ALTER TABLE `MemberPassword`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `Page`
--
ALTER TABLE `Page`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `Page_Live`
--
ALTER TABLE `Page_Live`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `Page_versions`
--
ALTER TABLE `Page_versions`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `Permission`
--
ALTER TABLE `Permission`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `PermissionRole`
--
ALTER TABLE `PermissionRole`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `PermissionRoleCode`
--
ALTER TABLE `PermissionRoleCode`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Product`
--
ALTER TABLE `Product`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `Product_Live`
--
ALTER TABLE `Product_Live`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `Product_versions`
--
ALTER TABLE `Product_versions`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `RedirectorPage`
--
ALTER TABLE `RedirectorPage`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `RedirectorPage_Live`
--
ALTER TABLE `RedirectorPage_Live`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `RedirectorPage_versions`
--
ALTER TABLE `RedirectorPage_versions`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `SiteConfig`
--
ALTER TABLE `SiteConfig`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `SiteConfig_CreateTopLevelGroups`
--
ALTER TABLE `SiteConfig_CreateTopLevelGroups`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `SiteConfig_EditorGroups`
--
ALTER TABLE `SiteConfig_EditorGroups`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `SiteConfig_ViewerGroups`
--
ALTER TABLE `SiteConfig_ViewerGroups`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `SiteTree`
--
ALTER TABLE `SiteTree`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `SiteTree_EditorGroups`
--
ALTER TABLE `SiteTree_EditorGroups`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `SiteTree_ImageTracking`
--
ALTER TABLE `SiteTree_ImageTracking`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `SiteTree_LinkTracking`
--
ALTER TABLE `SiteTree_LinkTracking`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT for table `SiteTree_Live`
--
ALTER TABLE `SiteTree_Live`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `SiteTree_versions`
--
ALTER TABLE `SiteTree_versions`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=77;
--
-- AUTO_INCREMENT for table `SiteTree_ViewerGroups`
--
ALTER TABLE `SiteTree_ViewerGroups`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Slider`
--
ALTER TABLE `Slider`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `VirtualPage`
--
ALTER TABLE `VirtualPage`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `VirtualPage_Live`
--
ALTER TABLE `VirtualPage_Live`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `VirtualPage_versions`
--
ALTER TABLE `VirtualPage_versions`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
