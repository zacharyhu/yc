-- MySQL dump 10.11
--
-- Host: 10.48.179.112    Database: gp_platform
-- ------------------------------------------------------
-- Server version	5.5.27-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `gp_data_daily_cash`
--

DROP TABLE IF EXISTS `gp_data_daily_cash`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `gp_data_daily_cash` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `l_date` int(10) NOT NULL,
  `l_cash_sum` int(20) NOT NULL DEFAULT '0',
  `l_total_num` int(20) NOT NULL DEFAULT '0',
  `l_avg` float NOT NULL DEFAULT '0',
  `l_type` int(10) NOT NULL COMMENT '充值类型',
  PRIMARY KEY (`id`),
  KEY `l_date` (`l_date`),
  KEY `l_type` (`l_type`),
  KEY `l_cash_sum` (`l_cash_sum`),
  KEY `l_total_num` (`l_total_num`)
) ENGINE=InnoDB AUTO_INCREMENT=1380 DEFAULT CHARSET=utf8 COMMENT='每天现金收入表';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `gp_data_daily_cash`
--

LOCK TABLES `gp_data_daily_cash` WRITE;
/*!40000 ALTER TABLE `gp_data_daily_cash` DISABLE KEYS */;
INSERT INTO `gp_data_daily_cash` VALUES (1,120414,8616,417,20.6619,0),(2,120415,6134,371,16.5337,0),(3,120416,2825,186,15.1882,0),(4,120417,81738,188,434.777,0),(5,120418,3016,205,14.7122,0),(6,120424,2818,226,12.469,0);
/*!40000 ALTER TABLE `gp_data_daily_cash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gp_data_daily_game`
--

DROP TABLE IF EXISTS `gp_data_daily_game`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `gp_data_daily_game` (
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
) ENGINE=InnoDB AUTO_INCREMENT=1697 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `gp_data_daily_game`
--

LOCK TABLES `gp_data_daily_game` WRITE;
/*!40000 ALTER TABLE `gp_data_daily_game` DISABLE KEYS */;
INSERT INTO `gp_data_daily_game` VALUES (1,'120823',119,'三张牌','',113,'0',-1116636,0,0),(2,'120823',230,'New_百变双扣','',233,'0',-1780920,0,0),(3,'120823',234,'New_翻翻棋','',144,'0',-132500,0,0);
/*!40000 ALTER TABLE `gp_data_daily_game` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gp_data_daily_user`
--

DROP TABLE IF EXISTS `gp_data_daily_user`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `gp_data_daily_user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `l_date` int(10) NOT NULL,
  `l_active` int(10) NOT NULL,
  `l_new_num` int(5) NOT NULL,
  `l_new_gamer` int(5) NOT NULL,
  `l_source` int(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=263 DEFAULT CHARSET=latin1 COMMENT='活跃用户表';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `gp_data_daily_user`
--

LOCK TABLES `gp_data_daily_user` WRITE;
/*!40000 ALTER TABLE `gp_data_daily_user` DISABLE KEYS */;
INSERT INTO `gp_data_daily_user` VALUES (1,120501,6492,750,364,201),(2,120502,4132,349,137,201),(3,120503,3906,324,125,201),(4,120504,4713,394,167,201),(5,120505,6551,726,362,201);
/*!40000 ALTER TABLE `gp_data_daily_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gp_data_daily_vip`
--

DROP TABLE IF EXISTS `gp_data_daily_vip`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `gp_data_daily_vip` (
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
) ENGINE=InnoDB AUTO_INCREMENT=263 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `gp_data_daily_vip`
--

LOCK TABLES `gp_data_daily_vip` WRITE;
/*!40000 ALTER TABLE `gp_data_daily_vip` DISABLE KEYS */;
INSERT INTO `gp_data_daily_vip` VALUES (1,120423,1500000,15,3136080,876,681,42,482),(2,120424,1900000,19,3164310,869,691,45,510),(3,120425,2500000,25,3283280,889,693,51,1166);
/*!40000 ALTER TABLE `gp_data_daily_vip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gp_game_source_cfg`
--

DROP TABLE IF EXISTS `gp_game_source_cfg`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `gp_game_source_cfg` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `l_source` int(5) NOT NULL COMMENT '来源编号',
  `l_source_name` varchar(20) NOT NULL COMMENT '来源名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='来源编号配置表';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `gp_game_source_cfg`
--

LOCK TABLES `gp_game_source_cfg` WRITE;
/*!40000 ALTER TABLE `gp_game_source_cfg` DISABLE KEYS */;
INSERT INTO `gp_game_source_cfg` VALUES (1,201,'老平台'),(2,105,'新平台-新疆'),(3,0,'0');
/*!40000 ALTER TABLE `gp_game_source_cfg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gp_gameid_cfg`
--

DROP TABLE IF EXISTS `gp_gameid_cfg`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `gp_gameid_cfg` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `l_game_id` int(5) NOT NULL,
  `l_game_name` varchar(20) CHARACTER SET gbk NOT NULL,
  `l_game_desc` varchar(50) CHARACTER SET gbk NOT NULL,
  `l_game_spcode` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `game_id` (`l_game_id`),
  KEY `l_game_spcode` (`l_game_spcode`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COMMENT='游戏id配置表';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `gp_gameid_cfg`
--

LOCK TABLES `gp_gameid_cfg` WRITE;
/*!40000 ALTER TABLE `gp_gameid_cfg` DISABLE KEYS */;
INSERT INTO `gp_gameid_cfg` VALUES (1,313,'三张牌','三张牌',''),(2,258,'开宝箱活动','开宝箱活动',''),(3,401,'测试游戏1','测试游戏1',''),(4,999,'新版正式计费充值','新版本限制充值',''),(5,228,'New_四国军棋','四国军棋',''),(6,230,'New_百变双扣','百变双扣',''),(7,234,'New_翻翻棋','翻翻棋',''),(8,246,'New_幸运大转盘','幸运大转盘',''),(9,248,'New_会员领工资','会员领工资',''),(10,250,'New_欢乐谷','欢乐谷',''),(11,253,'New_三英战吕布','三英战吕布',''),(12,402,'测试游戏2','测试游戏2',''),(13,403,'新版充值','新版充值客户端','501'),(14,115,'小鬼当家','小鬼当家','503'),(15,256,'New_斗地主','11年10月配置',''),(16,501,'牛神','牛神',''),(17,158,'接金币','包月用户每天还可以领取游戏点哦！！！赶快行动吧',''),(18,301,'4.0亿家游麻将','4.0新框亿家游麻将',''),(19,302,'4.0斗地主','4.0新框斗地主',''),(20,303,'4.0飞行棋','4.0新框飞行棋',''),(21,304,'4.0关牌','4.0新框关牌',''),(22,305,'4.0杭麻','4.0杭麻',''),(23,306,'4.0牛牛','4.0牛牛',''),(24,307,'4.0三扣一','4.0三扣一',''),(25,308,'4.0双扣','4.0双扣',''),(26,309,'4.0梭哈','4.0梭哈',''),(27,310,'4.0象棋','4.0象棋',''),(28,404,'测试转盘','测试转盘',''),(29,114,'炮轰外星人','外星人','502'),(30,201,'黄金矿工','黄金矿工',''),(31,316,'4.0四国军棋','4.0四国军棋',''),(32,1000,'总计','游戏点总计','');
/*!40000 ALTER TABLE `gp_gameid_cfg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gp_gate_login`
--

DROP TABLE IF EXISTS `gp_gate_login`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `gp_gate_login` (
  `l_date` varchar(10) NOT NULL,
  `l_time` varchar(40) NOT NULL,
  `l_gate` varchar(20) NOT NULL,
  `vc_stb_id` varchar(50) NOT NULL,
  KEY `l_time` (`l_time`,`l_gate`,`vc_stb_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='门户登录表';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `gp_gate_login`
--

LOCK TABLES `gp_gate_login` WRITE;
/*!40000 ALTER TABLE `gp_gate_login` DISABLE KEYS */;
INSERT INTO `gp_gate_login` VALUES ('121104',' 00:00:04','gate_gw','011204003011600024C109F71D'),('121104',' 00:00:08','gate_gw','0101040010111052544C26B9D1'),('121104',' 00:00:23','gate_gw','011204005011800024C11811B0');
/*!40000 ALTER TABLE `gp_gate_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gp_recharge_cp`
--

DROP TABLE IF EXISTS `gp_recharge_cp`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `gp_recharge_cp` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `l_name` varchar(10) NOT NULL,
  `l_type` varchar(5) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `l_type` (`l_type`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COMMENT='备注充值类别';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `gp_recharge_cp`
--

LOCK TABLES `gp_recharge_cp` WRITE;
/*!40000 ALTER TABLE `gp_recharge_cp` DISABLE KEYS */;
INSERT INTO `gp_recharge_cp` VALUES (13,'康德充值','201'),(14,'游戏点充值','501'),(15,'炮轰外星人','502'),(16,'小鬼当家','503'),(17,'杭州掌牛','204'),(18,'小小西游','205'),(19,'拓展充值','101'),(20,'赛车','207'),(21,'新疆充值','991'),(22,'盈动科技','202'),(23,'历史充值','0'),(24,'当天总额','999'),(25,'xy_2','208');
/*!40000 ALTER TABLE `gp_recharge_cp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gp_recharge_his`
--

DROP TABLE IF EXISTS `gp_recharge_his`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `gp_recharge_his` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `vc_stb_id` varchar(128) NOT NULL,
  `member_id` int(10) NOT NULL,
  `l_money` int(10) NOT NULL,
  `l_date` int(10) NOT NULL,
  `l_time` int(10) NOT NULL,
  `l_type` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `l_date` (`l_date`),
  KEY `l_time` (`l_time`),
  KEY `vc_stb_id` (`vc_stb_id`),
  KEY `member_id` (`member_id`)
) ENGINE=InnoDB AUTO_INCREMENT=835051 DEFAULT CHARSET=utf8 COMMENT='充值历史记录表（每天更新）';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `gp_recharge_his`
--

LOCK TABLES `gp_recharge_his` WRITE;
/*!40000 ALTER TABLE `gp_recharge_his` DISABLE KEYS */;
INSERT INTO `gp_recharge_his` VALUES (1,'0111120010218000D033',523523,2,120610,2011,501),(2,'1104034011600024C113',1225359,10,120610,4428,501),(3,'1504002011600024C124',1372041,10,120610,4856,501);

--
-- Table structure for table `monitor_check_port_status`
--

DROP TABLE IF EXISTS `monitor_check_port_status`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `monitor_check_port_status` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `item_id` int(10) NOT NULL COMMENT '项目id',
  `item_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '项目名称',
  `check_status` int(5) NOT NULL COMMENT '检查状态0失败、1成功',
  `check_last_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后更新时间',
  `failed_times` int(10) NOT NULL COMMENT '失败次数',
  PRIMARY KEY (`id`),
  UNIQUE KEY `item_id` (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `monitor_check_port_status`
--

LOCK TABLES `monitor_check_port_status` WRITE;
/*!40000 ALTER TABLE `monitor_check_port_status` DISABLE KEYS */;
INSERT INTO `monitor_check_port_status` VALUES (1,1001,'game1port_check',1,'2012-12-07 05:17:30',0),(2,1002,'game2port_check',1,'2012-12-07 05:17:30',0),(3,1003,'game3port_check',1,'2012-12-07 05:17:30',0),(4,1004,'game4port_check',1,'2012-12-07 05:17:30',0),(5,1005,'game5port_check',1,'2012-12-07 05:17:30',0),(6,1006,'game6port_check',1,'2012-12-07 05:17:30',0),(7,1007,'game7port_check',1,'2012-12-07 05:17:30',0),(8,1008,'game8port_check',1,'2012-12-07 05:17:30',0),(9,1009,'game9port_check',1,'2012-12-07 05:17:30',0),(10,1010,'game10port_check',1,'2012-12-07 05:17:30',0),(11,1011,'game11port_check',1,'2012-12-07 05:17:30',0),(12,9999,'game20port_check',0,'2012-12-07 05:17:30',4),(13,1012,'game12port_check',1,'2012-12-07 05:17:30',0);
/*!40000 ALTER TABLE `monitor_check_port_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monitor_moniter_port_list`
--

DROP TABLE IF EXISTS `monitor_moniter_port_list`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `monitor_moniter_port_list` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `item_id` int(10) NOT NULL,
  `item_name` varchar(20) NOT NULL,
  `item_host` varchar(20) NOT NULL,
  `item_port` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `item_id` (`item_id`),
  KEY `item_name` (`item_name`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='端口监控列表数据库';
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `monitor_moniter_port_list`
--

LOCK TABLES `monitor_moniter_port_list` WRITE;
/*!40000 ALTER TABLE `monitor_moniter_port_list` DISABLE KEYS */;
INSERT INTO `monitor_moniter_port_list` VALUES (1,1001,'game1port_check','10.48.179.106',8601),(2,1002,'game2port_check','10.48.179.106',8602),(3,1003,'game3port_check','10.48.179.106',8603),(4,1004,'game4port_check','10.48.179.106',8604),(5,1005,'game5port_check','10.48.179.106',8605),(6,1006,'game6port_check','10.48.179.106',8606),(7,1007,'game7port_check','10.48.179.106',8607),(8,1008,'game8port_check','10.48.179.106',8608),(9,1009,'game9port_check','10.48.179.106',8609),(10,1010,'game10port_check','10.48.179.106',8610),(11,1011,'game11port_check','10.48.179.106',8611),(12,9999,'game20port_check','10.48.179.106',2222),(13,1012,'game12port_check','10.48.179.106',8612);
/*!40000 ALTER TABLE `monitor_moniter_port_list` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-12-07  7:24:49
