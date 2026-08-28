/*
Navicat MySQL Data Transfer

Source Server         : 192.168.101.68
Source Server Version : 80026
Source Host           : 192.168.101.68:3306
Source Database       : jzo2o-market

Target Server Type    : MYSQL
Target Server Version : 80026
File Encoding         : 65001

Date: 2024-08-24 21:15:54
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for activity
-- ----------------------------
DROP TABLE IF EXISTS `activity`;
CREATE TABLE `activity` (
  `id` bigint NOT NULL COMMENT '活动id',
  `name` varchar(100) NOT NULL DEFAULT '0' COMMENT '活动名称',
  `type` int NOT NULL COMMENT '优惠券类型，1：满减，2：折扣',
  `amount_condition` decimal(10,2) NOT NULL COMMENT '使用条件，0：表示无门槛，其他值：最低消费金额',
  `discount_rate` int NOT NULL DEFAULT '0' COMMENT '折扣率，折扣类型的折扣率，8折就是存80',
  `discount_amount` decimal(10,2) DEFAULT NULL COMMENT '优惠金额，满减或无门槛的优惠金额',
  `validity_days` int NOT NULL DEFAULT '0' COMMENT '优惠券有效期天数，0：表示有效期是指定有效期的',
  `distribute_start_time` datetime NOT NULL COMMENT '发放开始时间',
  `distribute_end_time` datetime NOT NULL COMMENT '发放结束时间',
  `status` int NOT NULL COMMENT '活动状态，1：待生效，2：进行中，3：已失效 4：作废',
  `total_num` int NOT NULL DEFAULT '0' COMMENT '发放数量，0：表示无限量，其他正数表示最大发放量',
  `stock_num` int NOT NULL DEFAULT '0' COMMENT '库存',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_by` bigint DEFAULT NULL COMMENT '创建人',
  `update_by` bigint DEFAULT NULL COMMENT '更新人',
  `is_deleted` tinyint NOT NULL DEFAULT '0' COMMENT '逻辑删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of activity
-- ----------------------------
INSERT INTO `activity` VALUES ('1706183021040336896', '测试活动测试1', '2', '1.00', '10', '20.00', '1', '2023-09-30 00:00:01', '2023-10-29 00:00:02', '3', '11', '11', '2023-09-25 13:45:06', '2023-11-05 15:45:10', '1674350264389750786', null, '0');
INSERT INTO `activity` VALUES ('1706183503305605120', '测试活动02', '2', '1.00', '10', null, '1', '2023-09-30 00:00:01', '2023-10-29 00:00:02', '3', '11', '11', '2023-09-25 13:47:01', '2023-11-05 15:45:10', '1674350264389750786', null, '0');
INSERT INTO `activity` VALUES ('1706190059321524224', '测试活动02', '2', '1.00', '10', '100.00', '1', '2023-09-30 00:00:01', '2023-10-29 00:00:02', '3', '11', '11', '2023-09-25 14:13:04', '2023-11-05 15:45:10', '1674350264389750786', null, '0');
INSERT INTO `activity` VALUES ('1706191283810828288', '测试活动02', '2', '1.00', '10', null, '1', '2023-09-30 00:00:01', '2023-10-29 00:00:02', '3', '11', '11', '2023-09-25 14:17:56', '2023-11-05 15:45:10', '1674350264389750786', null, '0');
INSERT INTO `activity` VALUES ('1706191734941777920', '测试活动02', '2', '1.00', '10', '20.00', '1', '2023-09-30 00:00:01', '2023-10-29 00:00:02', '3', '11', '11', '2023-09-25 14:19:43', '2023-11-05 15:45:10', '1674350264389750786', null, '0');
INSERT INTO `activity` VALUES ('1706192483608264704', '测试活动02', '2', '1.00', '10', '40.00', '1', '2023-09-30 00:00:01', '2023-10-29 00:00:02', '3', '11', '11', '2023-09-25 14:22:42', '2023-11-05 15:45:10', '1674350264389750786', null, '0');
INSERT INTO `activity` VALUES ('1706217591922974720', '测试活动02', '2', '1.00', '10', '100.00', '1', '2023-09-30 00:00:01', '2023-10-29 00:00:02', '3', '11', '11', '2023-09-25 16:02:28', '2023-11-05 15:45:10', '1674350264389750786', null, '0');
INSERT INTO `activity` VALUES ('1706220087122812928', '测试活动02', '2', '1.00', '10', '100.00', '1', '2023-09-30 00:00:01', '2023-10-29 00:00:02', '3', '11', '11', '2023-09-25 16:12:23', '2023-11-05 15:45:10', '1674350264389750786', null, '0');
INSERT INTO `activity` VALUES ('1706233323863891968', '测试活动02', '2', '1.00', '10', null, '1', '2023-09-30 00:00:01', '2023-10-29 00:00:02', '3', '11', '11', '2023-09-25 17:04:59', '2023-11-05 15:45:10', '1674350264389750786', null, '0');
INSERT INTO `activity` VALUES ('1706233782053855232', '测试活动02', '2', '1.00', '10', null, '1', '2023-09-30 00:00:01', '2023-10-29 00:00:02', '3', '11', '11', '2023-09-25 17:06:48', '2023-11-05 15:45:10', '1674350264389750786', null, '0');
INSERT INTO `activity` VALUES ('1706234166671532032', '测试活动02', '2', '1.00', '10', null, '1', '2023-09-30 00:00:01', '2023-10-29 00:00:02', '3', '11', '11', '2023-09-25 17:08:20', '2023-11-05 15:45:10', '1674350264389750786', null, '0');
INSERT INTO `activity` VALUES ('1706235631427346432', '测试活动02', '2', '1.00', '10', '100.00', '1', '2023-09-30 00:00:01', '2023-10-29 00:00:02', '3', '11', '11', '2023-09-25 17:14:09', '2023-11-05 15:45:10', '1674350264389750786', null, '0');
INSERT INTO `activity` VALUES ('1706501272482832384', '测试活动02', '2', '1.00', '10', null, '1', '2023-09-30 00:00:01', '2023-10-29 00:00:02', '3', '11', '11', '2023-09-26 10:49:43', '2023-11-05 15:45:10', '1674350264389750786', null, '0');
INSERT INTO `activity` VALUES ('1706502468744470528', '测试活动02', '2', '1.00', '10', null, '1', '2023-09-30 00:00:01', '2023-10-29 00:00:02', '3', '11', '11', '2023-09-26 10:54:28', '2023-11-05 15:45:10', '1674350264389750786', null, '0');
INSERT INTO `activity` VALUES ('1706511155529736192', '测试活动02', '2', '1.00', '10', '0.00', '1', '2023-09-30 00:00:01', '2023-10-29 00:00:02', '3', '11', '11', '2023-09-26 11:28:59', '2023-11-05 15:45:10', '1674350264389750786', null, '0');
INSERT INTO `activity` VALUES ('1706550497505665024', '测试活动02', '2', '1.00', '10', '20.00', '1', '2023-09-30 00:00:01', '2023-10-29 00:00:02', '3', '11', '11', '2023-09-26 14:05:19', '2023-11-05 15:45:10', '1674350264389750786', null, '0');
INSERT INTO `activity` VALUES ('1706661702914801664', '测试活动02', '2', '1.00', '10', '10.00', '1', '2023-09-30 00:00:01', '2023-10-29 00:00:02', '3', '11', '11', '2023-09-26 13:28:05', '2023-11-05 15:45:10', '1674350264389750786', null, '0');
INSERT INTO `activity` VALUES ('1706662031551102976', '测试活动02', '2', '1.00', '10', null, '1', '2023-09-30 00:00:01', '2023-10-29 00:00:02', '3', '11', '11', '2023-09-26 13:29:23', '2023-11-05 15:45:10', '1674350264389750786', null, '0');
INSERT INTO `activity` VALUES ('1720646861909417984', '2023双11', '1', '50.00', '0', '30.00', '30', '2023-11-10 00:00:00', '2023-11-26 00:00:00', '4', '100', '100', '2023-11-04 11:40:06', '2023-11-05 11:20:35', '1674350264389750786', null, '0');
INSERT INTO `activity` VALUES ('1720700051954622464', '2023双11', '2', '0.00', '85', null, '30', '2023-11-17 00:00:00', '2023-11-26 00:00:00', '1', '100', '100', '2023-11-04 15:11:29', '2023-11-05 11:20:35', '1674350264389750786', null, '0');
INSERT INTO `activity` VALUES ('1721415300848590848', '双12来啦', '2', '100.00', '80', null, '30', '2023-11-06 14:33:11', '2023-11-09 00:00:00', '3', '100', '0', '2023-11-06 14:33:36', '2023-11-09 09:15:12', '1674350264389750786', '1674350264389750786', '0');
INSERT INTO `activity` VALUES ('1721427028349067264', '平台一周年活动', '1', '200.00', '0', '100.00', '30', '2023-11-08 00:00:00', '2023-11-15 00:00:00', '2', '10000', '0', '2023-11-06 15:20:12', '2023-11-09 11:04:01', '1674350264389750786', '1674350264389750786', '0');
INSERT INTO `activity` VALUES ('1722544686083633152', '全场八折', '2', '0.00', '80', null, '30', '2023-11-09 17:21:00', '2023-11-16 00:00:00', '4', '100', '0', '2023-11-09 17:21:24', '2023-11-09 17:29:17', '1674350264389750786', '1674350264389750786', '0');
INSERT INTO `activity` VALUES ('1722546909484228608', '全场八折', '2', '0.00', '80', null, '30', '2023-11-09 17:30:00', '2023-11-17 00:00:00', '2', '100', '97', '2023-11-09 17:30:14', '2023-11-09 17:55:10', '1674350264389750786', '1674350264389750786', '0');
INSERT INTO `activity` VALUES ('1722555839446781952', '全场七折', '2', '0.00', '70', null, '30', '2023-11-09 18:05:34', '2023-11-17 00:00:00', '2', '100', '99', '2023-11-09 18:05:44', '2023-11-09 18:08:00', '1674350264389750786', '1674350264389750786', '0');

-- ----------------------------
-- Table structure for coupon
-- ----------------------------
DROP TABLE IF EXISTS `coupon`;
CREATE TABLE `coupon` (
  `id` bigint NOT NULL COMMENT '优惠券id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '优惠券名称',
  `user_id` bigint NOT NULL COMMENT '优惠券的拥有者',
  `user_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '用户姓名',
  `user_phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '用户手机号',
  `activity_id` bigint NOT NULL COMMENT '活动id',
  `type` int NOT NULL COMMENT '使用类型，1：满减，2：折扣',
  `discount_rate` int DEFAULT '0' COMMENT '折扣',
  `discount_amount` decimal(10,2) DEFAULT NULL COMMENT '优惠金额',
  `amount_condition` decimal(10,2) NOT NULL COMMENT '满减金额',
  `validity_time` datetime DEFAULT NULL COMMENT '有效期',
  `use_time` datetime DEFAULT NULL COMMENT '使用时间',
  `status` tinyint NOT NULL COMMENT '优惠券状态，1:未使用，2:已使用，3:已过期',
  `orders_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '订单id',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` tinyint NOT NULL DEFAULT '0' COMMENT '逻辑删除',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `user_my_query_index` (`user_id`,`status`) USING BTREE COMMENT '用户查询我的优惠券快捷索引'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of coupon
-- ----------------------------
INSERT INTO `coupon` VALUES ('1706572794252230656', '双12五折大促a', '1716346406098296832', '微信用户', '18703810075', '1706502468744470528', '2', '50', null, '1.00', '2023-09-27 15:33:55', null, '4', null, '2023-09-26 07:34:47', '2023-11-04 16:23:06', '0');
INSERT INTO `coupon` VALUES ('1706573370457325568', '个人测试活动，请勿撤销a', '1716346406098296832', '微信用户', '18703810075', '1706501272482832384', '2', '60', null, '100.00', '2023-10-06 15:36:13', null, '1', null, '2023-09-26 07:37:05', '2023-11-04 16:23:06', '0');
INSERT INTO `coupon` VALUES ('1706574712655577088', '尊享双十一活动', '1716346406098296832', '微信用户', '18703810075', '1706234166671532032', '2', '80', null, '1.00', '2023-10-16 15:41:33', '2023-09-26 15:45:40', '2', '2309260000000000064', '2023-09-26 07:42:25', '2023-11-04 16:23:06', '0');
INSERT INTO `coupon` VALUES ('1712807553873780736', '测试活动测试1', '1716346406098296832', '微信用户', '18810966207', '1706183021040336896', '2', '10', '20.00', '1.00', '2023-10-14 20:28:38', null, '3', null, '2023-10-13 12:29:33', '2023-11-04 16:28:15', '0');
INSERT INTO `coupon` VALUES ('1712808672419160064', '测试活动测试1', '1716346406098296832', '微信用户', '18860355196', '1706183021040336896', '2', '10', '20.00', '1.00', '2023-10-14 20:33:05', null, '1', null, '2023-10-13 12:34:00', '2023-11-04 16:23:06', '0');
INSERT INTO `coupon` VALUES ('1722449714793713664', '平台一周年活动', '1716346406098296832', '普通用户72135', null, '1721427028349067264', '1', '0', '100.00', '200.00', '2023-12-09 11:03:08', null, '1', null, '2023-11-09 11:04:01', '2023-11-09 11:04:01', '0');
INSERT INTO `coupon` VALUES ('1722553180186746880', '全场八折', '1716346406098296832', '普通用户72135', null, '1722546909484228608', '2', '80', null, '0.00', '2023-12-09 17:54:16', null, '1', null, '2023-11-09 17:55:10', '2023-11-09 21:44:33', '0');

-- ----------------------------
-- Table structure for coupon_use_back
-- ----------------------------
DROP TABLE IF EXISTS `coupon_use_back`;
CREATE TABLE `coupon_use_back` (
  `id` bigint NOT NULL COMMENT '回退记录id',
  `coupon_id` bigint NOT NULL COMMENT '优惠券id',
  `user_id` bigint NOT NULL COMMENT '用户id',
  `use_back_time` datetime NOT NULL COMMENT '回退时间',
  `write_off_time` datetime DEFAULT NULL COMMENT '核销时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='优惠券使用回退记录';

-- ----------------------------
-- Records of coupon_use_back
-- ----------------------------
INSERT INTO `coupon_use_back` VALUES ('1722610906560483328', '1722553180186746880', '1716346406098296832', '2023-11-09 21:43:39', '2023-11-09 21:41:04');

-- ----------------------------
-- Table structure for coupon_write_off
-- ----------------------------
DROP TABLE IF EXISTS `coupon_write_off`;
CREATE TABLE `coupon_write_off` (
  `id` bigint NOT NULL,
  `coupon_id` bigint NOT NULL COMMENT '优惠券id',
  `user_id` bigint NOT NULL COMMENT '用户id',
  `orders_id` bigint NOT NULL COMMENT '核销时使用的订单号',
  `activity_id` bigint NOT NULL COMMENT '活动id',
  `write_off_time` datetime NOT NULL COMMENT '核销时间',
  `write_off_man_phone` varchar(20) DEFAULT NULL COMMENT '核销人手机号',
  `write_off_man_name` varchar(50) DEFAULT NULL COMMENT '核销人姓名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='优惠券核销表';

-- ----------------------------
-- Records of coupon_write_off
-- ----------------------------
INSERT INTO `coupon_write_off` VALUES ('1706572983394369536', '1706572794252230656', '1701074772546342912', '2309260000000000062', '1706502468744470528', '2023-09-26 15:34:40', '18703810075', '微信用户');
INSERT INTO `coupon_write_off` VALUES ('1706575339234263040', '1706574712655577088', '1701074772546342912', '2309260000000000063', '1706234166671532032', '2023-09-26 15:44:02', '18703810075', '微信用户');
INSERT INTO `coupon_write_off` VALUES ('1706575747860135936', '1706574712655577088', '1701074772546342912', '2309260000000000064', '1706234166671532032', '2023-09-26 15:45:40', '18703810075', '微信用户');

-- ----------------------------
-- Table structure for undo_log
-- ----------------------------
DROP TABLE IF EXISTS `undo_log`;
CREATE TABLE `undo_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `branch_id` bigint NOT NULL,
  `xid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `context` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `rollback_info` longblob NOT NULL,
  `log_status` int NOT NULL,
  `log_created` datetime NOT NULL,
  `log_modified` datetime NOT NULL,
  `ext` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `ux_undo_log` (`xid`,`branch_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of undo_log
-- ----------------------------
