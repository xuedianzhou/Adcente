/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50515
 Source Host           : localhost:3306
 Source Schema         : adcenter

 Target Server Type    : MySQL
 Target Server Version : 50515
 File Encoding         : 65001

 Date: 29/11/2018 14:16:57
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for addsum
-- ----------------------------
DROP TABLE IF EXISTS `addsum`;
CREATE TABLE `addsum`  (
  `addid` int(11) NOT NULL AUTO_INCREMENT,
  `addsum` double DEFAULT NULL,
  `addptime` datetime DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `aid` int(11) DEFAULT NULL,
  PRIMARY KEY (`addid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for adminuser
-- ----------------------------
DROP TABLE IF EXISTS `adminuser`;
CREATE TABLE `adminuser`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `pwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `grade` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of adminuser
-- ----------------------------
INSERT INTO `adminuser` VALUES (1, 'admin', 'admin', 0);

-- ----------------------------
-- Table structure for advert
-- ----------------------------
DROP TABLE IF EXISTS `advert`;
CREATE TABLE `advert`  (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `mid` int(11) DEFAULT NULL,
  `uid` int(11) NOT NULL,
  `close` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ptime` datetime DEFAULT NULL,
  `unit` double(11, 2) DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ctime` datetime DEFAULT NULL,
  `uptime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sum` int(11) DEFAULT NULL,
  `aform` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`aid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of advert
-- ----------------------------
INSERT INTO `advert` VALUES (1, 1, 1, '点击量', '2018-10-30 02:09:58', 0.01, 'ss', '2018-10-30 02:09:58', '2018-10-30 10:09:58', 100, '美妆');
INSERT INTO `advert` VALUES (2, 4, 1, '点击量', '2018-10-30 02:22:38', 0.01, '', '2018-10-30 02:22:38', '2018-10-30 10:22:38', 100, '男装');
INSERT INTO `advert` VALUES (3, 4, 1, '点击量', '2018-11-03 02:23:56', 0.01, 'fdasfasd', '2018-11-03 02:23:56', '2018-11-03 10:23:56', 90, '女装');
INSERT INTO `advert` VALUES (4, 6, 10, '点击量', '2018-11-20 03:23:06', 1.00, '汽车', '2018-11-20 03:23:06', '2018-11-20 11:23:06', 5, '汽车');
INSERT INTO `advert` VALUES (5, 6, 10, '点击量', '2018-11-20 03:26:10', 1.00, 'ss', '2018-11-20 03:26:10', '2018-11-20 11:26:10', 5, '汽车');
INSERT INTO `advert` VALUES (6, 6, 10, '点击量', '2018-11-20 03:27:12', 1.00, '汽车', '2018-11-20 03:27:12', '2018-11-20 11:27:12', 4, '汽车');
INSERT INTO `advert` VALUES (7, 6, 10, '点击量', '2018-11-20 03:32:31', 1.00, 'fdssa', '2018-11-20 03:32:31', '2018-11-20 11:32:31', 3, '服装');
INSERT INTO `advert` VALUES (8, 6, 10, '点击量', '2018-11-20 03:34:42', 1.00, 'fdsa', '2018-11-20 03:34:42', '2018-11-20 11:34:42', 3, '服装');
INSERT INTO `advert` VALUES (9, 11, 11, '点击量', '2018-11-24 01:38:36', 1.00, '没鞋', '2018-11-24 01:38:36', '2018-11-24 09:38:36', 4, '服装');
INSERT INTO `advert` VALUES (10, 12, 13, '点击量', '2018-11-24 02:22:16', 50.00, 'test', '2018-11-24 02:22:16', '2018-11-24 10:22:16', 100, '汽车');
INSERT INTO `advert` VALUES (11, 13, 13, '点击量', '2018-11-24 02:53:04', 1.00, '嗡嗡嗡旅游攻略网', '2018-11-24 02:53:04', '2018-11-24 10:53:04', 3, '其它');
INSERT INTO `advert` VALUES (12, 14, 16, '点击量', '2018-11-26 02:07:19', 1.00, 'f', '2018-11-26 02:07:19', '2018-11-26 10:07:19', 2, '其它');
INSERT INTO `advert` VALUES (13, 14, 16, '点击量', '2018-11-26 03:07:02', 1.00, 'fff', '2018-11-26 03:07:02', '2018-11-26 11:07:02', 2, '服装');
INSERT INTO `advert` VALUES (14, 14, 16, '点击量', '2018-11-26 03:30:46', 1.00, 'ffe', '2018-11-26 03:30:46', '2018-11-26 11:30:46', 2, '美妆');
INSERT INTO `advert` VALUES (15, 14, 16, '点击量', '2018-11-26 04:59:06', 1.00, 'aaa', '2018-11-26 04:59:06', '2018-11-26 12:59:06', 2, '服装');
INSERT INTO `advert` VALUES (16, 14, 16, '点击量', '2018-11-26 05:33:16', 1.00, 'dfs', '2018-11-26 05:33:16', '2018-11-26 13:33:16', 4, '美妆');
INSERT INTO `advert` VALUES (17, 14, 16, '点击量', '2018-11-26 05:41:53', 1.00, 'da', '2018-11-26 05:41:53', '2018-11-26 13:41:53', 3, '美妆');
INSERT INTO `advert` VALUES (18, 14, 16, '点击量', '2018-11-26 05:46:16', 1.00, 'fadsfa', '2018-11-26 05:46:16', '2018-11-26 13:46:16', 3, '服装');
INSERT INTO `advert` VALUES (19, 14, 16, '点击量', '2018-11-26 05:55:34', 1.00, 'dtfg', '2018-11-26 05:55:34', '2018-11-26 13:55:34', 3, '美妆');
INSERT INTO `advert` VALUES (20, 14, 16, '点击量', '2018-11-26 06:03:24', 1.00, 'fda', '2018-11-26 06:03:24', '2018-11-26 14:03:24', 3, '美妆');
INSERT INTO `advert` VALUES (21, 14, 16, '点击量', '2018-11-26 06:10:10', 1.00, 'fdasfd', '2018-11-26 06:10:10', '2018-11-26 14:10:10', 3, '互联网');
INSERT INTO `advert` VALUES (22, 15, 17, '点击量', '2018-11-26 06:31:21', 1.00, '方法', '2018-11-26 06:31:21', '2018-11-26 14:31:21', 2, '美妆');
INSERT INTO `advert` VALUES (23, 15, 17, '点击量', '2018-11-26 06:49:18', 1.00, 'eee', '2018-11-26 06:49:18', '2018-11-26 14:49:18', 2, '服装');
INSERT INTO `advert` VALUES (24, 16, 17, '点击量', '2018-11-26 06:56:12', 1.00, 'wo', '2018-11-26 06:56:12', '2018-11-26 14:56:12', 2, '服装');
INSERT INTO `advert` VALUES (25, 16, 17, '点击量', '2018-11-26 07:03:15', 1.00, 'CES', '2018-11-26 07:03:15', '2018-11-26 15:03:15', 3, '电子产品');
INSERT INTO `advert` VALUES (26, 17, 21, '点击量', '2018-11-27 01:09:03', 1.00, '测试', '2018-11-27 01:09:03', '2018-11-27 09:09:03', 3, '电子产品');
INSERT INTO `advert` VALUES (27, 18, 21, '点击量', '2018-11-27 01:22:09', 1.00, 'ceshi2', '2018-11-27 01:22:09', '2018-11-27 09:22:09', 2, '其它');
INSERT INTO `advert` VALUES (28, 19, 21, '点击量', '2018-11-27 02:47:07', 1.00, '3', '2018-11-27 02:47:07', '2018-11-27 10:47:07', 2, '服装');
INSERT INTO `advert` VALUES (29, 18, 21, '点击量', '2018-11-27 02:55:09', 1.00, '111', '2018-11-27 02:55:09', '2018-11-27 10:55:09', 2, '服装');
INSERT INTO `advert` VALUES (30, 17, 21, '点击量', '2018-11-27 03:14:01', 1.00, '147', '2018-11-27 03:14:01', '2018-11-27 11:14:01', 2, '服装');
INSERT INTO `advert` VALUES (31, 21, 21, '点击量', '2018-11-27 06:02:22', 1.00, '租房', '2018-11-27 06:02:22', '2018-11-27 14:02:22', 3, '其它');
INSERT INTO `advert` VALUES (32, 21, 21, '点击量', '2018-11-27 06:10:03', 3.00, '租房2', '2018-11-27 06:10:03', '2018-11-27 14:10:03', 6, '其它');

-- ----------------------------
-- Table structure for advertorder
-- ----------------------------
DROP TABLE IF EXISTS `advertorder`;
CREATE TABLE `advertorder`  (
  `orderid` int(11) NOT NULL AUTO_INCREMENT,
  `aid` int(11) DEFAULT NULL,
  `ctime` datetime DEFAULT NULL,
  `ftime` datetime DEFAULT NULL,
  `state` int(11) DEFAULT NULL COMMENT '1，0',
  `uptime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `hits` int(11) DEFAULT NULL,
  `sum` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  PRIMARY KEY (`orderid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of advertorder
-- ----------------------------
INSERT INTO `advertorder` VALUES (1, 1, '2018-10-30 02:09:58', NULL, 0, '2018-11-15 19:33:08', 'ss', 5, 100, 0);
INSERT INTO `advertorder` VALUES (2, 2, '2018-10-30 02:22:38', NULL, 0, '2018-10-30 02:22:38', '', 0, 100, 0);
INSERT INTO `advertorder` VALUES (3, 3, '2018-11-03 02:23:56', NULL, 0, '2018-11-03 02:23:56', 'fdasfasd', 0, 90, 0);
INSERT INTO `advertorder` VALUES (4, 5, '2018-11-20 03:26:10', '2018-11-23 19:33:53', 1, '2018-11-23 19:33:55', 'ss', 5, 5, 0);
INSERT INTO `advertorder` VALUES (5, 6, '2018-11-20 03:27:12', '2018-11-23 19:33:47', 1, '2018-11-23 19:33:52', '汽车', 5, 4, 6);
INSERT INTO `advertorder` VALUES (6, 7, '2018-11-20 03:32:31', '2018-11-20 12:00:02', 0, '2018-11-20 12:00:16', 'fdssa', 0, 3, 0);
INSERT INTO `advertorder` VALUES (7, 8, '2018-11-20 03:34:42', '2018-11-20 12:00:34', 1, '2018-11-20 12:00:36', 'fdsa', 0, 3, 10);
INSERT INTO `advertorder` VALUES (8, 9, '2018-11-24 01:38:36', NULL, 0, '2018-11-24 01:38:36', '没鞋', 0, 4, 11);
INSERT INTO `advertorder` VALUES (9, 10, '2018-11-24 02:22:16', '2018-11-24 11:38:13', 1, '2018-11-24 11:38:13', 'test', 0, 100, 13);
INSERT INTO `advertorder` VALUES (10, 11, '2018-11-24 02:53:04', '2018-11-24 11:21:04', 1, '2018-11-24 11:21:04', '嗡嗡嗡旅游攻略网', 1, 3, 13);
INSERT INTO `advertorder` VALUES (11, 12, '2018-11-26 02:07:19', '2018-11-26 11:03:05', 1, '2018-11-26 11:14:53', 'f', 3, 2, 16);
INSERT INTO `advertorder` VALUES (12, 13, '2018-11-26 03:07:02', '2018-11-26 11:29:02', 1, '2018-11-26 11:29:02', 'fff', 2, 2, 16);
INSERT INTO `advertorder` VALUES (13, 14, '2018-11-26 03:30:46', '2018-11-26 11:36:22', 1, '2018-11-26 11:36:22', 'ffe', 1, 2, 16);
INSERT INTO `advertorder` VALUES (14, 14, '2018-11-26 12:53:37', '2018-11-26 12:54:15', 1, '2018-11-26 12:54:15', 'ffff', 2, 10, 16);
INSERT INTO `advertorder` VALUES (15, 15, '2018-11-26 04:59:06', '2018-11-26 13:04:57', 1, '2018-11-26 13:04:57', 'aaa', 1, 2, 16);
INSERT INTO `advertorder` VALUES (16, 16, '2018-11-26 05:33:16', '2018-11-26 13:35:22', 1, '2018-11-26 13:35:22', 'dfs', 1, 4, 16);
INSERT INTO `advertorder` VALUES (17, 17, '2018-11-26 05:41:53', '2018-11-26 13:44:09', 1, '2018-11-26 13:44:09', 'da', 1, 3, 16);
INSERT INTO `advertorder` VALUES (18, 18, '2018-11-26 05:46:16', '2018-11-26 13:49:19', 1, '2018-11-26 13:49:20', 'fadsfa', 1, 3, 16);
INSERT INTO `advertorder` VALUES (19, 19, '2018-11-26 05:55:34', '2018-11-26 13:57:51', 1, '2018-11-26 13:57:51', 'dtfg', 0, 3, 16);
INSERT INTO `advertorder` VALUES (20, 20, '2018-11-26 06:03:24', '2018-11-26 14:04:57', 1, '2018-11-26 14:04:57', 'fda', 1, 3, 16);
INSERT INTO `advertorder` VALUES (21, 21, '2018-11-26 06:10:10', '2018-11-26 14:11:38', 1, '2018-11-26 14:11:38', 'fdasfd', 1, 3, 16);
INSERT INTO `advertorder` VALUES (22, 22, '2018-11-26 06:31:21', '2018-11-26 14:39:02', 1, '2018-11-26 14:39:44', '方法', 3, 2, 17);
INSERT INTO `advertorder` VALUES (23, 23, '2018-11-26 06:49:18', '2018-11-26 14:51:01', 1, '2018-11-26 14:51:01', 'eee', 2, 2, 17);
INSERT INTO `advertorder` VALUES (24, 24, '2018-11-26 06:56:12', '2018-11-26 14:57:30', 1, '2018-11-26 14:57:30', 'wo', 1, 2, 17);
INSERT INTO `advertorder` VALUES (25, 25, '2018-11-26 07:03:15', '2018-11-26 15:11:05', 1, '2018-11-26 15:11:05', 'CES', 2, 3, 17);
INSERT INTO `advertorder` VALUES (26, 26, '2018-11-27 01:09:03', '2018-11-27 09:16:11', 1, '2018-11-27 09:16:11', '测试', 1, 3, 21);
INSERT INTO `advertorder` VALUES (27, 27, '2018-11-27 01:22:09', '2018-11-27 09:25:00', 1, '2018-11-27 09:25:00', 'ceshi2', 2, 2, 21);
INSERT INTO `advertorder` VALUES (28, 28, '2018-11-27 02:47:07', '2018-11-27 10:55:18', 1, '2018-11-27 10:55:18', '3', 1, 2, 21);
INSERT INTO `advertorder` VALUES (29, 29, '2018-11-27 02:55:09', '2018-11-27 11:14:08', 1, '2018-11-27 11:14:08', '111', 1, 2, 21);
INSERT INTO `advertorder` VALUES (30, 30, '2018-11-27 03:14:01', '2018-11-27 11:21:03', 1, '2018-11-27 11:21:03', '147', 2, 2, 21);
INSERT INTO `advertorder` VALUES (31, 31, '2018-11-27 06:02:22', '2018-11-27 14:08:31', 1, '2018-11-27 14:08:31', '租房', 1, 3, 21);
INSERT INTO `advertorder` VALUES (32, 32, '2018-11-27 06:10:03', '2018-11-27 14:13:00', 1, '2018-11-27 14:13:00', '租房2', 2, 6, 21);

-- ----------------------------
-- Table structure for badcheck
-- ----------------------------
DROP TABLE IF EXISTS `badcheck`;
CREATE TABLE `badcheck`  (
  `b-id` int(11) NOT NULL AUTO_INCREMENT,
  `sid` int(11) DEFAULT NULL,
  `aid` int(11) DEFAULT NULL,
  `state` int(255) NOT NULL,
  `checktime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `test` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`b-id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of badcheck
-- ----------------------------
INSERT INTO `badcheck` VALUES (1, 1, 1, 5, '2018-10-20 09:06:40', 'ok');
INSERT INTO `badcheck` VALUES (2, 1, 1, 5, '2018-10-20 09:11:43', 'ok');

-- ----------------------------
-- Table structure for checkrecord
-- ----------------------------
DROP TABLE IF EXISTS `checkrecord`;
CREATE TABLE `checkrecord`  (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  `aid` int(11) DEFAULT NULL,
  `rname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `id` int(11) DEFAULT NULL,
  PRIMARY KEY (`rid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of checkrecord
-- ----------------------------
INSERT INTO `checkrecord` VALUES (1, 1, '网站审核', 2, 1);
INSERT INTO `checkrecord` VALUES (2, 1, '网站审核', 2, 1);
INSERT INTO `checkrecord` VALUES (3, 1, '网站审核', 2, 1);
INSERT INTO `checkrecord` VALUES (4, 1, '广告模板审核', 5, 1);
INSERT INTO `checkrecord` VALUES (5, 1, '广告模板审核', 2, 1);
INSERT INTO `checkrecord` VALUES (6, 1, '网站审核', 5, 1);
INSERT INTO `checkrecord` VALUES (7, 1, '网站审核', 5, 1);
INSERT INTO `checkrecord` VALUES (8, 1, '广告模板审核', 5, 1);
INSERT INTO `checkrecord` VALUES (9, 1, '广告模板审核', 5, 1);
INSERT INTO `checkrecord` VALUES (10, 1, '网站审核', 5, 1);
INSERT INTO `checkrecord` VALUES (11, 1, '网站审核', 5, 1);
INSERT INTO `checkrecord` VALUES (12, 1, '广告模板审核', 5, 1);
INSERT INTO `checkrecord` VALUES (13, 1, '广告模板审核', 5, 1);
INSERT INTO `checkrecord` VALUES (14, 1, '网站审核', 5, 1);
INSERT INTO `checkrecord` VALUES (15, 1, '广告模板审核', 5, 1);
INSERT INTO `checkrecord` VALUES (16, 1, '广告模板审核', 5, 1);
INSERT INTO `checkrecord` VALUES (17, 1, '网站审核', 5, 1);
INSERT INTO `checkrecord` VALUES (18, 1, '广告模板审核', 5, 1);
INSERT INTO `checkrecord` VALUES (19, 1, '广告模板审核', 5, 1);
INSERT INTO `checkrecord` VALUES (20, 1, '网站审核', 5, 1);
INSERT INTO `checkrecord` VALUES (21, 1, '广告模板审核', 5, 1);
INSERT INTO `checkrecord` VALUES (22, 1, '广告模板审核', 5, 1);
INSERT INTO `checkrecord` VALUES (23, 1, '网站审核', 5, 1);
INSERT INTO `checkrecord` VALUES (24, 1, '广告模板审核', 5, 1);
INSERT INTO `checkrecord` VALUES (25, 1, '广告模板审核', 5, 1);
INSERT INTO `checkrecord` VALUES (26, 1, '广告模板审核', 5, 1);
INSERT INTO `checkrecord` VALUES (27, 1, '广告模板审核', 5, 1);
INSERT INTO `checkrecord` VALUES (28, 1, '网站审核', 5, 1);

-- ----------------------------
-- Table structure for checks
-- ----------------------------
DROP TABLE IF EXISTS `checks`;
CREATE TABLE `checks`  (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `ptime` datetime DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `aid` int(255) DEFAULT NULL,
  `hits` int(255) DEFAULT NULL,
  `income` double(255, 2) DEFAULT NULL,
  `details` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`bid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of checks
-- ----------------------------
INSERT INTO `checks` VALUES (1, NULL, 10, 6, 5, 5.00, '客户的广告账单');
INSERT INTO `checks` VALUES (2, NULL, 10, 5, 5, 5.00, '客户的广告账单');
INSERT INTO `checks` VALUES (3, NULL, 16, 12, 2, 2.00, '客户的广告账单');
INSERT INTO `checks` VALUES (4, NULL, 16, 13, 2, 2.00, '客户的广告账单');
INSERT INTO `checks` VALUES (5, NULL, 17, 22, 2, 2.00, '客户的广告账单');
INSERT INTO `checks` VALUES (6, NULL, 17, 23, 2, 2.00, '客户的广告账单');
INSERT INTO `checks` VALUES (7, NULL, 21, 27, 2, 2.00, '客户的广告账单');
INSERT INTO `checks` VALUES (8, NULL, 21, 30, 2, 2.00, '客户的广告账单');
INSERT INTO `checks` VALUES (9, NULL, 21, 32, 2, 6.00, '客户的广告账单');

-- ----------------------------
-- Table structure for clicknumber
-- ----------------------------
DROP TABLE IF EXISTS `clicknumber`;
CREATE TABLE `clicknumber`  (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `orderid` int(11) DEFAULT NULL,
  PRIMARY KEY (`cid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 39 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of clicknumber
-- ----------------------------
INSERT INTO `clicknumber` VALUES (4, '2018-11-14 10:50:48', '172.20.10.2', 'click.jsp', 1);
INSERT INTO `clicknumber` VALUES (5, '2018-11-14 11:34:44', '172.20.10.2', 'click.jsp', 1);
INSERT INTO `clicknumber` VALUES (6, '2018-11-15 09:34:52', '172.20.10.2', 'click.jsp', 1);
INSERT INTO `clicknumber` VALUES (7, '2018-11-15 19:15:13', '172.20.10.4', 'click.jsp', 1);
INSERT INTO `clicknumber` VALUES (8, '2018-11-15 19:33:08', '172.20.10.3', 'click.jsp', 1);
INSERT INTO `clicknumber` VALUES (9, '2018-11-23 15:06:31', '172.20.10.2', 'click.jsp', 5);
INSERT INTO `clicknumber` VALUES (10, '2018-11-23 15:16:33', '172.20.10.6', 'click.jsp', 5);
INSERT INTO `clicknumber` VALUES (11, '2018-11-23 17:41:56', '172.20.10.2', 'click.jsp', 5);
INSERT INTO `clicknumber` VALUES (12, '2018-11-23 17:44:58', '172.20.10.7', 'click.jsp', 5);
INSERT INTO `clicknumber` VALUES (13, '2018-11-23 18:27:43', '192.168.43.117', 'click.jsp', 5);
INSERT INTO `clicknumber` VALUES (14, '2018-11-24 11:00:35', '192.168.43.117', 'click.jsp', 10);
INSERT INTO `clicknumber` VALUES (15, '2018-11-26 10:41:20', '192.168.43.125', '192.168.43.125:8080/springboot_309/click.jsp', 11);
INSERT INTO `clicknumber` VALUES (16, '2018-11-26 11:02:35', '192.168.43.117', '192.168.43.125:8080/springboot_309/click.jsp', 11);
INSERT INTO `clicknumber` VALUES (17, '2018-11-26 11:14:53', '192.168.43.125', '192.168.43.125:8080/springboot_309/click.jsp', 11);
INSERT INTO `clicknumber` VALUES (18, '2018-11-26 11:27:55', '192.168.43.125', '192.168.43.125:8080/springboot_309/click.jsp', 12);
INSERT INTO `clicknumber` VALUES (19, '2018-11-26 11:28:43', '192.168.43.117', '192.168.43.125:8080/springboot_309/click.jsp', 12);
INSERT INTO `clicknumber` VALUES (20, '2018-11-26 11:35:51', '192.168.43.125', '192.168.43.125:8080/springboot_309/click.jsp', 13);
INSERT INTO `clicknumber` VALUES (21, '2018-11-26 13:03:17', '172.20.10.2', '192.168.43.125:8080/springboot_309/click.jsp', 15);
INSERT INTO `clicknumber` VALUES (22, '2018-11-26 14:38:58', '192.168.43.125', 'http://192.168.43.125:8080/springboot_309/click.jsp', 22);
INSERT INTO `clicknumber` VALUES (23, '2018-11-26 14:39:44', '192.168.43.117', 'http://192.168.43.125:8080/springboot_309/click.jsp', 22);
INSERT INTO `clicknumber` VALUES (24, '2018-11-26 14:50:33', '192.168.43.125', 'http://192.168.43.125:8080/springboot_309/click.jsp', 23);
INSERT INTO `clicknumber` VALUES (25, '2018-11-26 14:50:50', '192.168.43.117', 'http://192.168.43.125:8080/springboot_309/click.jsp', 23);
INSERT INTO `clicknumber` VALUES (26, '2018-11-26 14:57:02', '192.168.43.125', 'http://192.168.43.125:8080/springboot_309/click.jsp', 24);
INSERT INTO `clicknumber` VALUES (27, '2018-11-26 15:04:25', '192.168.43.125', 'http://192.168.43.125:8080/springboot_309/click.jsp', 25);
INSERT INTO `clicknumber` VALUES (28, '2018-11-26 15:04:42', '192.168.43.117', 'http://192.168.43.125:8080/springboot_309/click.jsp', 25);
INSERT INTO `clicknumber` VALUES (29, '2018-11-27 09:15:12', '192.168.43.125', 'http://192.168.43.125:8080/springboot_309/click.jsp', 26);
INSERT INTO `clicknumber` VALUES (30, '2018-11-27 09:23:47', '192.168.43.125', 'http://192.168.43.125:8080/springboot_309/click.jsp', 27);
INSERT INTO `clicknumber` VALUES (31, '2018-11-27 09:24:32', '192.168.43.117', 'http://192.168.43.125:8080/springboot_309/click.jsp', 27);
INSERT INTO `clicknumber` VALUES (32, '2018-11-27 10:51:15', '192.168.43.125', 'http://192.168.43.125:8080/springboot_309/click.jsp', 28);
INSERT INTO `clicknumber` VALUES (33, '2018-11-27 10:56:36', '192.168.43.125', 'http://192.168.43.125:8080/springboot_309/click.jsp', 29);
INSERT INTO `clicknumber` VALUES (34, '2018-11-27 11:16:15', '192.168.43.125', 'http://192.168.43.125:8080/springboot_309/click.jsp', 30);
INSERT INTO `clicknumber` VALUES (35, '2018-11-27 11:20:35', '192.168.43.117', 'http://192.168.43.125:8080/springboot_309/click.jsp', 30);
INSERT INTO `clicknumber` VALUES (36, '2018-11-27 14:07:09', '192.168.43.125', 'http://192.168.43.125:8080/springboot_309/click.jsp', 31);
INSERT INTO `clicknumber` VALUES (37, '2018-11-27 14:11:35', '192.168.43.125', 'http://192.168.43.125:8080/springboot_309/click.jsp', 32);
INSERT INTO `clicknumber` VALUES (38, '2018-11-27 14:12:13', '192.168.43.117', 'http://192.168.43.125:8080/springboot_309/click.jsp', 32);

-- ----------------------------
-- Table structure for dsp
-- ----------------------------
DROP TABLE IF EXISTS `dsp`;
CREATE TABLE `dsp`  (
  `auid` int(11) NOT NULL AUTO_INCREMENT,
  `firmName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `firmAddress` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `firmSites` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `uid` int(11) DEFAULT NULL COMMENT '外键用户表uid',
  `ctime` datetime DEFAULT NULL,
  `uptime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`auid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for dspcheck
-- ----------------------------
DROP TABLE IF EXISTS `dspcheck`;
CREATE TABLE `dspcheck`  (
  `d-id` int(11) NOT NULL AUTO_INCREMENT,
  `did` int(11) NOT NULL,
  `aid` int(11) DEFAULT NULL,
  `state` int(255) NOT NULL,
  `checktime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `test` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`d-id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dspcheck
-- ----------------------------
INSERT INTO `dspcheck` VALUES (1, 1, 1, 5, '2018-10-17 12:52:10', '无');
INSERT INTO `dspcheck` VALUES (2, 2, 1, 5, '2018-11-03 11:36:08', 'f');
INSERT INTO `dspcheck` VALUES (3, 3, 1, 2, '2018-11-03 11:36:44', 'wu ');
INSERT INTO `dspcheck` VALUES (4, 5, 1, 5, '2018-11-16 15:46:36', '');
INSERT INTO `dspcheck` VALUES (5, 6, 1, 5, '2018-11-16 15:46:42', '');
INSERT INTO `dspcheck` VALUES (6, 11, 1, 5, '2018-11-24 09:34:49', '');
INSERT INTO `dspcheck` VALUES (7, 12, 1, 5, '2018-11-24 10:20:13', '');
INSERT INTO `dspcheck` VALUES (8, 12, 1, 5, '2018-11-24 10:50:58', '');
INSERT INTO `dspcheck` VALUES (9, 12, 1, 5, '2018-11-24 10:51:17', '');
INSERT INTO `dspcheck` VALUES (10, 14, 1, 5, '2018-11-26 10:00:20', '');
INSERT INTO `dspcheck` VALUES (11, 15, 1, 5, '2018-11-26 14:30:46', '');
INSERT INTO `dspcheck` VALUES (12, 16, 1, 5, '2018-11-26 14:55:43', '');
INSERT INTO `dspcheck` VALUES (13, 17, 1, 5, '2018-11-27 09:04:41', '');
INSERT INTO `dspcheck` VALUES (14, 18, 1, 5, '2018-11-27 09:21:08', '');
INSERT INTO `dspcheck` VALUES (15, 19, 1, 5, '2018-11-27 10:46:49', '');
INSERT INTO `dspcheck` VALUES (16, 20, 1, 5, '2018-11-27 13:58:37', '');
INSERT INTO `dspcheck` VALUES (17, 21, 1, 5, '2018-11-27 14:02:03', '');

-- ----------------------------
-- Table structure for dynamic
-- ----------------------------
DROP TABLE IF EXISTS `dynamic`;
CREATE TABLE `dynamic`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dtime` datetime DEFAULT NULL,
  `dmoney` double(255, 2) DEFAULT NULL,
  `drevenue` double(255, 2) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `dcharge` double(255, 2) DEFAULT NULL,
  `dreality` double(255, 2) DEFAULT NULL,
  `dapply` datetime DEFAULT NULL,
  `state` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for feedback
-- ----------------------------
DROP TABLE IF EXISTS `feedback`;
CREATE TABLE `feedback`  (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `matter` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `orderid` int(11) DEFAULT NULL,
  `ptime` datetime DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`cid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of feedback
-- ----------------------------
INSERT INTO `feedback` VALUES (1, '', 10, 7, '2018-11-22 08:25:00', 0);
INSERT INTO `feedback` VALUES (2, 'LAJI', 10, 7, '2018-11-22 08:26:53', 0);
INSERT INTO `feedback` VALUES (3, 'f', 6, 5, '2018-11-23 19:35:00', 0);
INSERT INTO `feedback` VALUES (4, 'haode ', 13, 9, '2018-11-24 11:46:36', 0);
INSERT INTO `feedback` VALUES (5, 'f', 13, 9, '2018-11-24 11:47:15', 0);
INSERT INTO `feedback` VALUES (6, 'f', 16, 11, '2018-11-26 11:37:31', 0);
INSERT INTO `feedback` VALUES (7, 'test', 21, 26, '2018-11-27 14:14:36', 1);

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message`  (
  `wordid` int(11) NOT NULL AUTO_INCREMENT,
  `matter` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ptime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `uid` int(11) DEFAULT NULL,
  `state` int(255) DEFAULT NULL,
  `orderid` int(11) DEFAULT NULL,
  PRIMARY KEY (`wordid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 94 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES (2, '您的订单所剩金额不足10%', '订单续费提醒，订单id：1', '2018-11-02 13:05:07', 2, 0, 1);
INSERT INTO `message` VALUES (3, '您的订单所剩金额不足10%', '订单续费提醒，订单id：1', '2018-11-02 12:48:00', 2, 0, NULL);
INSERT INTO `message` VALUES (4, '您的订单所剩金额不足10%', '订单续费提醒，订单id：1', '2018-11-02 12:48:00', 2, 0, NULL);
INSERT INTO `message` VALUES (5, '您的订单所剩金额不足10%', '订单续费提醒，订单id：1', '2018-11-02 12:49:00', 2, 0, NULL);
INSERT INTO `message` VALUES (6, '您的订单所剩金额不足10%', '订单续费提醒，订单id：1', '2018-11-02 12:49:00', 2, 0, NULL);
INSERT INTO `message` VALUES (7, '您的订单所剩金额不足10%', '订单续费提醒，订单id：1', '2018-11-02 12:49:00', 2, 0, NULL);
INSERT INTO `message` VALUES (8, '您的订单所剩金额不足10%', '订单续费提醒，订单id：1', '2018-11-02 12:49:00', 2, 0, NULL);
INSERT INTO `message` VALUES (9, '您的订单即将完成，您可续费继续进行此订单', '订单续费提醒', '2018-11-02 13:32:00', 2, 0, 1);
INSERT INTO `message` VALUES (10, '您的网站信息审核失败,原因:11', '广告模板审核', '2018-11-03 11:16:57', 1, 0, 0);
INSERT INTO `message` VALUES (11, '您的网站信息审核失败,原因:f', '广告模板审核', '2018-11-03 11:20:36', 1, 0, 0);
INSERT INTO `message` VALUES (12, '您的网站信息审核失败,原因:diz', '广告模板审核', '2018-11-03 11:23:42', 1, 0, 0);
INSERT INTO `message` VALUES (13, '您的模板审核成功了,开始使用吧', '广告模板审核', '2018-11-03 11:36:08', 1, 0, 0);
INSERT INTO `message` VALUES (14, '您的模板审核失败,原因:wu ', '广告模板审核', '2018-11-03 11:36:45', 1, 0, 0);
INSERT INTO `message` VALUES (15, '您的网站信息审核成功了,开始使用吧', '广告模板审核', '2018-11-13 18:33:17', 5, 0, 0);
INSERT INTO `message` VALUES (16, '您的网站信息审核成功了,开始使用吧', '广告模板审核', '2018-11-14 09:18:22', 6, 0, 0);
INSERT INTO `message` VALUES (17, '您的模板审核成功了,开始使用吧', '广告模板审核', '2018-11-16 15:46:37', 5, 0, 0);
INSERT INTO `message` VALUES (18, '您的模板审核成功了,开始使用吧', '广告模板审核', '2018-11-16 15:46:42', 6, 0, 0);
INSERT INTO `message` VALUES (19, '您的网站信息审核成功了,开始使用吧', '广告模板审核', '2018-11-20 12:16:38', 10, 0, 0);
INSERT INTO `message` VALUES (20, '您的网站信息审核成功了,开始使用吧', '广告模板审核', '2018-11-21 17:20:07', 10, 0, 0);
INSERT INTO `message` VALUES (21, '订单反馈', '后台接收', '2018-11-22 08:25:01', 0, 0, 0);
INSERT INTO `message` VALUES (22, '订单反馈', '后台接收', '2018-11-22 08:26:53', 0, 0, 0);
INSERT INTO `message` VALUES (23, 'f', '反馈订单', '2018-11-22 11:22:09', 10, 0, 0);
INSERT INTO `message` VALUES (24, 'ee', '反馈订单', '2018-11-22 11:30:52', 10, 0, 0);
INSERT INTO `message` VALUES (43, '您的订单即将完成，您可续费继续进行此订单', '订单续费提醒', '2018-11-23 18:54:00', 10, 0, 5);
INSERT INTO `message` VALUES (44, '您的订单已完成，订单编号:5', '订单提醒', '2018-11-23 18:54:00', 10, 0, 5);
INSERT INTO `message` VALUES (45, '您的订单即将完成，您可续费继续进行此订单', '订单续费提醒', '2018-11-23 19:15:00', 10, 0, 4);
INSERT INTO `message` VALUES (46, '您的订单已完成，订单编号:4', '订单提醒', '2018-11-23 19:15:03', 10, 0, 4);
INSERT INTO `message` VALUES (47, '订单反馈', '后台接收', '2018-11-23 19:35:01', 0, 0, 0);
INSERT INTO `message` VALUES (48, 'e', '反馈订单', '2018-11-23 19:35:16', 6, 0, 0);
INSERT INTO `message` VALUES (49, '您的模板审核成功了,开始使用吧', '广告模板审核', '2018-11-24 09:34:49', 11, 0, 0);
INSERT INTO `message` VALUES (50, '您的模板审核成功了,开始使用吧', '广告模板审核', '2018-11-24 10:20:57', 13, 1, 0);
INSERT INTO `message` VALUES (51, '您的网站信息审核成功了,开始使用吧', '广告模板审核', '2018-11-24 10:31:11', 14, 0, 0);
INSERT INTO `message` VALUES (52, '您的模板审核成功了,开始使用吧', '广告模板审核', '2018-11-24 10:50:58', 13, 0, 0);
INSERT INTO `message` VALUES (53, '您的模板审核成功了,开始使用吧', '广告模板审核', '2018-11-24 10:51:17', 13, 0, 0);
INSERT INTO `message` VALUES (54, '订单反馈', '后台接收', '2018-11-24 11:46:36', 0, 0, 0);
INSERT INTO `message` VALUES (55, '恩', '反馈订单', '2018-11-24 11:46:55', 13, 0, 0);
INSERT INTO `message` VALUES (56, '订单反馈', '后台接收', '2018-11-24 11:47:15', 0, 0, 0);
INSERT INTO `message` VALUES (57, '您的网站信息审核成功了,开始使用吧', '广告模板审核', '2018-11-26 11:29:15', 15, 1, 0);
INSERT INTO `message` VALUES (58, '您的模板审核成功了,开始使用吧', '广告模板审核', '2018-11-26 10:00:20', 16, 0, 0);
INSERT INTO `message` VALUES (59, '您的订单即将完成，您可续费继续进行此订单', '订单续费提醒', '2018-11-26 11:03:01', 16, 0, 11);
INSERT INTO `message` VALUES (60, '您的订单已完成，订单编号:11', '订单提醒', '2018-11-26 11:03:07', 16, 0, 11);
INSERT INTO `message` VALUES (61, '该广告订单已完成，广告编号:12', '订单提醒', '2018-11-26 11:03:46', 16, 1, 28);
INSERT INTO `message` VALUES (62, '您的订单即将完成，您可续费继续进行此订单', '订单续费提醒', '2018-11-26 11:30:04', 16, 1, 12);
INSERT INTO `message` VALUES (63, '您的订单已完成，订单编号:12', '订单提醒', '2018-11-26 11:29:02', 16, 0, 12);
INSERT INTO `message` VALUES (64, '该广告订单已完成，广告编号:13', '订单提醒', '2018-11-26 11:30:01', 16, 1, 29);
INSERT INTO `message` VALUES (65, '订单反馈', '后台接收', '2018-11-26 11:37:31', 0, 0, 0);
INSERT INTO `message` VALUES (66, 'fff', '反馈订单', '2018-11-26 11:37:54', 16, 1, 0);
INSERT INTO `message` VALUES (67, '您的模板审核成功了,开始使用吧', '广告模板审核', '2018-11-26 14:31:26', 17, 1, 0);
INSERT INTO `message` VALUES (68, '您的网站信息审核成功了,开始使用吧', '广告模板审核', '2018-11-26 14:44:25', 20, 1, 0);
INSERT INTO `message` VALUES (69, '您的订单即将完成，您可续费继续进行此订单', '订单续费提醒', '2018-11-26 14:42:07', 17, 1, 22);
INSERT INTO `message` VALUES (70, '您的订单已完成，订单编号:22', '订单提醒', '2018-11-26 14:42:10', 17, 1, 22);
INSERT INTO `message` VALUES (71, '该广告订单已完成，广告编号:22', '订单提醒', '2018-11-26 14:42:00', 17, 1, 40);
INSERT INTO `message` VALUES (72, '您的订单即将完成，您可续费继续进行此订单', '订单续费提醒', '2018-11-26 15:14:26', 17, 1, 23);
INSERT INTO `message` VALUES (73, '您的订单已完成，订单编号:23', '订单提醒', '2018-11-26 14:52:32', 17, 1, 23);
INSERT INTO `message` VALUES (74, '该广告订单已完成，广告编号:23', '订单提醒', '2018-11-26 15:14:29', 17, 1, 41);
INSERT INTO `message` VALUES (75, '您的模板审核成功了,开始使用吧', '广告模板审核', '2018-11-26 15:14:31', 17, 1, 0);
INSERT INTO `message` VALUES (76, '您的模板审核成功了,开始使用吧', '广告模板审核', '2018-11-27 09:05:11', 21, 1, 0);
INSERT INTO `message` VALUES (77, '您的网站信息审核成功了,开始使用吧', '广告模板审核', '2018-11-27 09:25:43', 22, 1, 0);
INSERT INTO `message` VALUES (78, '您的模板审核成功了,开始使用吧', '广告模板审核', '2018-11-27 09:21:09', 21, 0, 0);
INSERT INTO `message` VALUES (79, '您的订单即将完成，您可续费继续进行此订单', '订单续费提醒', '2018-11-27 09:25:00', 21, 0, 27);
INSERT INTO `message` VALUES (80, '您的订单已完成，订单编号:27', '订单提醒', '2018-11-27 09:25:00', 21, 0, 27);
INSERT INTO `message` VALUES (81, '该广告订单已完成，广告编号:27', '订单提醒', '2018-11-27 09:25:45', 22, 1, 45);
INSERT INTO `message` VALUES (82, '您的模板审核成功了,开始使用吧', '广告模板审核', '2018-11-27 10:46:49', 21, 0, 0);
INSERT INTO `message` VALUES (83, '您的订单即将完成，您可续费继续进行此订单', '订单续费提醒', '2018-11-27 11:21:00', 21, 0, 30);
INSERT INTO `message` VALUES (84, '您的订单已完成，订单编号:30', '订单提醒', '2018-11-27 11:21:04', 21, 0, 30);
INSERT INTO `message` VALUES (85, '该广告订单已完成，广告编号:30', '订单提醒', '2018-11-27 11:21:04', 22, 0, 48);
INSERT INTO `message` VALUES (86, '您的模板审核成功了,开始使用吧', '广告模板审核', '2018-11-27 13:58:37', 23, 0, 0);
INSERT INTO `message` VALUES (87, '您的模板审核成功了,开始使用吧', '广告模板审核', '2018-11-27 14:02:03', 21, 0, 0);
INSERT INTO `message` VALUES (88, '您的网站信息审核成功了,开始使用吧', '广告模板审核', '2018-11-27 14:05:20', 24, 0, 0);
INSERT INTO `message` VALUES (89, '您的订单即将完成，您可续费继续进行此订单', '订单续费提醒', '2018-11-27 14:13:00', 21, 0, 32);
INSERT INTO `message` VALUES (90, '您的订单已完成，订单编号:32', '订单提醒', '2018-11-27 14:13:00', 21, 0, 32);
INSERT INTO `message` VALUES (91, '该广告订单已完成，广告编号:32', '订单提醒', '2018-11-27 14:13:00', 24, 0, 50);
INSERT INTO `message` VALUES (92, '订单反馈', '后台接收', '2018-11-27 14:14:36', 0, 0, 0);
INSERT INTO `message` VALUES (93, '收到', '反馈订单', '2018-11-27 14:15:17', 21, 1, 0);

-- ----------------------------
-- Table structure for money
-- ----------------------------
DROP TABLE IF EXISTS `money`;
CREATE TABLE `money`  (
  `sumid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `accountsum` double(255, 2) DEFAULT NULL,
  `frostsum` double(255, 2) DEFAULT NULL,
  `sum` double(255, 2) DEFAULT NULL,
  `uptime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`sumid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of money
-- ----------------------------
INSERT INTO `money` VALUES (1, 1, 212.00, 490.00, 702.00, '2018-11-16 19:14:57');
INSERT INTO `money` VALUES (2, 5, 0.00, 0.00, 0.00, '2018-11-13 12:22:13');
INSERT INTO `money` VALUES (3, 6, 200.00, 0.00, 200.00, '2018-11-20 11:04:07');
INSERT INTO `money` VALUES (4, 7, 0.00, 0.00, 0.00, '2018-11-15 11:54:23');
INSERT INTO `money` VALUES (5, 8, 1.00, 1.00, 2.00, '2018-11-23 17:53:44');
INSERT INTO `money` VALUES (6, 10, 5000.00, 0.00, 5000.00, '2018-11-23 18:54:00');
INSERT INTO `money` VALUES (7, 11, 96.00, 4.00, 100.00, '2018-11-24 09:38:36');
INSERT INTO `money` VALUES (8, 12, 0.00, 0.00, 0.00, '2018-11-24 09:40:10');
INSERT INTO `money` VALUES (9, 13, 2000.00, 0.00, 2000.00, '2018-11-24 11:38:13');
INSERT INTO `money` VALUES (10, 14, 104.00, 0.00, 104.00, '2018-11-24 11:21:04');
INSERT INTO `money` VALUES (11, 15, 13.00, 0.00, 13.00, '2018-11-26 14:11:38');
INSERT INTO `money` VALUES (12, 16, 106.97, -8.97, 98.00, '2018-11-26 14:11:38');
INSERT INTO `money` VALUES (13, 17, 95.06, 0.00, 95.06, '2018-11-26 15:11:05');
INSERT INTO `money` VALUES (14, 18, 0.00, 0.00, 0.00, '2018-11-26 14:32:31');
INSERT INTO `money` VALUES (15, 20, 1.00, 0.00, 1.00, '2018-11-26 15:27:56');
INSERT INTO `money` VALUES (16, 21, 5194.12, 0.00, 5194.12, '2018-11-27 14:13:00');
INSERT INTO `money` VALUES (17, 22, 7.00, 0.00, 7.00, '2018-11-27 11:21:04');
INSERT INTO `money` VALUES (18, 23, 400.00, 0.00, 400.00, '2018-11-27 14:00:47');
INSERT INTO `money` VALUES (19, 24, 1.00, 0.00, 1.00, '2018-11-27 14:17:13');

-- ----------------------------
-- Table structure for muban
-- ----------------------------
DROP TABLE IF EXISTS `muban`;
CREATE TABLE `muban`  (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `mname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `mimg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `murl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `uudit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`mid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of muban
-- ----------------------------
INSERT INTO `muban` VALUES (1, 'fdsas', 'img/dcy/bf98e46f-e0da-4e35-9cc9-7df93c4830dd.png', 'https://hao.360.cn/?wd_xp1', 1, '1');
INSERT INTO `muban` VALUES (2, '2345', 'img/dcy/0a4aba62-6414-4873-80a2-75681762b0a7.png', 'dasfdg', 1, '5');
INSERT INTO `muban` VALUES (3, 'dsffsd', 'img/dcy/b6d72cb4-7a6a-42de-970b-17511c62fd6d.png', 'fsdaasd', 1, '2');
INSERT INTO `muban` VALUES (4, 'fdsfds', 'img/dcy/c0498f8f-a099-4e92-9a52-f0b23d1b4c92.png', 'fdfghfd', 1, '1');
INSERT INTO `muban` VALUES (5, '汽车', 'img/dcy/d09b115e-a5f6-447c-b6c2-f594a12eec27.png', 'c.jsp', 5, '5');
INSERT INTO `muban` VALUES (6, '汽车之家', 'img/dcy/e6a95d69-86e1-49fe-b628-776371311ec8.jpg', 'https://yjh13673688161.icoc.bz/', 10, '5');
INSERT INTO `muban` VALUES (11, 'fdsg', 'img/dcy/478ac282-0bf5-45d7-9269-9ad052fb1cba.jpg', 'www.baidu.com', 11, '5');
INSERT INTO `muban` VALUES (12, '汽车', 'img/dcy/7c4e77bd-533f-42c6-bd2c-6f2ae38e5e0b.jpg', 'www.baidu.com', 13, '5');
INSERT INTO `muban` VALUES (13, '嗡嗡嗡旅游攻略网', 'img/dcy/808239b8-f9c4-48e3-a3b7-d462d40d0835.jpg', 'http://192.168.43.142/destinationController/queryAllDestination', 13, '5');
INSERT INTO `muban` VALUES (14, '租房', 'img/dcy/1e07b8b1-5411-4948-9c2d-306a82d2f7ce.jpg', '192.168.43.51:8080/home/queryHome', 16, '5');
INSERT INTO `muban` VALUES (15, '租房', 'img/dcy/2e3f8339-f866-48db-94d7-d29cdbcc8582.jpg', '192.168.43.51:8080/home/queryHome', 17, '5');
INSERT INTO `muban` VALUES (16, 'geren', 'img/dcy/03e4f869-fcaa-4f91-87f1-360851daead2.png', '192.168.43.51:8080/home/queryHome', 17, '5');
INSERT INTO `muban` VALUES (17, 'ceshi1', 'img/dcy/cc5b7c0b-23a2-4a83-9bc2-3577d4b76077.jpg', 'http://192.168.43.72:8080/home/queryHome', 21, '5');
INSERT INTO `muban` VALUES (18, 'ceshi2', 'img/dcy/90ea3846-38df-4de1-909c-99cf39666170.jpg', '192.168.43.51:8080/home/queryHome', 21, '5');
INSERT INTO `muban` VALUES (19, 'ceshi3', 'img/dcy/e2a9357a-d6c6-4caa-80be-bb1b84cf421d.jpg', 'http://192.168.43.72:8080/home/queryHome', 21, '5');
INSERT INTO `muban` VALUES (20, '租房', 'img/dcy/18796b0f-aade-418a-b4b1-d0aff1d737f2.jpg', 'http://192.168.43.72:8080/home/queryHome', 23, '5');
INSERT INTO `muban` VALUES (21, '租房', 'img/dcy/c34c1694-4a2f-4448-88ea-b1be58d1b6f0.jpg', 'http://192.168.43.72:8080/home/queryHome', 21, '5');

-- ----------------------------
-- Table structure for profit
-- ----------------------------
DROP TABLE IF EXISTS `profit`;
CREATE TABLE `profit`  (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `smoney` double(255, 2) DEFAULT NULL,
  `money` double(255, 2) DEFAULT NULL,
  `test` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `ptime` datetime DEFAULT NULL,
  PRIMARY KEY (`pid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of profit
-- ----------------------------
INSERT INTO `profit` VALUES (2, 100.00, 98.00, '天一广告联盟提现', 1, '2018-11-16 19:14:57');
INSERT INTO `profit` VALUES (3, 3.00, 0.09, '订单撤销手续费', 10, '2018-11-20 11:50:04');
INSERT INTO `profit` VALUES (4, 3.00, 0.09, '订单撤销手续费', 13, '2018-11-24 11:21:04');
INSERT INTO `profit` VALUES (5, 5000.00, 150.00, '订单撤销手续费', 13, '2018-11-24 11:38:13');
INSERT INTO `profit` VALUES (6, 2.00, 0.06, '订单撤销手续费', 16, '2018-11-26 11:36:22');
INSERT INTO `profit` VALUES (7, 10.00, 0.30, '订单撤销手续费', 16, '2018-11-26 12:54:15');
INSERT INTO `profit` VALUES (8, 2.00, 0.06, '订单撤销手续费', 16, '2018-11-26 13:04:57');
INSERT INTO `profit` VALUES (9, 4.00, 0.12, '订单撤销手续费', 16, '2018-11-26 13:35:22');
INSERT INTO `profit` VALUES (10, 3.00, 0.09, '订单撤销手续费', 16, '2018-11-26 13:44:09');
INSERT INTO `profit` VALUES (11, 3.00, 0.09, '订单撤销手续费', 16, '2018-11-26 13:49:20');
INSERT INTO `profit` VALUES (12, 0.00, 0.00, '订单撤销手续费', 16, '2018-11-26 13:57:51');
INSERT INTO `profit` VALUES (13, 1.00, 0.03, '订单撤销手续费', 16, '2018-11-26 14:04:57');
INSERT INTO `profit` VALUES (14, 1.00, 0.03, '订单撤销手续费', 16, '2018-11-26 14:11:38');
INSERT INTO `profit` VALUES (15, 1.00, 0.03, '订单撤销手续费', 17, '2018-11-26 14:57:30');
INSERT INTO `profit` VALUES (16, 2.00, 0.06, '订单撤销手续费', 17, '2018-11-26 15:11:05');
INSERT INTO `profit` VALUES (17, 1.00, 0.02, '天一广告联盟提现', 20, '2018-11-26 15:15:15');
INSERT INTO `profit` VALUES (18, 1.00, 0.02, '天一广告联盟提现', 20, '2018-11-26 15:19:56');
INSERT INTO `profit` VALUES (19, 2.00, 0.04, '天一广告联盟提现', 20, '2018-11-26 15:23:40');
INSERT INTO `profit` VALUES (20, 1.00, 0.02, '天一广告联盟提现', 20, '2018-11-26 15:27:56');
INSERT INTO `profit` VALUES (21, 1.00, 0.03, '订单撤销手续费', 21, '2018-11-27 09:16:11');
INSERT INTO `profit` VALUES (22, 100.00, 2.00, '天一广告联盟提现', 21, '2018-11-27 09:29:10');
INSERT INTO `profit` VALUES (23, 90.00, 1.80, '天一广告联盟提现', 21, '2018-11-27 09:33:21');
INSERT INTO `profit` VALUES (24, 100.00, 2.00, '天一广告联盟提现', 22, '2018-11-27 09:33:53');
INSERT INTO `profit` VALUES (25, 1.00, 0.03, '订单撤销手续费', 21, '2018-11-27 10:55:18');
INSERT INTO `profit` VALUES (26, 1.00, 0.03, '订单撤销手续费', 21, '2018-11-27 11:14:08');
INSERT INTO `profit` VALUES (27, 1.00, 0.03, '订单撤销手续费', 21, '2018-11-27 14:08:31');
INSERT INTO `profit` VALUES (28, 6.00, 0.12, '天一广告联盟提现', 24, '2018-11-27 14:17:14');

-- ----------------------------
-- Table structure for record
-- ----------------------------
DROP TABLE IF EXISTS `record`;
CREATE TABLE `record`  (
  `dealid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `dsum` decimal(11, 2) DEFAULT NULL,
  `ptime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`dealid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 92 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of record
-- ----------------------------
INSERT INTO `record` VALUES (1, 1, '1', 100.00, '2018-10-30 02:09:58', '订单预算金额');
INSERT INTO `record` VALUES (2, 1, '1', 100.00, '2018-10-30 02:22:38', '订单预算金额');
INSERT INTO `record` VALUES (3, 1, '1', 90.00, '2018-11-03 02:23:56', '订单预算金额');
INSERT INTO `record` VALUES (4, 1, '提现', 100.00, '2018-11-16 19:14:57', '天一广告联盟提现');
INSERT INTO `record` VALUES (6, 10, '1', 5.00, '2018-11-20 03:26:10', '订单预算金额');
INSERT INTO `record` VALUES (7, 10, '1', 4.00, '2018-11-20 03:27:12', '订单预算金额');
INSERT INTO `record` VALUES (8, 10, '1', 3.00, '2018-11-20 03:32:31', '订单预算金额');
INSERT INTO `record` VALUES (9, 10, '1', 3.00, '2018-11-20 03:34:42', '订单预算金额');
INSERT INTO `record` VALUES (10, 10, '3', -0.09, '2018-11-20 03:34:54', '撤销订单，返回冻结金额');
INSERT INTO `record` VALUES (11, 10, '3', -0.09, '2018-11-20 03:47:49', '撤销订单，返回冻结金额');
INSERT INTO `record` VALUES (12, 10, '3', -0.09, '2018-11-20 03:50:04', '撤销订单，返回冻结金额');
INSERT INTO `record` VALUES (13, 11, '1', 4.00, '2018-11-24 01:38:36', '订单预算金额');
INSERT INTO `record` VALUES (14, 13, '1', 100.00, '2018-11-24 02:22:16', '订单预算金额');
INSERT INTO `record` VALUES (15, 13, '1', 3.00, '2018-11-24 02:53:04', '订单预算金额');
INSERT INTO `record` VALUES (16, 13, '2', 1.00, '2018-11-24 03:08:22', '订单完成，佣金返还');
INSERT INTO `record` VALUES (17, 13, '3', -0.09, '2018-11-24 03:08:22', '撤销订单，返回冻结金额');
INSERT INTO `record` VALUES (18, 13, '2', 1.00, '2018-11-24 03:17:26', '订单完成，佣金返还');
INSERT INTO `record` VALUES (19, 13, '3', -0.09, '2018-11-24 03:17:26', '撤销订单，返回冻结金额');
INSERT INTO `record` VALUES (20, 13, '2', 1.00, '2018-11-24 03:19:58', '订单完成，佣金返还');
INSERT INTO `record` VALUES (21, 13, '3', -0.09, '2018-11-24 03:19:58', '撤销订单，返回冻结金额');
INSERT INTO `record` VALUES (22, 13, '2', 1.00, '2018-11-24 03:21:04', '订单完成，佣金返还');
INSERT INTO `record` VALUES (23, 13, '3', -0.09, '2018-11-24 03:21:04', '撤销订单，返回冻结金额');
INSERT INTO `record` VALUES (24, 13, '2', 0.00, '2018-11-24 11:38:13', '订单完成，佣金返还');
INSERT INTO `record` VALUES (25, 13, '3', -5050.00, '2018-11-24 11:38:13', '撤销订单，返回冻结金额');
INSERT INTO `record` VALUES (26, 16, '1', 2.00, '2018-11-26 02:07:19', '订单预算金额');
INSERT INTO `record` VALUES (27, 15, '订单完成', 2.00, '2018-11-26 11:03:07', '该网站点击量的金额');
INSERT INTO `record` VALUES (28, 16, '1', 2.00, '2018-11-26 03:07:02', '订单预算金额');
INSERT INTO `record` VALUES (29, 15, '订单完成', 2.00, '2018-11-26 11:29:02', '该网站点击量的金额');
INSERT INTO `record` VALUES (30, 16, '1', 2.00, '2018-11-26 03:30:46', '订单预算金额');
INSERT INTO `record` VALUES (31, 16, '2', 1.00, '2018-11-26 11:36:22', '订单完成，佣金返还');
INSERT INTO `record` VALUES (32, 16, '3', -0.06, '2018-11-26 11:36:22', '撤销订单，返回冻结金额');
INSERT INTO `record` VALUES (33, 16, '2', 1.00, '2018-11-26 12:54:15', '订单完成，佣金返还');
INSERT INTO `record` VALUES (34, 16, '3', -0.30, '2018-11-26 12:54:15', '撤销订单，返回冻结金额');
INSERT INTO `record` VALUES (35, 16, '1', 2.00, '2018-11-26 04:59:06', '订单预算金额');
INSERT INTO `record` VALUES (36, 16, '2', 1.00, '2018-11-26 13:04:57', '订单完成，佣金返还');
INSERT INTO `record` VALUES (37, 16, '3', -0.06, '2018-11-26 13:04:57', '撤销订单，返回冻结金额');
INSERT INTO `record` VALUES (38, 16, '1', 4.00, '2018-11-26 05:33:16', '订单预算金额');
INSERT INTO `record` VALUES (39, 16, '2', 1.00, '2018-11-26 13:35:22', '订单完成，佣金返还');
INSERT INTO `record` VALUES (40, 16, '3', -0.12, '2018-11-26 13:35:22', '撤销订单，返回冻结金额');
INSERT INTO `record` VALUES (41, 16, '1', 3.00, '2018-11-26 05:41:53', '订单预算金额');
INSERT INTO `record` VALUES (42, 16, '2', 1.00, '2018-11-26 13:44:08', '订单完成，佣金返还');
INSERT INTO `record` VALUES (43, 16, '3', -0.09, '2018-11-26 13:44:09', '撤销订单，返回冻结金额');
INSERT INTO `record` VALUES (44, 16, '1', 3.00, '2018-11-26 05:46:16', '订单预算金额');
INSERT INTO `record` VALUES (45, 15, '2', 1.00, '2018-11-26 13:49:19', '订单完成，佣金返还');
INSERT INTO `record` VALUES (46, 16, '3', -0.09, '2018-11-26 13:49:19', '撤销订单，返回冻结金额');
INSERT INTO `record` VALUES (47, 16, '1', 3.00, '2018-11-26 05:55:34', '订单预算金额');
INSERT INTO `record` VALUES (48, 15, '2', 1.00, '2018-11-26 13:57:51', '订单完成，佣金返还');
INSERT INTO `record` VALUES (49, 16, '3', 3.00, '2018-11-26 13:57:51', '撤销订单，返回冻结金额');
INSERT INTO `record` VALUES (50, 16, '1', 3.00, '2018-11-26 06:03:24', '订单预算金额');
INSERT INTO `record` VALUES (51, 15, '2', 1.00, '2018-11-26 14:04:57', '订单完成，佣金返还');
INSERT INTO `record` VALUES (52, 16, '3', 1.97, '2018-11-26 14:04:57', '撤销订单，返回冻结金额');
INSERT INTO `record` VALUES (53, 16, '1', 3.00, '2018-11-26 06:10:10', '订单预算金额');
INSERT INTO `record` VALUES (54, 15, '2', 1.00, '2018-11-26 14:11:38', '订单完成，佣金返还');
INSERT INTO `record` VALUES (55, 16, '3', 1.97, '2018-11-26 14:11:38', '撤销订单，返回冻结金额');
INSERT INTO `record` VALUES (56, 17, '1', 2.00, '2018-11-26 06:31:21', '订单预算金额');
INSERT INTO `record` VALUES (57, 20, '订单完成', 1.00, '2018-11-26 14:39:03', '该网站点击量的金额');
INSERT INTO `record` VALUES (58, 17, '1', 2.00, '2018-11-26 06:49:18', '订单预算金额');
INSERT INTO `record` VALUES (59, 20, '订单完成', 2.00, '2018-11-26 14:51:01', '该网站点击量的金额');
INSERT INTO `record` VALUES (60, 17, '1', 2.00, '2018-11-26 06:56:12', '订单预算金额');
INSERT INTO `record` VALUES (61, 20, '2', 1.00, '2018-11-26 14:57:30', '订单完成，佣金返还');
INSERT INTO `record` VALUES (62, 17, '3', 0.97, '2018-11-26 14:57:30', '撤销订单，返回冻结金额');
INSERT INTO `record` VALUES (63, 17, '1', 3.00, '2018-11-26 07:03:15', '订单预算金额');
INSERT INTO `record` VALUES (64, 20, '2', 2.00, '2018-11-26 15:11:05', '订单完成，佣金返还');
INSERT INTO `record` VALUES (65, 17, '3', 0.94, '2018-11-26 15:11:05', '撤销订单，返回冻结金额');
INSERT INTO `record` VALUES (66, 20, '提现', 1.00, '2018-11-26 15:15:15', '天一广告联盟提现');
INSERT INTO `record` VALUES (67, 20, '提现', 1.00, '2018-11-26 15:19:56', '天一广告联盟提现');
INSERT INTO `record` VALUES (68, 20, '提现', 1.96, '2018-11-26 15:23:40', '天一广告联盟提现');
INSERT INTO `record` VALUES (69, 20, '提现', 0.98, '2018-11-26 15:27:56', '天一广告联盟提现');
INSERT INTO `record` VALUES (70, 21, '1', 3.00, '2018-11-27 01:09:03', '订单预算金额');
INSERT INTO `record` VALUES (71, 22, '2', 1.00, '2018-11-27 09:16:11', '订单完成，佣金返还');
INSERT INTO `record` VALUES (72, 21, '3', 1.97, '2018-11-27 09:16:11', '撤销订单，返回冻结金额');
INSERT INTO `record` VALUES (73, 21, '1', 2.00, '2018-11-27 01:22:09', '订单预算金额');
INSERT INTO `record` VALUES (74, 22, '订单完成', 2.00, '2018-11-27 09:25:00', '该网站点击量的金额');
INSERT INTO `record` VALUES (75, 21, '提现', 98.00, '2018-11-27 09:29:10', '天一广告联盟提现');
INSERT INTO `record` VALUES (76, 21, '提现', 88.20, '2018-11-27 09:33:21', '天一广告联盟提现');
INSERT INTO `record` VALUES (77, 22, '提现', 98.00, '2018-11-27 09:33:53', '天一广告联盟提现');
INSERT INTO `record` VALUES (78, 21, '1', 2.00, '2018-11-27 02:47:07', '订单预算金额');
INSERT INTO `record` VALUES (79, 21, '1', 2.00, '2018-11-27 02:55:09', '订单预算金额');
INSERT INTO `record` VALUES (80, 22, '2', 1.00, '2018-11-27 10:55:18', '订单完成，佣金返还');
INSERT INTO `record` VALUES (81, 21, '3', 0.97, '2018-11-27 10:55:18', '撤销订单，返回冻结金额');
INSERT INTO `record` VALUES (82, 21, '1', 2.00, '2018-11-27 03:14:01', '订单预算金额');
INSERT INTO `record` VALUES (83, 22, '2', 1.00, '2018-11-27 11:14:08', '订单完成，佣金返还');
INSERT INTO `record` VALUES (84, 21, '3', 0.97, '2018-11-27 11:14:08', '撤销订单，返回冻结金额');
INSERT INTO `record` VALUES (85, 22, '订单完成', 2.00, '2018-11-27 11:21:04', '该网站点击量的金额');
INSERT INTO `record` VALUES (86, 21, '1', 3.00, '2018-11-27 06:02:22', '订单预算金额');
INSERT INTO `record` VALUES (87, 24, '2', 1.00, '2018-11-27 14:08:31', '订单完成，佣金返还');
INSERT INTO `record` VALUES (88, 21, '3', 1.97, '2018-11-27 14:08:31', '撤销订单，返回冻结金额');
INSERT INTO `record` VALUES (89, 21, '1', 6.00, '2018-11-27 06:10:03', '订单预算金额');
INSERT INTO `record` VALUES (90, 24, '订单完成', 6.00, '2018-11-27 14:13:00', '该网站点击量的金额');
INSERT INTO `record` VALUES (91, 24, '提现', 5.88, '2018-11-27 14:17:14', '天一广告联盟提现');

-- ----------------------------
-- Table structure for repeal
-- ----------------------------
DROP TABLE IF EXISTS `repeal`;
CREATE TABLE `repeal`  (
  `reid` int(11) NOT NULL AUTO_INCREMENT,
  `recause` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `resum` double DEFAULT NULL,
  `reptime` datetime DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `state` int(255) DEFAULT NULL,
  PRIMARY KEY (`reid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of repeal
-- ----------------------------
INSERT INTO `repeal` VALUES (3, '订单撤销', -0.09, NULL, 10, 2);
INSERT INTO `repeal` VALUES (4, '订单撤销', -0.09, NULL, 13, 2);
INSERT INTO `repeal` VALUES (5, '订单撤销', -5050, NULL, 13, 2);
INSERT INTO `repeal` VALUES (6, '订单撤销', -0.06, NULL, 16, 2);
INSERT INTO `repeal` VALUES (7, '订单撤销', -0.3, NULL, 16, 2);
INSERT INTO `repeal` VALUES (8, '订单撤销', -0.06, NULL, 16, 2);
INSERT INTO `repeal` VALUES (9, '订单撤销', -0.12, NULL, 16, 2);
INSERT INTO `repeal` VALUES (10, '订单撤销', -0.09, NULL, 16, 2);
INSERT INTO `repeal` VALUES (11, '订单撤销', -0.09, NULL, 16, 2);
INSERT INTO `repeal` VALUES (12, '订单撤销', 3, NULL, 16, 2);
INSERT INTO `repeal` VALUES (13, '订单撤销', 1.97, NULL, 16, 2);
INSERT INTO `repeal` VALUES (14, '订单撤销', 1.97, NULL, 16, 2);
INSERT INTO `repeal` VALUES (15, '订单撤销', 0.97, NULL, 17, 2);
INSERT INTO `repeal` VALUES (16, '订单撤销', 0.94, NULL, 17, 2);
INSERT INTO `repeal` VALUES (17, '订单撤销', 1.97, NULL, 21, 2);
INSERT INTO `repeal` VALUES (18, '订单撤销', 0.97, NULL, 21, 2);
INSERT INTO `repeal` VALUES (19, '订单撤销', 0.97, NULL, 21, 2);
INSERT INTO `repeal` VALUES (20, '订单撤销', 1.97, NULL, 21, 2);

-- ----------------------------
-- Table structure for sites
-- ----------------------------
DROP TABLE IF EXISTS `sites`;
CREATE TABLE `sites`  (
  `sitesid` int(11) NOT NULL AUTO_INCREMENT,
  `dns` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `sitesurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `pv` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `grouping` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `pc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `ptime` datetime DEFAULT NULL,
  `uptime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `state` int(11) DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`sitesid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 46 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sites
-- ----------------------------
INSERT INTO `sites` VALUES (11, 'www.baodu.com', 'baidu', '1千-1万', 'sss', '2520', 1, '2018-10-20 10:30:05', '2018-11-20 17:49:39', 5, 'sd', 3);
INSERT INTO `sites` VALUES (12, 'https://www.baidu.com', 'http://192.168.43.86/fmtype', '1万-10万', '互联网', 'pc-98615', 5, '2018-11-13 16:28:55', '2018-11-24 10:55:30', 5, '河南郑州', 0);
INSERT INTO `sites` VALUES (14, NULL, NULL, NULL, NULL, NULL, NULL, '2018-11-13 16:39:40', '2018-11-13 16:39:40', 0, NULL, NULL);
INSERT INTO `sites` VALUES (15, NULL, NULL, NULL, NULL, NULL, NULL, '2018-11-13 16:40:18', '2018-11-13 16:40:18', 0, NULL, NULL);
INSERT INTO `sites` VALUES (16, NULL, NULL, NULL, NULL, NULL, NULL, '2018-11-13 16:41:27', '2018-11-13 16:41:27', 0, NULL, NULL);
INSERT INTO `sites` VALUES (17, NULL, NULL, NULL, NULL, NULL, NULL, '2018-11-13 16:41:45', '2018-11-13 16:41:45', 0, NULL, NULL);
INSERT INTO `sites` VALUES (18, NULL, NULL, NULL, NULL, NULL, NULL, '2018-11-13 16:41:47', '2018-11-13 16:41:47', 0, NULL, NULL);
INSERT INTO `sites` VALUES (19, NULL, NULL, NULL, NULL, NULL, NULL, '2018-11-13 16:41:47', '2018-11-13 16:41:47', 0, NULL, NULL);
INSERT INTO `sites` VALUES (20, NULL, NULL, NULL, NULL, NULL, NULL, '2018-11-13 16:41:47', '2018-11-13 16:41:47', 0, NULL, NULL);
INSERT INTO `sites` VALUES (21, NULL, NULL, NULL, NULL, NULL, NULL, '2018-11-13 16:41:47', '2018-11-13 16:41:47', 0, NULL, NULL);
INSERT INTO `sites` VALUES (23, NULL, NULL, NULL, NULL, NULL, NULL, '2018-11-13 16:42:16', '2018-11-13 16:42:16', 0, NULL, NULL);
INSERT INTO `sites` VALUES (24, NULL, NULL, NULL, NULL, NULL, NULL, '2018-11-13 16:43:36', '2018-11-13 16:43:36', 0, NULL, NULL);
INSERT INTO `sites` VALUES (26, NULL, NULL, NULL, NULL, NULL, NULL, '2018-11-13 18:11:55', '2018-11-13 18:11:55', 0, NULL, NULL);
INSERT INTO `sites` VALUES (29, NULL, NULL, NULL, NULL, NULL, NULL, '2018-11-13 18:19:12', '2018-11-13 18:19:12', 0, NULL, NULL);
INSERT INTO `sites` VALUES (30, 'home.jsp', 'click.jsp', '1千-1万', '个人', '00000000', 6, '2018-11-14 09:16:34', '2018-11-14 10:01:09', 5, '郑州', 0);
INSERT INTO `sites` VALUES (32, 'A', 'A', '1千以下', 'A', 'A', NULL, '2018-11-14 09:28:51', '2018-11-14 09:28:51', 0, 'A', 0);
INSERT INTO `sites` VALUES (33, NULL, NULL, NULL, NULL, NULL, NULL, '2018-11-14 09:38:51', '2018-11-14 09:38:51', 0, NULL, NULL);
INSERT INTO `sites` VALUES (34, '百度', 'ceshi.jsp', '1千-1万', '2015', '222', 10, '2018-11-20 12:03:08', '2018-11-20 12:29:31', 5, 'AAA软件教育', 2);
INSERT INTO `sites` VALUES (35, 's', 'ss', '1千以下', '2', '2', 10, '2018-11-20 12:05:54', '2018-11-21 17:20:07', 5, 'AAA软件教育', 0);
INSERT INTO `sites` VALUES (36, 'https://yjh13673688161.icoc.bz/', 'click.jsp', '1千以下', '电子', 'co15156', 14, '2018-11-24 10:28:51', '2018-11-24 10:31:10', 5, '东方明珠', 0);
INSERT INTO `sites` VALUES (42, '192.168.43.125:8080/springboot_309/click.jsp', '192.168.43.125:8080/springboot_309/click.jsp', '1千-1万', '隔热吧', '4684616516', 15, '2018-11-26 09:34:23', '2018-11-26 09:40:20', 5, 'aaa软件学院', 3);
INSERT INTO `sites` VALUES (43, 'http://192.168.43.125:8080/springboot_309/click.jsp', 'http://192.168.43.125:8080/springboot_309/click.jsp', '1千以下', '个人', 'fewfwe', 20, '2018-11-26 14:34:31', '2018-11-26 14:36:16', 5, 'aaa', 0);
INSERT INTO `sites` VALUES (44, 'http://192.168.43.125:8080/springboot_309/click.jsp', 'http://192.168.43.125:8080/springboot_309/click.jsp', '1千-1万', '个人', 'pc44946', 22, '2018-11-27 09:11:25', '2018-11-27 09:14:03', 5, 'aaa软件学院', 0);
INSERT INTO `sites` VALUES (45, 'http://192.168.43.125:8080/springboot_309/click.jsp', 'http://192.168.43.125:8080/springboot_309/click.jsp', '1千以下', '个人', 'c0015', 24, '2018-11-27 14:04:20', '2018-11-27 14:05:20', 5, 'AAA软件', 0);

-- ----------------------------
-- Table structure for sitescheck
-- ----------------------------
DROP TABLE IF EXISTS `sitescheck`;
CREATE TABLE `sitescheck`  (
  `s-id` int(11) NOT NULL AUTO_INCREMENT,
  `sid` int(11) DEFAULT NULL,
  `aid` int(11) DEFAULT NULL,
  `checktime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `state` int(255) DEFAULT NULL,
  `test` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`s-id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sitescheck
-- ----------------------------
INSERT INTO `sitescheck` VALUES (1, 1, 1, '2018-10-18 19:42:53', 2, '无效的域名');
INSERT INTO `sitescheck` VALUES (2, 12, 1, '2018-11-03 11:13:52', 2, 'f');
INSERT INTO `sitescheck` VALUES (3, 11, 1, '2018-11-03 11:16:57', 2, '11');
INSERT INTO `sitescheck` VALUES (4, 12, 1, '2018-11-03 11:20:35', 2, 'f');
INSERT INTO `sitescheck` VALUES (5, 11, 1, '2018-11-03 11:23:40', 2, 'diz');
INSERT INTO `sitescheck` VALUES (6, 12, 1, '2018-11-13 18:33:17', 5, '');
INSERT INTO `sitescheck` VALUES (7, 30, 1, '2018-11-14 09:18:22', 5, '');
INSERT INTO `sitescheck` VALUES (8, 34, 1, '2018-11-20 12:16:37', 5, '');
INSERT INTO `sitescheck` VALUES (9, 35, 1, '2018-11-21 17:20:07', 5, '');
INSERT INTO `sitescheck` VALUES (10, 36, 1, '2018-11-24 10:31:10', 5, '');
INSERT INTO `sitescheck` VALUES (11, 42, 1, '2018-11-26 09:40:20', 5, '');
INSERT INTO `sitescheck` VALUES (12, 43, 1, '2018-11-26 14:36:16', 5, '');
INSERT INTO `sitescheck` VALUES (13, 44, 1, '2018-11-27 09:14:03', 5, '');
INSERT INTO `sitescheck` VALUES (14, 45, 1, '2018-11-27 14:05:20', 5, '');

-- ----------------------------
-- Table structure for space
-- ----------------------------
DROP TABLE IF EXISTS `space`;
CREATE TABLE `space`  (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `sitesid` int(11) DEFAULT NULL,
  `wide` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `high` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `uname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ptime` datetime DEFAULT NULL,
  `grouping` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `sname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `surl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `hits` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `states` int(11) DEFAULT NULL,
  PRIMARY KEY (`sid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of space
-- ----------------------------
INSERT INTO `space` VALUES (1, 8, '50', '80', NULL, NULL, '2018-10-18 10:03:07', '测试', '独秀', 'D:\\img\\670fa59b-7cb8-4e1a-a3ed-656bc47b8bb5.jpg', ' 独秀', '1', NULL);
INSERT INTO `space` VALUES (3, 8, '5', '5', NULL, NULL, '2018-10-19 18:46:01', '测试', '收拾', 'img/zxd/e735ca25571447b9bd0dc4fd0ea0bdcf.jpg', '撒旦', '1千-1万', NULL);

-- ----------------------------
-- Table structure for spaceorder
-- ----------------------------
DROP TABLE IF EXISTS `spaceorder`;
CREATE TABLE `spaceorder`  (
  `oid` int(11) NOT NULL AUTO_INCREMENT,
  `sid` int(11) DEFAULT NULL,
  `ptime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `state` int(11) DEFAULT NULL,
  `aid` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `hits` int(11) DEFAULT NULL,
  `price` decimal(10, 2) DEFAULT NULL,
  `art` decimal(10, 2) DEFAULT NULL,
  PRIMARY KEY (`oid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 51 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of spaceorder
-- ----------------------------
INSERT INTO `spaceorder` VALUES (5, 11, '2018-11-03 11:51:32', 1, 3, 1, 0, 0.01, 0.00);
INSERT INTO `spaceorder` VALUES (6, 12, '2018-11-15 19:33:08', 1, 1, 1, 5, 0.01, 0.00);
INSERT INTO `spaceorder` VALUES (7, 12, '2018-11-14 09:19:06', 1, 3, 1, 0, 0.01, 0.00);
INSERT INTO `spaceorder` VALUES (8, 12, '2018-11-14 09:49:05', 1, 3, 1, 0, 0.01, 0.00);
INSERT INTO `spaceorder` VALUES (9, 12, '2018-11-15 19:33:08', 0, 1, 6, 5, 0.01, 0.00);
INSERT INTO `spaceorder` VALUES (10, 12, '2018-11-20 12:21:08', 0, 2, 10, 0, 0.01, 0.00);
INSERT INTO `spaceorder` VALUES (11, 12, '2018-11-20 12:29:43', 0, 3, 10, 0, 0.01, 0.00);
INSERT INTO `spaceorder` VALUES (12, 12, '2018-11-20 12:29:52', 0, 1, 10, 0, 0.01, 0.00);
INSERT INTO `spaceorder` VALUES (13, 12, '2018-11-20 12:29:59', 0, 4, 10, 0, 1.00, 0.00);
INSERT INTO `spaceorder` VALUES (14, 12, '2018-11-20 12:30:09', 0, 7, 10, 0, 1.00, 0.00);
INSERT INTO `spaceorder` VALUES (15, 12, '2018-11-20 12:30:13', 0, 8, 10, 0, 1.00, 0.00);
INSERT INTO `spaceorder` VALUES (16, 12, '2018-11-23 19:13:29', 0, 5, 10, 5, 1.00, 0.00);
INSERT INTO `spaceorder` VALUES (17, 12, '2018-11-20 12:30:36', 0, 2, 10, 0, 0.01, 0.00);
INSERT INTO `spaceorder` VALUES (18, 12, '2018-11-20 12:32:17', 0, 3, 10, 0, 0.01, 0.00);
INSERT INTO `spaceorder` VALUES (19, 12, '2018-11-20 12:32:21', 0, 1, 10, 0, 0.01, 0.00);
INSERT INTO `spaceorder` VALUES (20, 12, '2018-11-20 12:32:28', 0, 4, 10, 0, 1.00, 0.00);
INSERT INTO `spaceorder` VALUES (21, 12, '2018-11-20 12:33:09', 0, 1, 10, 0, 0.01, 0.00);
INSERT INTO `spaceorder` VALUES (22, 12, '2018-11-20 12:33:50', 0, 1, 10, 0, 0.01, 0.00);
INSERT INTO `spaceorder` VALUES (23, 12, '2018-11-20 12:34:14', 0, 2, 10, 0, 0.01, 0.00);
INSERT INTO `spaceorder` VALUES (24, 12, '2018-11-20 12:34:24', 0, 1, 10, 0, 0.01, 0.00);
INSERT INTO `spaceorder` VALUES (25, 12, '2018-11-23 18:27:43', 0, 6, 5, 5, 1.00, 0.00);
INSERT INTO `spaceorder` VALUES (26, 12, '2018-11-24 10:32:10', 0, 10, 14, 0, 50.00, 0.00);
INSERT INTO `spaceorder` VALUES (27, 12, '2018-11-24 11:00:35', 0, 11, 14, 1, 1.00, 0.00);
INSERT INTO `spaceorder` VALUES (28, 12, '2018-11-26 11:14:53', 1, 12, 15, 3, 1.00, 0.00);
INSERT INTO `spaceorder` VALUES (29, 12, '2018-11-26 11:29:02', 1, 13, 15, 2, 1.00, 0.00);
INSERT INTO `spaceorder` VALUES (30, 12, '2018-11-26 11:35:51', 0, 14, 15, 1, 1.00, 0.00);
INSERT INTO `spaceorder` VALUES (31, 12, '2018-11-26 12:49:50', NULL, NULL, 16, 2, 1.00, 0.00);
INSERT INTO `spaceorder` VALUES (32, 12, '2018-11-26 13:03:17', 0, 15, 15, 1, 1.00, 0.00);
INSERT INTO `spaceorder` VALUES (33, 12, '2018-11-26 13:30:17', 0, 2, 15, 1, 0.01, 0.00);
INSERT INTO `spaceorder` VALUES (34, 12, '2018-11-26 13:34:15', 0, 16, 15, 1, 1.00, 0.00);
INSERT INTO `spaceorder` VALUES (35, 12, '2018-11-26 13:43:21', 0, 17, 15, 1, 1.00, 0.00);
INSERT INTO `spaceorder` VALUES (36, 12, '2018-11-26 13:48:56', 0, 18, 15, 1, 1.00, 0.00);
INSERT INTO `spaceorder` VALUES (37, 12, '2018-11-26 13:57:02', 0, 19, 15, 1, 1.00, 0.00);
INSERT INTO `spaceorder` VALUES (38, 12, '2018-11-26 14:04:21', 0, 20, 15, 1, 1.00, 0.00);
INSERT INTO `spaceorder` VALUES (39, 12, '2018-11-26 14:11:10', 0, 21, 15, 1, 1.00, 0.00);
INSERT INTO `spaceorder` VALUES (40, 12, '2018-11-26 14:39:44', 1, 22, 20, 2, 1.00, 0.00);
INSERT INTO `spaceorder` VALUES (41, 12, '2018-11-26 14:51:01', 1, 23, 20, 2, 1.00, 0.00);
INSERT INTO `spaceorder` VALUES (42, 12, '2018-11-26 14:57:02', 0, 24, 20, 1, 1.00, 0.00);
INSERT INTO `spaceorder` VALUES (43, 12, '2018-11-26 15:11:05', 1, 25, 20, 2, 1.00, 0.00);
INSERT INTO `spaceorder` VALUES (44, 12, '2018-11-27 09:16:11', 1, 26, 22, 1, 1.00, 0.00);
INSERT INTO `spaceorder` VALUES (45, 12, '2018-11-27 09:25:00', 1, 27, 22, 2, 1.00, 0.00);
INSERT INTO `spaceorder` VALUES (46, 12, '2018-11-27 10:55:18', 1, 28, 22, 1, 1.00, 0.00);
INSERT INTO `spaceorder` VALUES (47, 12, '2018-11-27 11:14:07', 1, 29, 22, 1, 1.00, 0.00);
INSERT INTO `spaceorder` VALUES (48, 12, '2018-11-27 11:21:04', 1, 30, 22, 2, 1.00, 0.00);
INSERT INTO `spaceorder` VALUES (49, 12, '2018-11-27 14:08:31', 1, 31, 24, 1, 1.00, 0.00);
INSERT INTO `spaceorder` VALUES (50, 12, '2018-11-27 14:13:00', 1, 32, 24, 2, 3.00, 0.00);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `rpwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `state` int(255) DEFAULT NULL,
  `ctime` datetime DEFAULT NULL,
  `uptime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `proof` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `userimg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'admin', '17364808037', 'admin', 0, '2018-10-30 08:14:32', '2018-11-24 09:52:50', '410823199802160272', 'img/zxd/1.gif');
INSERT INTO `users` VALUES (4, '张三', '17634808036', '123456', 0, '2018-11-03 01:50:36', '2018-11-03 01:50:36', NULL, NULL);
INSERT INTO `users` VALUES (5, '林林', '13673688161', '666666', 0, '2018-11-13 04:22:13', '2018-11-13 04:22:13', NULL, NULL);
INSERT INTO `users` VALUES (6, 'wmh', '13673688161', '758521', 0, '2018-11-14 01:14:20', '2018-11-14 01:14:20', NULL, NULL);
INSERT INTO `users` VALUES (7, '', '', '', 0, '2018-11-15 03:54:23', '2018-11-15 03:54:23', NULL, NULL);
INSERT INTO `users` VALUES (8, '测试', '13673688161', '111', 0, '2018-11-15 04:06:52', '2018-11-15 04:06:52', NULL, NULL);
INSERT INTO `users` VALUES (9, '测试', '13673688161', '111', 0, '2018-11-15 04:09:29', '2018-11-15 04:09:29', NULL, NULL);
INSERT INTO `users` VALUES (10, 'ccc', '13673688161', '6666', 0, '2018-11-20 03:10:59', '2018-11-20 03:10:59', NULL, NULL);
INSERT INTO `users` VALUES (11, '1124', '13673688161', '1124', 0, '2018-11-24 00:20:37', '2018-11-24 00:20:37', NULL, NULL);
INSERT INTO `users` VALUES (12, '网站主', '13673688161', '6666', 0, '2018-11-24 01:40:10', '2018-11-24 01:40:10', NULL, NULL);
INSERT INTO `users` VALUES (13, 'test', '13673688161', 'admin', 0, '2018-11-24 02:13:00', '2018-11-24 02:13:00', NULL, NULL);
INSERT INTO `users` VALUES (14, '网站', '13673688161', '6666', 0, '2018-11-24 02:27:13', '2018-11-24 02:27:13', NULL, NULL);
INSERT INTO `users` VALUES (15, 'xuedianzhou', '18624953552', '999999', 0, '2018-11-26 01:07:23', '2018-11-26 01:07:23', NULL, NULL);
INSERT INTO `users` VALUES (16, 'delikong', '13346645244', '999999', 0, '2018-11-26 01:36:40', '2018-11-26 01:36:40', NULL, NULL);
INSERT INTO `users` VALUES (17, 'xueyuanqi', '13673688161', '999999', 0, '2018-11-26 06:26:09', '2018-11-26 15:30:05', NULL, NULL);
INSERT INTO `users` VALUES (18, 'qianninashi', '13673688161', '999999', 0, '2018-11-26 06:32:31', '2018-11-26 06:32:31', NULL, NULL);
INSERT INTO `users` VALUES (19, 'qianninashi', '13673688161', '999999', 0, '2018-11-26 06:32:46', '2018-11-26 06:32:46', NULL, NULL);
INSERT INTO `users` VALUES (20, 'qiannianshi', '13673688161', '999999', 0, '2018-11-26 06:33:27', '2018-11-26 06:33:27', NULL, NULL);
INSERT INTO `users` VALUES (21, '广告1', '17634808036', '999999', 0, '2018-11-27 00:58:52', '2018-11-27 14:16:05', NULL, NULL);
INSERT INTO `users` VALUES (22, '网站1', '13673688161', '999999', 0, '2018-11-27 01:09:51', '2018-11-27 01:09:51', NULL, NULL);
INSERT INTO `users` VALUES (23, '广告2', '17634808036', '999999', 0, '2018-11-27 05:56:12', '2018-11-27 05:56:12', NULL, NULL);
INSERT INTO `users` VALUES (24, '网站2', '18503843349', '999999', 0, '2018-11-27 06:03:19', '2018-11-27 06:03:19', NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
