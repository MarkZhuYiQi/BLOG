-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 18, 2016 at 11:55 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog_article`
--

CREATE TABLE IF NOT EXISTS `blog_article` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `nav` mediumint(8) NOT NULL,
  `title` varchar(25) NOT NULL,
  `author` varchar(20) NOT NULL,
  `from` varchar(20) NOT NULL,
  `type` varchar(30) NOT NULL,
  `content` text NOT NULL,
  `info` varchar(200) NOT NULL,
  `keyword` varchar(30) NOT NULL,
  `comment` tinyint(1) NOT NULL,
  `readcount` mediumint(8) NOT NULL,
  `readlimit` tinyint(1) NOT NULL DEFAULT '0',
  `thumbnail` varchar(50) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `blog_article`
--

INSERT INTO `blog_article` (`id`, `nav`, `title`, `author`, `from`, `type`, `content`, `info`, `keyword`, `comment`, `readcount`, `readlimit`, `thumbnail`, `date`) VALUES
(1, 0, '123123', '123123', '123123', '123123', '<p>123123</p>\r\n', '123123', '123123', 0, 0, 0, '/blog/uploads/20160718/20160718160735714.jpg', '2016-07-18 16:16:55');

-- --------------------------------------------------------

--
-- Table structure for table `blog_user`
--

CREATE TABLE IF NOT EXISTS `blog_user` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL COMMENT '用户名',
  `password` char(40) NOT NULL COMMENT '密码',
  `email` varchar(30) NOT NULL COMMENT '邮箱',
  `face` varchar(100) NOT NULL,
  `question` varchar(30) NOT NULL,
  `answer` varchar(40) NOT NULL,
  `authority` tinyint(1) NOT NULL DEFAULT '1',
  `date` datetime NOT NULL,
  `time` char(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `blog_user`
--

INSERT INTO `blog_user` (`id`, `username`, `password`, `email`, `face`, `question`, `answer`, `authority`, `date`, `time`) VALUES
(2, 'red', '78988010b890ce6f4d2136481f392787ec6d6106', 'red@163.com', '/BLOG/uploads/20160715/20160715212053609.jpg', 'red', '78988010b890ce6f4d2136481f392787ec6d6106', 1, '2016-07-01 00:00:00', ''),
(3, 'red2', '78988010b890ce6f4d2136481f392787ec6d6106', 'red@163.com', '/BLOG/uploads/20160715/20160715212053609.jpg', 'red', '78988010b890ce6f4d2136481f392787ec6d6106', 1, '2016-07-02 00:00:00', ''),
(4, 'red3', '78988010b890ce6f4d2136481f392787ec6d6106', 'red@163.com', '/BLOG/uploads/20160715/20160715212053609.jpg', 'red', '78988010b890ce6f4d2136481f392787ec6d6106', 1, '2016-07-03 00:00:00', ''),
(5, 'red4', '78988010b890ce6f4d2136481f392787ec6d6106', 'red@163.com', '/BLOG/uploads/20160715/20160715212053609.jpg', 'red', '78988010b890ce6f4d2136481f392787ec6d6106', 1, '2016-07-04 00:00:00', ''),
(6, 'red5', '78988010b890ce6f4d2136481f392787ec6d6106', 'red@163.com', '/BLOG/uploads/20160715/20160715212053609.jpg', 'red', '78988010b890ce6f4d2136481f392787ec6d6106', 1, '2016-07-05 00:00:00', ''),
(7, 'red6', '78988010b890ce6f4d2136481f392787ec6d6106', 'red@163.com', '/BLOG/uploads/20160715/20160715212053609.jpg', 'red', '78988010b890ce6f4d2136481f392787ec6d6106', 1, '2016-07-06 00:00:00', ''),
(8, 'red7', '78988010b890ce6f4d2136481f392787ec6d6106', 'red@163.com', '/BLOG/uploads/20160715/20160715212053609.jpg', 'red', '78988010b890ce6f4d2136481f392787ec6d6106', 1, '2016-07-07 00:00:00', ''),
(9, 'red8', '78988010b890ce6f4d2136481f392787ec6d6106', 'red@163.com', '/BLOG/uploads/20160715/20160715212053609.jpg', 'red', '78988010b890ce6f4d2136481f392787ec6d6106', 1, '2016-07-08 00:00:00', ''),
(10, 'red9', '78988010b890ce6f4d2136481f392787ec6d6106', 'red@163.com', '/BLOG/uploads/20160715/20160715212053609.jpg', 'red', '78988010b890ce6f4d2136481f392787ec6d6106', 1, '2016-07-09 00:00:00', ''),
(11, 'red10', '78988010b890ce6f4d2136481f392787ec6d6106', 'red@163.com', '/BLOG/uploads/20160715/20160715212053609.jpg', 'red', '78988010b890ce6f4d2136481f392787ec6d6106', 1, '2016-07-10 00:00:00', ''),
(12, 'red11', '78988010b890ce6f4d2136481f392787ec6d6106', 'red@163.com', '/BLOG/uploads/20160715/20160715212053609.jpg', 'red', '78988010b890ce6f4d2136481f392787ec6d6106', 1, '2016-07-11 00:00:00', ''),
(13, 'red12', '78988010b890ce6f4d2136481f392787ec6d6106', 'red@163.com', '/BLOG/uploads/20160715/20160715212053609.jpg', 'red', '78988010b890ce6f4d2136481f392787ec6d6106', 1, '2016-07-12 00:00:00', ''),
(14, 'red13', '78988010b890ce6f4d2136481f392787ec6d6106', 'red@163.com', '/BLOG/uploads/20160715/20160715212053609.jpg', 'red', '78988010b890ce6f4d2136481f392787ec6d6106', 1, '2016-07-13 00:00:00', ''),
(15, 'red14', '78988010b890ce6f4d2136481f392787ec6d6106', 'red@163.com', '/BLOG/uploads/20160715/20160715212053609.jpg', 'red', '78988010b890ce6f4d2136481f392787ec6d6106', 1, '2016-07-16 00:00:00', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
