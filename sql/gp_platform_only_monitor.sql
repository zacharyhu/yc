-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- 主机: 10.48.179.112
-- 生成日期: 2012 年 12 月 17 日 18:47
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
  PRIMARY KEY (`id`),
  KEY `host_id` (`host_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='进程监控表' AUTO_INCREMENT=34 ;

-- 
-- 导出表中的数据 `monitor_check_cpu_status`
-- 

INSERT INTO `monitor_check_cpu_status` VALUES (1, 1001, 0, 0.1, 0, 99.9, 0, '2012-12-17 17:15:35');
INSERT INTO `monitor_check_cpu_status` VALUES (2, 1115, 0, 0.1, 0, 99.9, 0, '2012-12-17 17:24:12');
INSERT INTO `monitor_check_cpu_status` VALUES (3, 118, 6.3, 0.8, 0, 92.3, 0.4, '2012-12-17 17:53:55');
INSERT INTO `monitor_check_cpu_status` VALUES (4, 118, 6.3, 0.8, 0, 92.3, 0.4, '2012-12-17 17:54:35');
INSERT INTO `monitor_check_cpu_status` VALUES (5, 118, 6.3, 0.8, 0, 92.3, 0.4, '2012-12-17 17:56:20');
INSERT INTO `monitor_check_cpu_status` VALUES (6, 118, 6.3, 0.8, 0, 92.3, 0.4, '2012-12-17 17:59:18');
INSERT INTO `monitor_check_cpu_status` VALUES (7, 118, 6.3, 0.8, 0, 92.3, 0.4, '2012-12-17 18:01:57');
INSERT INTO `monitor_check_cpu_status` VALUES (8, 118, 6.3, 0.8, 0, 92.3, 0.4, '2012-12-17 18:02:43');
INSERT INTO `monitor_check_cpu_status` VALUES (9, 118, 6.3, 0.8, 0, 92.3, 0.4, '2012-12-17 18:07:31');
INSERT INTO `monitor_check_cpu_status` VALUES (10, 118, 6.3, 0.8, 0, 92.3, 0.4, '2012-12-17 18:07:48');
INSERT INTO `monitor_check_cpu_status` VALUES (11, 118, 6.3, 0.8, 0, 92.3, 0.4, '2012-12-17 18:08:24');
INSERT INTO `monitor_check_cpu_status` VALUES (12, 118, 6.3, 0.8, 0, 92.3, 0.4, '2012-12-17 18:11:01');
INSERT INTO `monitor_check_cpu_status` VALUES (13, 118, 6.3, 0.8, 0, 92.3, 0.4, '2012-12-17 18:11:45');
INSERT INTO `monitor_check_cpu_status` VALUES (14, 118, 6.3, 0.8, 0, 92.3, 0.4, '2012-12-17 18:16:00');
INSERT INTO `monitor_check_cpu_status` VALUES (15, 119, 1.6, 0.3, 0, 97.6, 0.4, '2012-12-17 18:19:38');
INSERT INTO `monitor_check_cpu_status` VALUES (16, 120, 0.3, 0.2, 0, 99.2, 0.3, '2012-12-17 18:20:12');
INSERT INTO `monitor_check_cpu_status` VALUES (17, 118, 6.3, 0.8, 0, 92.3, 0.4, '2012-12-17 18:21:00');
INSERT INTO `monitor_check_cpu_status` VALUES (18, 119, 1.6, 0.3, 0, 97.6, 0.4, '2012-12-17 18:24:23');
INSERT INTO `monitor_check_cpu_status` VALUES (19, 119, 1.6, 0.3, 0, 97.6, 0.4, '2012-12-17 18:24:33');
INSERT INTO `monitor_check_cpu_status` VALUES (20, 119, 1.6, 0.3, 0, 97.6, 0.4, '2012-12-17 18:24:38');
INSERT INTO `monitor_check_cpu_status` VALUES (21, 120, 0.3, 0.2, 0, 99.2, 0.3, '2012-12-17 18:24:40');
INSERT INTO `monitor_check_cpu_status` VALUES (22, 120, 0.3, 0.2, 0, 99.2, 0.3, '2012-12-17 18:25:11');
INSERT INTO `monitor_check_cpu_status` VALUES (23, 118, 6.3, 0.8, 0, 92.3, 0.4, '2012-12-17 18:26:01');
INSERT INTO `monitor_check_cpu_status` VALUES (24, 1115, 0, 0.1, 0, 99.9, 0, '2012-12-17 18:27:35');
INSERT INTO `monitor_check_cpu_status` VALUES (25, 119, 1.6, 0.3, 0, 97.6, 0.4, '2012-12-17 18:29:38');
INSERT INTO `monitor_check_cpu_status` VALUES (26, 120, 0.3, 0.2, 0, 99.2, 0.3, '2012-12-17 18:30:12');
INSERT INTO `monitor_check_cpu_status` VALUES (27, 1113, 0.3, 0.1, 0, 99.5, 0, '2012-12-17 18:30:17');
INSERT INTO `monitor_check_cpu_status` VALUES (28, 1113, 0.3, 0.1, 0, 99.5, 0, '2012-12-17 18:30:59');
INSERT INTO `monitor_check_cpu_status` VALUES (29, 118, 6.3, 0.8, 0, 92.3, 0.4, '2012-12-17 18:31:01');
INSERT INTO `monitor_check_cpu_status` VALUES (30, 119, 1.6, 0.3, 0, 97.6, 0.4, '2012-12-17 18:34:38');
INSERT INTO `monitor_check_cpu_status` VALUES (31, 120, 0.3, 0.2, 0, 99.2, 0.3, '2012-12-17 18:35:11');
INSERT INTO `monitor_check_cpu_status` VALUES (32, 1113, 0.3, 0.1, 0, 99.5, 0, '2012-12-17 18:35:58');
INSERT INTO `monitor_check_cpu_status` VALUES (33, 118, 6.3, 0.8, 0, 92.3, 0.4, '2012-12-17 18:36:01');

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
  `host_disk_per` float NOT NULL COMMENT '百分比',
  `check_last_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `host_id` (`host_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='磁盘监控表' AUTO_INCREMENT=34 ;

-- 
-- 导出表中的数据 `monitor_check_disk_status`
-- 

INSERT INTO `monitor_check_disk_status` VALUES (1, 1001, 7.7, 40, 50, 17, '2012-12-17 17:15:35');
INSERT INTO `monitor_check_disk_status` VALUES (2, 1115, 7.7, 40, 50, 17, '2012-12-17 17:24:12');
INSERT INTO `monitor_check_disk_status` VALUES (3, 118, 26, 21, 50, 56, '2012-12-17 17:53:55');
INSERT INTO `monitor_check_disk_status` VALUES (4, 118, 26, 21, 50, 56, '2012-12-17 17:54:35');
INSERT INTO `monitor_check_disk_status` VALUES (5, 118, 26, 21, 50, 56, '2012-12-17 17:56:20');
INSERT INTO `monitor_check_disk_status` VALUES (6, 118, 26, 21, 50, 56, '2012-12-17 17:59:18');
INSERT INTO `monitor_check_disk_status` VALUES (7, 118, 26, 21, 50, 56, '2012-12-17 18:01:58');
INSERT INTO `monitor_check_disk_status` VALUES (8, 118, 26, 21, 50, 56, '2012-12-17 18:02:43');
INSERT INTO `monitor_check_disk_status` VALUES (9, 118, 26, 21, 50, 56, '2012-12-17 18:07:31');
INSERT INTO `monitor_check_disk_status` VALUES (10, 118, 26, 21, 50, 56, '2012-12-17 18:07:48');
INSERT INTO `monitor_check_disk_status` VALUES (11, 118, 26, 21, 50, 56, '2012-12-17 18:08:24');
INSERT INTO `monitor_check_disk_status` VALUES (12, 118, 26, 21, 50, 56, '2012-12-17 18:11:01');
INSERT INTO `monitor_check_disk_status` VALUES (13, 118, 26, 21, 50, 56, '2012-12-17 18:11:45');
INSERT INTO `monitor_check_disk_status` VALUES (14, 118, 26, 21, 50, 56, '2012-12-17 18:16:00');
INSERT INTO `monitor_check_disk_status` VALUES (15, 119, 38, 9.3, 50, 81, '2012-12-17 18:19:38');
INSERT INTO `monitor_check_disk_status` VALUES (16, 120, 28, 19, 50, 60, '2012-12-17 18:20:12');
INSERT INTO `monitor_check_disk_status` VALUES (17, 118, 26, 21, 50, 56, '2012-12-17 18:21:01');
INSERT INTO `monitor_check_disk_status` VALUES (18, 119, 38, 9.3, 50, 81, '2012-12-17 18:24:24');
INSERT INTO `monitor_check_disk_status` VALUES (19, 119, 38, 9.3, 50, 81, '2012-12-17 18:24:33');
INSERT INTO `monitor_check_disk_status` VALUES (20, 119, 38, 9.3, 50, 81, '2012-12-17 18:24:38');
INSERT INTO `monitor_check_disk_status` VALUES (21, 120, 28, 19, 50, 60, '2012-12-17 18:24:40');
INSERT INTO `monitor_check_disk_status` VALUES (22, 120, 28, 19, 50, 60, '2012-12-17 18:25:11');
INSERT INTO `monitor_check_disk_status` VALUES (23, 118, 26, 21, 50, 56, '2012-12-17 18:26:01');
INSERT INTO `monitor_check_disk_status` VALUES (24, 1115, 7.7, 40, 50, 17, '2012-12-17 18:27:35');
INSERT INTO `monitor_check_disk_status` VALUES (25, 119, 38, 9.3, 50, 81, '2012-12-17 18:29:38');
INSERT INTO `monitor_check_disk_status` VALUES (26, 120, 28, 19, 50, 60, '2012-12-17 18:30:12');
INSERT INTO `monitor_check_disk_status` VALUES (27, 1113, 21, 26, 50, 45, '2012-12-17 18:30:17');
INSERT INTO `monitor_check_disk_status` VALUES (28, 1113, 21, 26, 50, 45, '2012-12-17 18:30:59');
INSERT INTO `monitor_check_disk_status` VALUES (29, 118, 26, 21, 50, 56, '2012-12-17 18:31:01');
INSERT INTO `monitor_check_disk_status` VALUES (30, 119, 38, 9.3, 50, 81, '2012-12-17 18:34:38');
INSERT INTO `monitor_check_disk_status` VALUES (31, 120, 28, 19, 50, 60, '2012-12-17 18:35:11');
INSERT INTO `monitor_check_disk_status` VALUES (32, 1113, 21, 26, 50, 45, '2012-12-17 18:35:59');
INSERT INTO `monitor_check_disk_status` VALUES (33, 118, 26, 21, 50, 56, '2012-12-17 18:36:01');

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
  `host_mem_swap` float NOT NULL,
  `check_last_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `host_id` (`host_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='进程监控表' AUTO_INCREMENT=34 ;

-- 
-- 导出表中的数据 `monitor_check_mem_status`
-- 

INSERT INTO `monitor_check_mem_status` VALUES (1, 1001, 536, 284, 6983, 0, 0, '2012-12-17 17:15:35');
INSERT INTO `monitor_check_mem_status` VALUES (2, 1115, 537, 284, 6983, 0, 0, '2012-12-17 17:24:12');
INSERT INTO `monitor_check_mem_status` VALUES (3, 118, 427, 52, 1530, 0, 0, '2012-12-17 17:53:55');
INSERT INTO `monitor_check_mem_status` VALUES (4, 118, 428, 54, 1527, 0, 0, '2012-12-17 17:54:35');
INSERT INTO `monitor_check_mem_status` VALUES (5, 118, 431, 51, 1526, 0, 0, '2012-12-17 17:56:20');
INSERT INTO `monitor_check_mem_status` VALUES (6, 118, 438, 53, 1518, 0, 0, '2012-12-17 17:59:18');
INSERT INTO `monitor_check_mem_status` VALUES (7, 118, 443, 50, 1516, 0, 0, '2012-12-17 18:01:58');
INSERT INTO `monitor_check_mem_status` VALUES (8, 118, 444, 50, 1515, 0, 0, '2012-12-17 18:02:43');
INSERT INTO `monitor_check_mem_status` VALUES (9, 118, 453, 52, 1504, 0, 0, '2012-12-17 18:07:31');
INSERT INTO `monitor_check_mem_status` VALUES (10, 118, 452, 51, 1506, 0, 0, '2012-12-17 18:07:48');
INSERT INTO `monitor_check_mem_status` VALUES (11, 118, 454, 51, 1504, 0, 0, '2012-12-17 18:08:24');
INSERT INTO `monitor_check_mem_status` VALUES (12, 118, 461, 56, 1493, 0, 0, '2012-12-17 18:11:01');
INSERT INTO `monitor_check_mem_status` VALUES (13, 118, 461, 50, 1498, 0, 0, '2012-12-17 18:11:45');
INSERT INTO `monitor_check_mem_status` VALUES (14, 118, 471, 54, 1484, 0, 0, '2012-12-17 18:16:00');
INSERT INTO `monitor_check_mem_status` VALUES (15, 119, 381, 55, 1530, 0, 0, '2012-12-17 18:19:38');
INSERT INTO `monitor_check_mem_status` VALUES (16, 120, 327, 55, 1496, 0, 0, '2012-12-17 18:20:12');
INSERT INTO `monitor_check_mem_status` VALUES (17, 118, 503, 55, 1451, 0, 0, '2012-12-17 18:21:00');
INSERT INTO `monitor_check_mem_status` VALUES (18, 119, 383, 50, 1533, 0, 0, '2012-12-17 18:24:23');
INSERT INTO `monitor_check_mem_status` VALUES (19, 119, 383, 53, 1530, 0, 0, '2012-12-17 18:24:33');
INSERT INTO `monitor_check_mem_status` VALUES (20, 119, 384, 55, 1528, 0, 0, '2012-12-17 18:24:38');
INSERT INTO `monitor_check_mem_status` VALUES (21, 120, 327, 54, 1497, 0, 0, '2012-12-17 18:24:40');
INSERT INTO `monitor_check_mem_status` VALUES (22, 120, 328, 54, 1497, 0, 0, '2012-12-17 18:25:11');
INSERT INTO `monitor_check_mem_status` VALUES (23, 118, 506, 54, 1452, 0, 0, '2012-12-17 18:26:01');
INSERT INTO `monitor_check_mem_status` VALUES (24, 1115, 541, 279, 6984, 0, 0, '2012-12-17 18:27:35');
INSERT INTO `monitor_check_mem_status` VALUES (25, 119, 386, 54, 1526, 0, 0, '2012-12-17 18:29:38');
INSERT INTO `monitor_check_mem_status` VALUES (26, 120, 328, 53, 1497, 0, 0, '2012-12-17 18:30:12');
INSERT INTO `monitor_check_mem_status` VALUES (27, 1113, 3148, 266, 4421, 0, 12, '2012-12-17 18:30:17');
INSERT INTO `monitor_check_mem_status` VALUES (28, 1113, 3132, 280, 4423, 0, 12, '2012-12-17 18:30:59');
INSERT INTO `monitor_check_mem_status` VALUES (29, 118, 509, 57, 1447, 0, 0, '2012-12-17 18:31:01');
INSERT INTO `monitor_check_mem_status` VALUES (30, 119, 388, 55, 1523, 0, 0, '2012-12-17 18:34:38');
INSERT INTO `monitor_check_mem_status` VALUES (31, 120, 327, 53, 1497, 0, 0, '2012-12-17 18:35:11');
INSERT INTO `monitor_check_mem_status` VALUES (32, 1113, 3140, 262, 4433, 0, 12, '2012-12-17 18:35:59');
INSERT INTO `monitor_check_mem_status` VALUES (33, 118, 512, 54, 1447, 0, 0, '2012-12-17 18:36:01');

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

-- 
-- 导出表中的数据 `monitor_check_port_status`
-- 

INSERT INTO `monitor_check_port_status` VALUES (14, 1001, '亿家游麻将', 1, '2012-12-17 18:33:01', 0);
INSERT INTO `monitor_check_port_status` VALUES (15, 1002, '斗地主', 1, '2012-12-17 18:33:01', 0);
INSERT INTO `monitor_check_port_status` VALUES (16, 1003, '飞行棋', 1, '2012-12-17 18:33:01', 0);
INSERT INTO `monitor_check_port_status` VALUES (17, 1004, '关牌', 1, '2012-12-17 18:33:01', 0);
INSERT INTO `monitor_check_port_status` VALUES (18, 1005, '杭麻', 1, '2012-12-17 18:33:01', 0);
INSERT INTO `monitor_check_port_status` VALUES (19, 1006, '牛牛', 1, '2012-12-17 18:33:01', 0);
INSERT INTO `monitor_check_port_status` VALUES (20, 1007, '三扣一', 1, '2012-12-17 18:33:01', 0);
INSERT INTO `monitor_check_port_status` VALUES (21, 1008, '双扣', 1, '2012-12-17 18:33:01', 0);
INSERT INTO `monitor_check_port_status` VALUES (22, 1009, '梭哈', 1, '2012-12-17 18:33:01', 0);
INSERT INTO `monitor_check_port_status` VALUES (23, 1010, '象棋', 1, '2012-12-17 18:33:01', 0);
INSERT INTO `monitor_check_port_status` VALUES (24, 1011, '五子棋禁手', 1, '2012-12-17 18:33:01', 0);
INSERT INTO `monitor_check_port_status` VALUES (26, 1012, '五子棋非禁手', 1, '2012-12-17 18:33:02', 0);
INSERT INTO `monitor_check_port_status` VALUES (27, 1013, '三张牌', 1, '2012-12-17 18:33:02', 0);
INSERT INTO `monitor_check_port_status` VALUES (28, 1014, '百变双扣', 1, '2012-12-17 18:33:02', 0);
INSERT INTO `monitor_check_port_status` VALUES (29, 1015, '三英战吕布', 1, '2012-12-17 18:33:02', 0);
INSERT INTO `monitor_check_port_status` VALUES (30, 1016, '四国军棋', 1, '2012-12-17 18:33:02', 0);
INSERT INTO `monitor_check_port_status` VALUES (31, 1017, '百变双扣积分版', 1, '2012-12-17 18:33:02', 0);

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
  KEY `process_id` (`process_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='进程监控表' AUTO_INCREMENT=35 ;

-- 
-- 导出表中的数据 `monitor_check_process_status`
-- 

INSERT INTO `monitor_check_process_status` VALUES (1, 2001, 29656, '4.2', '9.8', 54, 31, '2012-12-17 18:11:46');
INSERT INTO `monitor_check_process_status` VALUES (2, 2002, 29658, '7.4', '8.5', 53, 15, '2012-12-17 18:11:46');
INSERT INTO `monitor_check_process_status` VALUES (3, 2001, 29656, '4.2', '10.0', 54, 30, '2012-12-17 18:16:01');
INSERT INTO `monitor_check_process_status` VALUES (4, 2002, 29658, '7.5', '8.6', 53, 15, '2012-12-17 18:16:01');
INSERT INTO `monitor_check_process_status` VALUES (5, 2001, 26013, '1.5', '7.0', 44, 48, '2012-12-17 18:19:39');
INSERT INTO `monitor_check_process_status` VALUES (6, 2002, 26015, '2.4', '7.3', 44, 5, '2012-12-17 18:19:39');
INSERT INTO `monitor_check_process_status` VALUES (7, 2001, 15720, '0.0', '5.2', 32, 5, '2012-12-17 18:20:12');
INSERT INTO `monitor_check_process_status` VALUES (8, 2002, 15722, '0.1', '6.1', 40, 2, '2012-12-17 18:20:12');
INSERT INTO `monitor_check_process_status` VALUES (9, 2001, 29656, '4.2', '11.6', 54, 30, '2012-12-17 18:21:01');
INSERT INTO `monitor_check_process_status` VALUES (10, 2002, 29658, '7.5', '8.8', 53, 15, '2012-12-17 18:21:01');
INSERT INTO `monitor_check_process_status` VALUES (11, 2003, 26013, '1.5', '7.0', 44, 48, '2012-12-17 18:24:24');
INSERT INTO `monitor_check_process_status` VALUES (12, 2004, 26015, '2.4', '7.4', 44, 8, '2012-12-17 18:24:24');
INSERT INTO `monitor_check_process_status` VALUES (13, 2003, 26013, '1.5', '7.0', 44, 48, '2012-12-17 18:24:34');
INSERT INTO `monitor_check_process_status` VALUES (14, 2004, 26015, '2.4', '7.4', 44, 8, '2012-12-17 18:24:34');
INSERT INTO `monitor_check_process_status` VALUES (15, 2003, 26013, '1.5', '7.0', 44, 48, '2012-12-17 18:24:38');
INSERT INTO `monitor_check_process_status` VALUES (16, 2004, 26015, '2.4', '7.4', 44, 8, '2012-12-17 18:24:38');
INSERT INTO `monitor_check_process_status` VALUES (17, 2005, 15720, '0.0', '5.2', 32, 5, '2012-12-17 18:24:40');
INSERT INTO `monitor_check_process_status` VALUES (18, 2006, 15722, '0.1', '6.1', 40, 2, '2012-12-17 18:24:40');
INSERT INTO `monitor_check_process_status` VALUES (19, 2005, 15720, '0.0', '5.2', 32, 5, '2012-12-17 18:25:12');
INSERT INTO `monitor_check_process_status` VALUES (20, 2006, 15722, '0.1', '6.1', 40, 2, '2012-12-17 18:25:12');
INSERT INTO `monitor_check_process_status` VALUES (21, 2001, 29656, '4.3', '11.6', 54, 30, '2012-12-17 18:26:01');
INSERT INTO `monitor_check_process_status` VALUES (22, 2002, 29658, '7.5', '8.9', 53, 15, '2012-12-17 18:26:01');
INSERT INTO `monitor_check_process_status` VALUES (23, 2003, 26013, '1.5', '7.1', 44, 49, '2012-12-17 18:29:38');
INSERT INTO `monitor_check_process_status` VALUES (24, 2004, 26015, '2.4', '7.4', 44, 7, '2012-12-17 18:29:38');
INSERT INTO `monitor_check_process_status` VALUES (25, 2005, 15720, '0.0', '5.2', 32, 5, '2012-12-17 18:30:12');
INSERT INTO `monitor_check_process_status` VALUES (26, 2006, 15722, '0.1', '6.1', 40, 2, '2012-12-17 18:30:12');
INSERT INTO `monitor_check_process_status` VALUES (27, 2001, 29656, '4.3', '11.6', 54, 30, '2012-12-17 18:31:01');
INSERT INTO `monitor_check_process_status` VALUES (28, 2002, 29658, '7.6', '9.1', 53, 15, '2012-12-17 18:31:01');
INSERT INTO `monitor_check_process_status` VALUES (29, 2003, 26013, '1.5', '7.2', 44, 49, '2012-12-17 18:34:38');
INSERT INTO `monitor_check_process_status` VALUES (30, 2004, 26015, '2.4', '7.5', 44, 7, '2012-12-17 18:34:38');
INSERT INTO `monitor_check_process_status` VALUES (31, 2005, 15720, '0.0', '5.2', 32, 5, '2012-12-17 18:35:12');
INSERT INTO `monitor_check_process_status` VALUES (32, 2006, 15722, '0.1', '6.1', 40, 2, '2012-12-17 18:35:12');
INSERT INTO `monitor_check_process_status` VALUES (33, 2001, 29656, '4.4', '11.6', 54, 30, '2012-12-17 18:36:01');
INSERT INTO `monitor_check_process_status` VALUES (34, 2002, 29658, '7.7', '9.2', 53, 15, '2012-12-17 18:36:02');

-- --------------------------------------------------------

-- 
-- 表的结构 `monitor_check_traffic_status`
-- 

CREATE TABLE `monitor_check_traffic_status` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `host_id` int(10) NOT NULL,
  `host_traffic_dev` varchar(10) NOT NULL COMMENT '设备id',
  `host_traffic_rx` float NOT NULL,
  `host_traffic_tx` float NOT NULL,
  `check_last_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='进程监控表' AUTO_INCREMENT=155 ;

-- 
-- 导出表中的数据 `monitor_check_traffic_status`
-- 

INSERT INTO `monitor_check_traffic_status` VALUES (1, 1001, 'eth0', 11148.5, 18879.1, '2012-12-17 17:16:35');
INSERT INTO `monitor_check_traffic_status` VALUES (2, 1001, 'eth0', 10928.4, 29172.5, '2012-12-17 17:17:35');
INSERT INTO `monitor_check_traffic_status` VALUES (3, 1001, 'eth0', 8940.18, 13366.8, '2012-12-17 17:18:35');
INSERT INTO `monitor_check_traffic_status` VALUES (4, 1115, 'eth0', 9570.48, 14474.5, '2012-12-17 17:25:12');
INSERT INTO `monitor_check_traffic_status` VALUES (5, 1115, 'eth0', 10735.7, 41946.5, '2012-12-17 17:26:12');
INSERT INTO `monitor_check_traffic_status` VALUES (6, 1115, 'eth0', 10490.3, 16262.9, '2012-12-17 17:27:12');
INSERT INTO `monitor_check_traffic_status` VALUES (7, 1115, 'eth0', 12204.3, 28999.4, '2012-12-17 17:28:12');
INSERT INTO `monitor_check_traffic_status` VALUES (8, 1115, 'eth0', 11126.7, 39626.3, '2012-12-17 17:29:12');
INSERT INTO `monitor_check_traffic_status` VALUES (9, 1115, 'eth0', 13022.5, 60835.4, '2012-12-17 17:30:13');
INSERT INTO `monitor_check_traffic_status` VALUES (10, 1115, 'eth0', 13565.7, 70442.5, '2012-12-17 17:31:13');
INSERT INTO `monitor_check_traffic_status` VALUES (11, 1115, 'eth0', 13706.2, 103785, '2012-12-17 17:32:13');
INSERT INTO `monitor_check_traffic_status` VALUES (12, 1115, 'eth0', 15436.9, 45758.5, '2012-12-17 17:33:13');
INSERT INTO `monitor_check_traffic_status` VALUES (13, 1115, 'eth0', 13154.2, 55378.9, '2012-12-17 17:34:13');
INSERT INTO `monitor_check_traffic_status` VALUES (14, 1115, 'eth0', 11328.1, 27891.1, '2012-12-17 17:35:13');
INSERT INTO `monitor_check_traffic_status` VALUES (15, 1115, 'eth0', 15710.8, 73151.2, '2012-12-17 17:36:13');
INSERT INTO `monitor_check_traffic_status` VALUES (16, 1115, 'eth0', 20790.7, 159587, '2012-12-17 17:37:13');
INSERT INTO `monitor_check_traffic_status` VALUES (17, 1115, 'eth0', 21590.7, 181944, '2012-12-17 17:38:13');
INSERT INTO `monitor_check_traffic_status` VALUES (18, 1115, 'eth0', 21776.7, 157565, '2012-12-17 17:39:13');
INSERT INTO `monitor_check_traffic_status` VALUES (19, 1115, 'eth0', 13407.5, 52050.6, '2012-12-17 17:40:13');
INSERT INTO `monitor_check_traffic_status` VALUES (20, 1115, 'eth0', 7371.23, 22858.3, '2012-12-17 17:41:13');
INSERT INTO `monitor_check_traffic_status` VALUES (21, 1115, 'eth0', 9196.98, 41082.5, '2012-12-17 17:42:13');
INSERT INTO `monitor_check_traffic_status` VALUES (22, 1115, 'eth0', 13346.2, 81962.8, '2012-12-17 17:43:13');
INSERT INTO `monitor_check_traffic_status` VALUES (23, 1115, 'eth0', 9683.08, 13037.6, '2012-12-17 17:44:13');
INSERT INTO `monitor_check_traffic_status` VALUES (24, 1115, 'eth0', 14024.3, 34253, '2012-12-17 17:45:13');
INSERT INTO `monitor_check_traffic_status` VALUES (25, 1115, 'eth0', 11338.2, 28830, '2012-12-17 17:46:14');
INSERT INTO `monitor_check_traffic_status` VALUES (26, 1115, 'eth0', 10241.5, 39314.6, '2012-12-17 17:47:14');
INSERT INTO `monitor_check_traffic_status` VALUES (27, 1115, 'eth0', 13713.4, 54596.7, '2012-12-17 17:48:14');
INSERT INTO `monitor_check_traffic_status` VALUES (28, 1115, 'eth0', 13270.5, 71356.6, '2012-12-17 17:49:14');
INSERT INTO `monitor_check_traffic_status` VALUES (29, 1115, 'eth0', 15049.5, 34429.1, '2012-12-17 17:50:14');
INSERT INTO `monitor_check_traffic_status` VALUES (30, 1115, 'eth0', 12033.6, 27132.2, '2012-12-17 17:51:14');
INSERT INTO `monitor_check_traffic_status` VALUES (31, 1115, 'eth0', 12847.5, 23449.9, '2012-12-17 17:52:14');
INSERT INTO `monitor_check_traffic_status` VALUES (32, 1115, 'eth0', 12185.5, 31858.9, '2012-12-17 17:53:14');
INSERT INTO `monitor_check_traffic_status` VALUES (33, 1115, 'eth0', 10486.4, 34593.8, '2012-12-17 17:54:14');
INSERT INTO `monitor_check_traffic_status` VALUES (34, 1115, 'eth0', 16117.9, 47745.4, '2012-12-17 17:55:14');
INSERT INTO `monitor_check_traffic_status` VALUES (35, 118, 'eth0', 7699.23, 12013.7, '2012-12-17 17:55:35');
INSERT INTO `monitor_check_traffic_status` VALUES (36, 1115, 'eth0', 17232.4, 110556, '2012-12-17 17:56:14');
INSERT INTO `monitor_check_traffic_status` VALUES (37, 118, 'eth0', 9730.25, 14759.2, '2012-12-17 17:56:35');
INSERT INTO `monitor_check_traffic_status` VALUES (38, 1115, 'eth0', 17871.4, 63093.8, '2012-12-17 17:57:14');
INSERT INTO `monitor_check_traffic_status` VALUES (39, 118, 'eth0', 12247.7, 19487.7, '2012-12-17 17:57:35');
INSERT INTO `monitor_check_traffic_status` VALUES (40, 1115, 'eth0', 22059.9, 84874.7, '2012-12-17 17:58:14');
INSERT INTO `monitor_check_traffic_status` VALUES (41, 118, 'eth0', 12929.3, 19442, '2012-12-17 17:58:35');
INSERT INTO `monitor_check_traffic_status` VALUES (42, 1115, 'eth0', 21135.6, 89796.6, '2012-12-17 17:59:14');
INSERT INTO `monitor_check_traffic_status` VALUES (43, 118, 'eth0', 10735.3, 15632.9, '2012-12-17 17:59:36');
INSERT INTO `monitor_check_traffic_status` VALUES (44, 1115, 'eth0', 16576.1, 39132.2, '2012-12-17 18:00:14');
INSERT INTO `monitor_check_traffic_status` VALUES (45, 118, 'eth0', 9289.22, 14050.3, '2012-12-17 18:00:36');
INSERT INTO `monitor_check_traffic_status` VALUES (46, 1115, 'eth0', 12422.1, 57987.6, '2012-12-17 18:01:14');
INSERT INTO `monitor_check_traffic_status` VALUES (47, 118, 'eth0', 6333.63, 10017.8, '2012-12-17 18:01:36');
INSERT INTO `monitor_check_traffic_status` VALUES (48, 1115, 'eth0', 12429, 42023.5, '2012-12-17 18:02:15');
INSERT INTO `monitor_check_traffic_status` VALUES (49, 118, 'eth0', 9756.42, 15519.7, '2012-12-17 18:02:36');
INSERT INTO `monitor_check_traffic_status` VALUES (50, 1115, 'eth0', 22620.5, 99533, '2012-12-17 18:03:15');
INSERT INTO `monitor_check_traffic_status` VALUES (51, 118, 'eth0', 10640.4, 17608.7, '2012-12-17 18:03:36');
INSERT INTO `monitor_check_traffic_status` VALUES (52, 1115, 'eth0', 17677.6, 83862.3, '2012-12-17 18:04:15');
INSERT INTO `monitor_check_traffic_status` VALUES (53, 118, 'eth0', 9678.88, 14863.5, '2012-12-17 18:04:37');
INSERT INTO `monitor_check_traffic_status` VALUES (54, 1115, 'eth0', 14532.5, 64421.5, '2012-12-17 18:05:15');
INSERT INTO `monitor_check_traffic_status` VALUES (55, 118, 'eth0', 7751.5, 11949.6, '2012-12-17 18:05:37');
INSERT INTO `monitor_check_traffic_status` VALUES (56, 1115, 'eth0', 12280.2, 18980.8, '2012-12-17 18:06:15');
INSERT INTO `monitor_check_traffic_status` VALUES (57, 118, 'eth0', 9361.8, 15674.1, '2012-12-17 18:06:37');
INSERT INTO `monitor_check_traffic_status` VALUES (58, 1115, 'eth0', 14022.3, 58987.1, '2012-12-17 18:07:15');
INSERT INTO `monitor_check_traffic_status` VALUES (59, 118, 'eth0', 8540.47, 13406.5, '2012-12-17 18:07:37');
INSERT INTO `monitor_check_traffic_status` VALUES (60, 1115, 'eth0', 14559.5, 39137.6, '2012-12-17 18:08:15');
INSERT INTO `monitor_check_traffic_status` VALUES (61, 118, 'eth0', 9341.7, 13926.2, '2012-12-17 18:08:37');
INSERT INTO `monitor_check_traffic_status` VALUES (62, 1115, 'eth0', 12421.8, 21605.3, '2012-12-17 18:09:15');
INSERT INTO `monitor_check_traffic_status` VALUES (63, 118, 'eth0', 8190.73, 13086.6, '2012-12-17 18:09:37');
INSERT INTO `monitor_check_traffic_status` VALUES (64, 1115, 'eth0', 17184.5, 30677.9, '2012-12-17 18:10:15');
INSERT INTO `monitor_check_traffic_status` VALUES (65, 118, 'eth0', 9266.83, 15557.7, '2012-12-17 18:10:38');
INSERT INTO `monitor_check_traffic_status` VALUES (66, 1115, 'eth0', 16292.6, 37253.3, '2012-12-17 18:11:15');
INSERT INTO `monitor_check_traffic_status` VALUES (67, 118, 'eth0', 9896.42, 15838.7, '2012-12-17 18:11:38');
INSERT INTO `monitor_check_traffic_status` VALUES (68, 1115, 'eth0', 17061.3, 35803.8, '2012-12-17 18:12:15');
INSERT INTO `monitor_check_traffic_status` VALUES (69, 118, 'eth0', 12101.6, 19620.5, '2012-12-17 18:12:38');
INSERT INTO `monitor_check_traffic_status` VALUES (70, 1115, 'eth0', 16299.5, 29287.8, '2012-12-17 18:13:15');
INSERT INTO `monitor_check_traffic_status` VALUES (71, 118, 'eth0', 7418.73, 10929, '2012-12-17 18:13:38');
INSERT INTO `monitor_check_traffic_status` VALUES (72, 1115, 'eth0', 11787.9, 35980.3, '2012-12-17 18:14:15');
INSERT INTO `monitor_check_traffic_status` VALUES (73, 118, 'eth0', 8969.77, 14101.5, '2012-12-17 18:14:38');
INSERT INTO `monitor_check_traffic_status` VALUES (74, 1115, 'eth0', 16784.8, 83125.1, '2012-12-17 18:15:15');
INSERT INTO `monitor_check_traffic_status` VALUES (75, 118, 'eth0', 7710.78, 12610.9, '2012-12-17 18:15:38');
INSERT INTO `monitor_check_traffic_status` VALUES (76, 1115, 'eth0', 17131.5, 62230.3, '2012-12-17 18:16:15');
INSERT INTO `monitor_check_traffic_status` VALUES (77, 118, 'eth0', 7198.77, 11344.3, '2012-12-17 18:16:38');
INSERT INTO `monitor_check_traffic_status` VALUES (78, 1115, 'eth0', 13538.7, 70264.1, '2012-12-17 18:17:16');
INSERT INTO `monitor_check_traffic_status` VALUES (79, 118, 'eth0', 7772.62, 12924.6, '2012-12-17 18:17:38');
INSERT INTO `monitor_check_traffic_status` VALUES (80, 1115, 'eth0', 13806.8, 67627.6, '2012-12-17 18:18:16');
INSERT INTO `monitor_check_traffic_status` VALUES (81, 118, 'eth0', 9999.28, 15729.2, '2012-12-17 18:18:39');
INSERT INTO `monitor_check_traffic_status` VALUES (82, 1115, 'eth0', 21891.2, 109420, '2012-12-17 18:19:16');
INSERT INTO `monitor_check_traffic_status` VALUES (83, 118, 'eth0', 7718.08, 11805.8, '2012-12-17 18:19:39');
INSERT INTO `monitor_check_traffic_status` VALUES (84, 1115, 'eth0', 17086, 108872, '2012-12-17 18:20:16');
INSERT INTO `monitor_check_traffic_status` VALUES (85, 119, 'eth0', 3037.33, 3364.35, '2012-12-17 18:20:39');
INSERT INTO `monitor_check_traffic_status` VALUES (86, 118, 'eth0', 6746.08, 11043.4, '2012-12-17 18:20:39');
INSERT INTO `monitor_check_traffic_status` VALUES (87, 120, 'eth0', 450.93, 534.8, '2012-12-17 18:21:12');
INSERT INTO `monitor_check_traffic_status` VALUES (88, 1115, 'eth0', 17694.6, 68322.9, '2012-12-17 18:21:16');
INSERT INTO `monitor_check_traffic_status` VALUES (89, 119, 'eth0', 2503.43, 2937.78, '2012-12-17 18:21:39');
INSERT INTO `monitor_check_traffic_status` VALUES (90, 118, 'eth0', 9339.25, 15365.9, '2012-12-17 18:21:39');
INSERT INTO `monitor_check_traffic_status` VALUES (91, 120, 'eth0', 232.17, 154.35, '2012-12-17 18:22:12');
INSERT INTO `monitor_check_traffic_status` VALUES (92, 1115, 'eth0', 14197.2, 34207.3, '2012-12-17 18:22:16');
INSERT INTO `monitor_check_traffic_status` VALUES (93, 119, 'eth0', 3430.15, 4043.13, '2012-12-17 18:22:39');
INSERT INTO `monitor_check_traffic_status` VALUES (94, 118, 'eth0', 11810.4, 18086.4, '2012-12-17 18:22:39');
INSERT INTO `monitor_check_traffic_status` VALUES (95, 120, 'eth0', 204.18, 125.63, '2012-12-17 18:23:12');
INSERT INTO `monitor_check_traffic_status` VALUES (96, 1115, 'eth0', 16111, 48472.2, '2012-12-17 18:23:16');
INSERT INTO `monitor_check_traffic_status` VALUES (97, 119, 'eth0', 3116.2, 3480.5, '2012-12-17 18:23:39');
INSERT INTO `monitor_check_traffic_status` VALUES (98, 118, 'eth0', 8511.82, 13285.3, '2012-12-17 18:23:39');
INSERT INTO `monitor_check_traffic_status` VALUES (99, 120, 'eth0', 239.37, 156.15, '2012-12-17 18:24:12');
INSERT INTO `monitor_check_traffic_status` VALUES (100, 1115, 'eth0', 15403.5, 37524.2, '2012-12-17 18:24:16');
INSERT INTO `monitor_check_traffic_status` VALUES (101, 119, 'eth0', 3905.22, 4429.33, '2012-12-17 18:24:39');
INSERT INTO `monitor_check_traffic_status` VALUES (102, 118, 'eth0', 9660.52, 15426, '2012-12-17 18:24:39');
INSERT INTO `monitor_check_traffic_status` VALUES (103, 120, 'eth0', 370.57, 338.78, '2012-12-17 18:25:12');
INSERT INTO `monitor_check_traffic_status` VALUES (104, 1115, 'eth0', 15369.8, 30614.7, '2012-12-17 18:25:16');
INSERT INTO `monitor_check_traffic_status` VALUES (105, 119, 'eth0', 2607.6, 2643.03, '2012-12-17 18:25:39');
INSERT INTO `monitor_check_traffic_status` VALUES (106, 118, 'eth0', 9835.58, 15739, '2012-12-17 18:25:40');
INSERT INTO `monitor_check_traffic_status` VALUES (107, 120, 'eth0', 182.52, 103.93, '2012-12-17 18:26:13');
INSERT INTO `monitor_check_traffic_status` VALUES (108, 1115, 'eth0', 15574.2, 87413.9, '2012-12-17 18:26:16');
INSERT INTO `monitor_check_traffic_status` VALUES (109, 119, 'eth0', 3068.32, 3389.02, '2012-12-17 18:26:40');
INSERT INTO `monitor_check_traffic_status` VALUES (110, 118, 'eth0', 8012, 13286.1, '2012-12-17 18:26:40');
INSERT INTO `monitor_check_traffic_status` VALUES (111, 120, 'eth0', 222.97, 156.15, '2012-12-17 18:27:13');
INSERT INTO `monitor_check_traffic_status` VALUES (112, 1115, 'eth0', 18724.2, 59259.5, '2012-12-17 18:27:16');
INSERT INTO `monitor_check_traffic_status` VALUES (113, 119, 'eth0', 2986.27, 2963.58, '2012-12-17 18:27:40');
INSERT INTO `monitor_check_traffic_status` VALUES (114, 118, 'eth0', 12722.4, 20897.6, '2012-12-17 18:27:40');
INSERT INTO `monitor_check_traffic_status` VALUES (115, 120, 'eth0', 235.27, 155.45, '2012-12-17 18:28:13');
INSERT INTO `monitor_check_traffic_status` VALUES (116, 1115, 'eth0', 21191.1, 68837.7, '2012-12-17 18:28:16');
INSERT INTO `monitor_check_traffic_status` VALUES (117, 119, 'eth0', 3194.25, 3493.92, '2012-12-17 18:28:40');
INSERT INTO `monitor_check_traffic_status` VALUES (118, 118, 'eth0', 10329.7, 15468, '2012-12-17 18:28:40');
INSERT INTO `monitor_check_traffic_status` VALUES (119, 120, 'eth0', 187.03, 103.93, '2012-12-17 18:29:13');
INSERT INTO `monitor_check_traffic_status` VALUES (120, 1115, 'eth0', 16376.9, 74059.5, '2012-12-17 18:29:16');
INSERT INTO `monitor_check_traffic_status` VALUES (121, 119, 'eth0', 3003.98, 3231.85, '2012-12-17 18:29:40');
INSERT INTO `monitor_check_traffic_status` VALUES (122, 118, 'eth0', 10510.5, 16108.2, '2012-12-17 18:29:40');
INSERT INTO `monitor_check_traffic_status` VALUES (123, 120, 'eth0', 294.02, 228.73, '2012-12-17 18:30:13');
INSERT INTO `monitor_check_traffic_status` VALUES (124, 1115, 'eth0', 17938.3, 94574.2, '2012-12-17 18:30:16');
INSERT INTO `monitor_check_traffic_status` VALUES (125, 119, 'eth0', 2327.42, 2518.05, '2012-12-17 18:30:40');
INSERT INTO `monitor_check_traffic_status` VALUES (126, 118, 'eth0', 8212.58, 12624, '2012-12-17 18:30:40');
INSERT INTO `monitor_check_traffic_status` VALUES (127, 120, 'eth0', 226.1, 156.15, '2012-12-17 18:31:13');
INSERT INTO `monitor_check_traffic_status` VALUES (128, 1115, 'eth0', 18199.6, 98030.5, '2012-12-17 18:31:16');
INSERT INTO `monitor_check_traffic_status` VALUES (129, 1113, 'eth0', 30135.4, 314256, '2012-12-17 18:31:17');
INSERT INTO `monitor_check_traffic_status` VALUES (130, 119, 'eth0', 3572.83, 3522.88, '2012-12-17 18:31:40');
INSERT INTO `monitor_check_traffic_status` VALUES (131, 118, 'eth0', 12877.3, 20254.2, '2012-12-17 18:31:41');
INSERT INTO `monitor_check_traffic_status` VALUES (132, 120, 'eth0', 171.63, 103.93, '2012-12-17 18:32:13');
INSERT INTO `monitor_check_traffic_status` VALUES (133, 1115, 'eth0', 18426.5, 78970.7, '2012-12-17 18:32:16');
INSERT INTO `monitor_check_traffic_status` VALUES (134, 1113, 'eth0', 35067.4, 397574, '2012-12-17 18:32:17');
INSERT INTO `monitor_check_traffic_status` VALUES (135, 119, 'eth0', 3641.73, 3544.83, '2012-12-17 18:32:40');
INSERT INTO `monitor_check_traffic_status` VALUES (136, 118, 'eth0', 9619.07, 15697.8, '2012-12-17 18:32:41');
INSERT INTO `monitor_check_traffic_status` VALUES (137, 120, 'eth0', 265.13, 156.15, '2012-12-17 18:33:13');
INSERT INTO `monitor_check_traffic_status` VALUES (138, 1115, 'eth0', 17586.1, 46882, '2012-12-17 18:33:17');
INSERT INTO `monitor_check_traffic_status` VALUES (139, 1113, 'eth0', 33650.9, 381994, '2012-12-17 18:33:17');
INSERT INTO `monitor_check_traffic_status` VALUES (140, 119, 'eth0', 3778.28, 3797.85, '2012-12-17 18:33:41');
INSERT INTO `monitor_check_traffic_status` VALUES (141, 118, 'eth0', 9685.25, 14821.7, '2012-12-17 18:33:41');
INSERT INTO `monitor_check_traffic_status` VALUES (142, 120, 'eth0', 233.45, 156.85, '2012-12-17 18:34:13');
INSERT INTO `monitor_check_traffic_status` VALUES (143, 1115, 'eth0', 18730.6, 69273, '2012-12-17 18:34:17');
INSERT INTO `monitor_check_traffic_status` VALUES (144, 1113, 'eth0', 36238, 446770, '2012-12-17 18:34:17');
INSERT INTO `monitor_check_traffic_status` VALUES (145, 119, 'eth0', 3060.33, 3143.58, '2012-12-17 18:34:41');
INSERT INTO `monitor_check_traffic_status` VALUES (146, 118, 'eth0', 11924.9, 18734.9, '2012-12-17 18:34:41');
INSERT INTO `monitor_check_traffic_status` VALUES (147, 120, 'eth0', 232.15, 177.22, '2012-12-17 18:35:13');
INSERT INTO `monitor_check_traffic_status` VALUES (148, 1115, 'eth0', 21707.5, 115377, '2012-12-17 18:35:17');
INSERT INTO `monitor_check_traffic_status` VALUES (149, 1113, 'eth0', 31249.7, 399794, '2012-12-17 18:35:17');
INSERT INTO `monitor_check_traffic_status` VALUES (150, 119, 'eth0', 5870.05, 6235.25, '2012-12-17 18:35:41');
INSERT INTO `monitor_check_traffic_status` VALUES (151, 118, 'eth0', 8464.52, 13530.9, '2012-12-17 18:35:41');
INSERT INTO `monitor_check_traffic_status` VALUES (152, 120, 'eth0', 229.47, 156.15, '2012-12-17 18:36:13');
INSERT INTO `monitor_check_traffic_status` VALUES (153, 1115, 'eth0', 16935, 88041.3, '2012-12-17 18:36:17');
INSERT INTO `monitor_check_traffic_status` VALUES (154, 1113, 'eth0', 26258.5, 305943, '2012-12-17 18:36:17');

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

-- 
-- 导出表中的数据 `monitor_moniter_port_list`
-- 

INSERT INTO `monitor_moniter_port_list` VALUES (1, 1001, '亿家游麻将', '10.48.179.106', 8601);
INSERT INTO `monitor_moniter_port_list` VALUES (2, 1002, '斗地主', '10.48.179.106', 8602);
INSERT INTO `monitor_moniter_port_list` VALUES (3, 1003, '飞行棋', '10.48.179.106', 8603);
INSERT INTO `monitor_moniter_port_list` VALUES (4, 1004, '关牌', '10.48.179.106', 8604);
INSERT INTO `monitor_moniter_port_list` VALUES (5, 1005, '杭麻', '10.48.179.106', 8605);
INSERT INTO `monitor_moniter_port_list` VALUES (6, 1006, '牛牛', '10.48.179.106', 8606);
INSERT INTO `monitor_moniter_port_list` VALUES (7, 1007, '三扣一', '10.48.179.106', 8607);
INSERT INTO `monitor_moniter_port_list` VALUES (8, 1008, '双扣', '10.48.179.106', 8608);
INSERT INTO `monitor_moniter_port_list` VALUES (9, 1009, '梭哈', '10.48.179.106', 8609);
INSERT INTO `monitor_moniter_port_list` VALUES (10, 1010, '象棋', '10.48.179.106', 8610);
INSERT INTO `monitor_moniter_port_list` VALUES (11, 1011, '五子棋禁手', '10.48.179.106', 8611);
INSERT INTO `monitor_moniter_port_list` VALUES (13, 1012, '五子棋非禁手', '10.48.179.106', 8612);
INSERT INTO `monitor_moniter_port_list` VALUES (14, 1013, '三张牌', '10.48.179.106', 8613);
INSERT INTO `monitor_moniter_port_list` VALUES (15, 1014, '百变双扣', '10.48.179.106', 8614);
INSERT INTO `monitor_moniter_port_list` VALUES (17, 1015, '三英战吕布', '10.48.179.106', 8615);
INSERT INTO `monitor_moniter_port_list` VALUES (18, 1016, '四国军棋', '10.48.179.106', 8616);
INSERT INTO `monitor_moniter_port_list` VALUES (19, 1017, '百变双扣积分版', '10.48.179.117', 8617);

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

-- 
-- 导出表中的数据 `monitor_moniter_process_list`
-- 

INSERT INTO `monitor_moniter_process_list` VALUES (1, 2001, 'vps18旧平台gateway', 'java,kado', 'java');
INSERT INTO `monitor_moniter_process_list` VALUES (2, 2002, 'vps18旧平台kernel', 'java,quartz', 'java');
INSERT INTO `monitor_moniter_process_list` VALUES (3, 2003, 'vps19旧平台gateway', 'java,kado', 'java');
INSERT INTO `monitor_moniter_process_list` VALUES (4, 2004, 'vps19旧平台kernel', 'java,quartz', 'java');
INSERT INTO `monitor_moniter_process_list` VALUES (5, 2005, 'vps20旧平台gateway', 'java,kado', 'java');
INSERT INTO `monitor_moniter_process_list` VALUES (6, 2006, 'vps20旧平台kernel', 'java,quartz', 'java');
