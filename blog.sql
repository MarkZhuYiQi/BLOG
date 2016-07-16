-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 16, 2016 at 09:51 AM
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `blog_user`
--

INSERT INTO `blog_user` (`id`, `username`, `password`, `email`, `face`, `question`, `answer`, `authority`, `date`, `time`) VALUES
(2, 'red', '78988010b890ce6f4d2136481f392787ec6d6106', 'red@163.com', '/BLOG/uploads/20160715/20160715212053609.jpg', 'red', '78988010b890ce6f4d2136481f392787ec6d6106', 1, '2016-07-16 00:00:00', ''),
(3, 'red', '78988010b890ce6f4d2136481f392787ec6d6106', 'red@163.com', '/BLOG/uploads/20160715/20160715212053609.jpg', 'red', '78988010b890ce6f4d2136481f392787ec6d6106', 1, '2016-07-16 00:00:00', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
