-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2012 年 11 月 29 日 15:33
-- 服务器版本: 5.5.24-log
-- PHP 版本: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `test`
--

-- --------------------------------------------------------

--
-- 表的结构 `gp_data_daily_cash`
--

CREATE TABLE IF NOT EXISTS `gp_data_daily_cash` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `l_date` int(10) NOT NULL,
  `l_cash_sum` int(20) NOT NULL,
  `l_total_num` int(20) NOT NULL,
  `l_avg` float NOT NULL,
  `l_type` int(10) NOT NULL COMMENT '1为旧充值，2为新充值',
  PRIMARY KEY (`id`),
  KEY `l_date` (`l_date`),
  KEY `l_type` (`l_type`),
  KEY `l_cash_sum` (`l_cash_sum`),
  KEY `l_total_num` (`l_total_num`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='每天现金收入表' AUTO_INCREMENT=1010 ;

-- --------------------------------------------------------

--
-- 表的结构 `gp_recharge_cp`
--

CREATE TABLE IF NOT EXISTS `gp_recharge_cp` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `l_name` varchar(10) NOT NULL,
  `l_type` varchar(5) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `l_type` (`l_type`),
  KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='备注充值类别' AUTO_INCREMENT=13 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
