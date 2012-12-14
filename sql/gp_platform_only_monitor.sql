-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- 主机: 10.48.179.112
-- 生成日期: 2012 年 12 月 14 日 18:36
-- 服务器版本: 5.5.27
-- PHP 版本: 5.3.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- 数据库: `gp_platform`
-- 

-- --------------------------------------------------------

-- 
-- 表的结构 `monitor_check_cpu_status`
-- 

CREATE TABLE `monitor_check_cpu_status` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `host_id` int(10) NOT NULL,
  `host_cpu_us` float NOT NULL,
  `host_cpu_sy` float NOT NULL,
  `host_cpu_ni` float NOT NULL,
  `host_cpu_id` float NOT NULL,
  `host_cpu_wa` float NOT NULL,
  `check_last_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='进程监控表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- 表的结构 `monitor_check_disk_status`
-- 

CREATE TABLE `monitor_check_disk_status` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `host_id` int(10) NOT NULL,
  `host_disk_use` float NOT NULL,
  `host_disk_free` float NOT NULL,
  `host_disk_total` float NOT NULL,
  `check_last_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='磁盘监控表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- 表的结构 `monitor_check_mem_status`
-- 

CREATE TABLE `monitor_check_mem_status` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `host_id` int(10) NOT NULL,
  `host_mem_use` float NOT NULL,
  `host_mem_free` float NOT NULL,
  `host_mem_cache` float NOT NULL,
  `host_mem_total` float NOT NULL,
  `host_cpu_wa` float NOT NULL,
  `check_last_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='进程监控表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

-- 
-- 表的结构 `monitor_check_port_status`
-- 

CREATE TABLE `monitor_check_port_status` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `item_id` int(10) NOT NULL COMMENT '项目id',
  `item_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '项目名称',
  `check_status` int(5) NOT NULL COMMENT '检查状态0失败、1成功',
  `check_last_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后更新时间',
  `failed_times` int(10) NOT NULL COMMENT '失败次数',
  PRIMARY KEY (`id`),
  UNIQUE KEY `item_id` (`item_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=32 ;

-- --------------------------------------------------------

-- 
-- 表的结构 `monitor_check_process_status`
-- 

CREATE TABLE `monitor_check_process_status` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `process_id` int(10) NOT NULL COMMENT '配置的进程编号',
  `local_process_id` int(10) NOT NULL COMMENT '本机进程id',
  `process_cpu` varchar(5) NOT NULL COMMENT '占用cpu百分比',
  `process_mem` varchar(5) NOT NULL COMMENT '占用内存百分比',
  `process_threads_num` int(10) NOT NULL COMMENT '线程数',
  `process_conn_num` int(10) NOT NULL COMMENT '连接数',
  `last_check_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `process_id` (`process_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='进程监控表' AUTO_INCREMENT=739 ;

-- --------------------------------------------------------

-- 
-- 表的结构 `monitor_moniter_port_list`
-- 

CREATE TABLE `monitor_moniter_port_list` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `item_id` int(10) NOT NULL,
  `item_name` varchar(20) NOT NULL,
  `item_host` varchar(20) NOT NULL,
  `item_port` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `item_id_2` (`item_id`),
  KEY `item_name` (`item_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='端口监控列表数据库' AUTO_INCREMENT=20 ;

-- --------------------------------------------------------

-- 
-- 表的结构 `monitor_moniter_process_list`
-- 

CREATE TABLE `monitor_moniter_process_list` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `process_cfg_id` int(10) NOT NULL COMMENT '进程配置编号',
  `process_cfg_name` varchar(20) NOT NULL COMMENT '进程配置名称',
  `process_cfg_desc` varchar(30) NOT NULL COMMENT '进程关键字,分隔，shell中grep区分用',
  `process_cfg_type` varchar(20) NOT NULL COMMENT '种类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `process_cfg_id` (`process_cfg_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='监控进程配置表' AUTO_INCREMENT=7 ;
