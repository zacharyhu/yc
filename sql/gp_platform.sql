-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2012 年 12 月 02 日 09:59
-- 服务器版本: 5.5.24-log
-- PHP 版本: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `gp_platform`
--

-- --------------------------------------------------------

--
-- 表的结构 `gp_data_daily_cash`
--

CREATE TABLE IF NOT EXISTS `gp_data_daily_cash` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `l_date` int(10) NOT NULL,
  `l_cash_sum` int(20) NOT NULL DEFAULT '0',
  `l_total_num` int(20) NOT NULL DEFAULT '0',
  `l_avg` float NOT NULL DEFAULT '0',
  `l_type` int(10) NOT NULL COMMENT '1为旧充值，2为新充值',
  PRIMARY KEY (`id`),
  KEY `l_date` (`l_date`),
  KEY `l_type` (`l_type`),
  KEY `l_cash_sum` (`l_cash_sum`),
  KEY `l_total_num` (`l_total_num`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='每天现金收入表' AUTO_INCREMENT=1251 ;

-- --------------------------------------------------------

--
-- 表的结构 `gp_data_daily_game`
--

CREATE TABLE IF NOT EXISTS `gp_data_daily_game` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `l_date` varchar(10) NOT NULL COMMENT '日期',
  `l_game_id` int(10) NOT NULL COMMENT 'gameid',
  `l_game_name` varchar(20) NOT NULL COMMENT '游戏名',
  `l_total_num` varchar(10) NOT NULL COMMENT '总次数',
  `l_user_num` int(10) NOT NULL COMMENT '人数',
  `l_avg_num` decimal(10,0) NOT NULL COMMENT '人均次数',
  `l_game_points` int(20) NOT NULL COMMENT '消耗游戏点数',
  `l_cash_sum` int(10) NOT NULL COMMENT '消费金额',
  `l_source` int(10) NOT NULL COMMENT '来源，105新疆，201老平台',
  PRIMARY KEY (`id`),
  KEY `l_date` (`l_date`,`l_game_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1155 ;

-- --------------------------------------------------------

--
-- 表的结构 `gp_data_daily_user`
--

CREATE TABLE IF NOT EXISTS `gp_data_daily_user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `l_date` int(10) NOT NULL,
  `l_active` int(10) NOT NULL,
  `l_new_num` int(5) NOT NULL,
  `l_new_gamer` int(5) NOT NULL,
  `l_source` int(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='活跃用户表' AUTO_INCREMENT=214 ;

-- --------------------------------------------------------

--
-- 表的结构 `gp_data_daily_vip`
--

CREATE TABLE IF NOT EXISTS `gp_data_daily_vip` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `l_date` int(10) NOT NULL COMMENT '日期',
  `l_mon_points` int(20) NOT NULL COMMENT '包月领工资游戏点',
  `l_mon_num` int(10) NOT NULL COMMENT '包月领工资人数',
  `l_coin_points` int(20) NOT NULL COMMENT '接金币游戏点',
  `l_coin_num` int(10) NOT NULL COMMENT '接金币人数',
  `l_ingame_num` int(10) NOT NULL COMMENT '参与游戏会员数',
  `l_incash_num` int(10) NOT NULL COMMENT '参与充值会员人数',
  `l_cash_sum` int(10) NOT NULL COMMENT '会员充值金额',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=256 ;

-- --------------------------------------------------------

--
-- 表的结构 `gp_gameid_cfg`
--

CREATE TABLE IF NOT EXISTS `gp_gameid_cfg` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `l_game_id` int(5) NOT NULL,
  `l_game_name` varchar(20) CHARACTER SET gbk NOT NULL,
  `l_game_desc` varchar(50) CHARACTER SET gbk NOT NULL,
  `l_game_spcode` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `game_id` (`l_game_id`),
  KEY `l_game_spcode` (`l_game_spcode`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='游戏id配置表' AUTO_INCREMENT=32 ;

-- --------------------------------------------------------

--
-- 表的结构 `gp_game_source_cfg`
--

CREATE TABLE IF NOT EXISTS `gp_game_source_cfg` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `l_source` int(5) NOT NULL COMMENT '来源编号',
  `l_source_name` varchar(20) NOT NULL COMMENT '来源名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='来源编号配置表' AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- 表的结构 `gp_gate_login`
--

CREATE TABLE IF NOT EXISTS `gp_gate_login` (
  `l_date` varchar(10) NOT NULL,
  `l_time` varchar(40) NOT NULL,
  `l_gate` varchar(20) NOT NULL,
  `vc_stb_id` varchar(50) NOT NULL,
  KEY `l_time` (`l_time`,`l_gate`,`vc_stb_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='门户登录表';

-- --------------------------------------------------------

--
-- 表的结构 `gp_recharge_cp`
--

CREATE TABLE IF NOT EXISTS `gp_recharge_cp` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `l_name` varchar(10) NOT NULL,
  `l_type` varchar(5) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `l_type` (`l_type`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='备注充值类别' AUTO_INCREMENT=25 ;

-- --------------------------------------------------------

--
-- 表的结构 `gp_recharge_his`
--

CREATE TABLE IF NOT EXISTS `gp_recharge_his` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `vc_stb_id` varchar(128) NOT NULL,
  `member_id` varchar(10) NOT NULL,
  `l_money` int(10) NOT NULL,
  `l_date` varchar(10) NOT NULL,
  `l_time` int(10) NOT NULL,
  `l_type` varchar(5) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `l_date` (`l_date`),
  KEY `l_time` (`l_time`),
  KEY `vc_stb_id` (`vc_stb_id`),
  KEY `member_id` (`member_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='充值历史记录表（每天更新）' AUTO_INCREMENT=821215 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
