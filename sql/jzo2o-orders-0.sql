/*
Navicat MySQL Data Transfer

Source Server         : 192.168.101.68
Source Server Version : 80026
Source Host           : 192.168.101.68:3306
Source Database       : jzo2o-orders-0

Target Server Type    : MYSQL
Target Server Version : 80026
File Encoding         : 65001

Date: 2024-08-24 21:21:19
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for biz_snapshot
-- ----------------------------
DROP TABLE IF EXISTS `biz_snapshot`;
CREATE TABLE `biz_snapshot` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `state_machine_name` varchar(50) DEFAULT NULL COMMENT '状态机名称',
  `biz_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '业务id',
  `db_shard_id` bigint DEFAULT NULL COMMENT '分库键',
  `state` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '状态代码',
  `biz_data` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '业务数据',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1705863040399958017 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='业务数据快照';

-- ----------------------------
-- Records of biz_snapshot
-- ----------------------------
INSERT INTO `biz_snapshot` VALUES ('1705852652602122240', null, 'test101', '1', 'NO_PAY', '{}', '2023-09-24 07:53:15', '2023-09-24 07:53:15');
INSERT INTO `biz_snapshot` VALUES ('1705854135619817472', null, '101', '1', 'NO_PAY', '{}', '2023-09-24 07:59:08', '2023-09-24 07:59:08');
INSERT INTO `biz_snapshot` VALUES ('1705857303472787456', null, '101', '1', 'DISPATCHING', '{}', '2023-09-24 08:11:44', '2023-09-24 08:11:44');
INSERT INTO `biz_snapshot` VALUES ('1705863039749840896', null, '102', '1', 'NO_PAY', '{}', '2023-09-24 08:34:31', '2023-09-24 08:34:31');
INSERT INTO `biz_snapshot` VALUES ('1705863040399958016', null, '102', '1', 'DISPATCHING', '{}', '2023-09-24 08:34:31', '2023-09-24 08:34:31');

-- ----------------------------
-- Table structure for biz_snapshot_0
-- ----------------------------
DROP TABLE IF EXISTS `biz_snapshot_0`;
CREATE TABLE `biz_snapshot_0` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `state_machine_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '状态机名称',
  `biz_id` varchar(50) DEFAULT NULL COMMENT '业务id',
  `db_shard_id` bigint DEFAULT NULL COMMENT '分库键',
  `state` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '状态代码',
  `biz_data` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '业务数据',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1726522810064453633 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='业务数据快照';

-- ----------------------------
-- Records of biz_snapshot_0
-- ----------------------------
INSERT INTO `biz_snapshot_0` VALUES ('1704864171893530624', 'order', '2309250000000000044', '1701074772546342912', 'NO_SERVE', '{\"tradingChannel\":\"WECHAT_PAY\",\"ordersStatus\":200,\"payTime\":1695301157152,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0,\"lon\":\"116.34395\",\"serveAddress\":\"北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼\",\"contactsName\":\"吕女士\",\"serveItemId\":1685894105234755585,\"price\":0.1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"thirdOrderId\":\"1111\",\"realPayAmount\":0.1,\"serveStartTime\":1695335400000,\"id\":2309210000000000042,\"lat\":\"40.06115\",\"serveTypeId\":1678649931106705409,\"updateTime\":1695272409000,\"userId\":1701074772546342912,\"tradingOrderNo\":1704842735086817280,\"totalAmount\":0.1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1695272409000,\"payStatus\":4,\"purNum\":1,\"serveTypeName\":\"保洁清\"}', '2023-09-21 14:25:20', '2023-09-25 05:51:49');
INSERT INTO `biz_snapshot_0` VALUES ('1706149502127300608', 'order', '2309250000000000044', '1701074772546342912', 'DISPATCHING', '{\"tradingChannel\":\"WECHAT_PAY\",\"ordersStatus\":100,\"payTime\":1695612714602,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0,\"lon\":\"116.34395\",\"serveAddress\":\"北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼\",\"contactsName\":\"吕女士\",\"serveItemId\":1685894105234755585,\"price\":0.1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"thirdOrderId\":\"1706149501712064513\",\"realPayAmount\":0.1,\"serveStartTime\":1695623400000,\"id\":2309250000000000044,\"lat\":\"40.06115\",\"serveTypeId\":1678649931106705409,\"updateTime\":1695583963000,\"userId\":1701074772546342912,\"tradingOrderNo\":1706149501712064512,\"totalAmount\":0.1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1695583963000,\"payStatus\":4,\"purNum\":1,\"serveTypeName\":\"保洁清\"}', '2023-09-25 03:32:46', '2023-09-25 05:51:49');
INSERT INTO `biz_snapshot_0` VALUES ('1706184714487873536', 'order', '2309250000000000051', '1701074772546342912', 'NO_PAY', '{\"ordersStatus\":0,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0,\"lon\":\"116.34395\",\"serveAddress\":\"北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼\",\"contactsName\":\"吕女士\",\"serveItemId\":1685894105234755585,\"price\":0.1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"realPayAmount\":0.1,\"serveStartTime\":1695628800000,\"id\":2309250000000000051,\"lat\":\"40.06115\",\"serveTypeId\":1678649931106705409,\"updateTime\":1695592361000,\"userId\":1701074772546342912,\"totalAmount\":0.1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1695592361000,\"payStatus\":2,\"purNum\":1,\"serveTypeName\":\"保洁清\"}', '2023-09-25 05:52:41', '2023-09-25 05:52:41');
INSERT INTO `biz_snapshot_0` VALUES ('1706184715679055872', 'order', '2309250000000000051', '1701074772546342912', 'DISPATCHING', '{\"tradingChannel\":\"WECHAT_PAY\",\"ordersStatus\":100,\"payTime\":1695621110038,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0,\"lon\":\"116.34395\",\"serveAddress\":\"北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼\",\"contactsName\":\"吕女士\",\"serveItemId\":1685894105234755585,\"price\":0.1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"thirdOrderId\":\"1706184714659840000\",\"realPayAmount\":0.1,\"serveStartTime\":1695628800000,\"id\":2309250000000000051,\"lat\":\"40.06115\",\"serveTypeId\":1678649931106705409,\"updateTime\":1695592361000,\"userId\":1701074772546342912,\"tradingOrderNo\":1706184714655645696,\"totalAmount\":0.1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1695592361000,\"payStatus\":4,\"purNum\":1,\"serveTypeName\":\"保洁清\"}', '2023-09-25 05:52:41', '2023-09-25 05:52:41');
INSERT INTO `biz_snapshot_0` VALUES ('1706190087206748160', 'order', '2309250000000000056', '1701074772546342912', 'NO_PAY', '{\"ordersStatus\":0,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0,\"lon\":\"116.34395\",\"serveAddress\":\"北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼\",\"contactsName\":\"吕女士\",\"serveItemId\":1685894105234755585,\"price\":0.1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"realPayAmount\":0.1,\"serveStartTime\":1695630600000,\"id\":2309250000000000056,\"lat\":\"40.06115\",\"serveTypeId\":1678649931106705409,\"updateTime\":1695593642000,\"userId\":1701074772546342912,\"totalAmount\":0.1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1695593642000,\"payStatus\":2,\"purNum\":1,\"serveTypeName\":\"保洁清\"}', '2023-09-25 06:14:02', '2023-09-25 06:14:02');
INSERT INTO `biz_snapshot_0` VALUES ('1706190087353548800', 'order', '2309250000000000056', '1701074772546342912', 'DISPATCHING', '{\"tradingChannel\":\"WECHAT_PAY\",\"ordersStatus\":100,\"payTime\":1695622390943,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0,\"lon\":\"116.34395\",\"serveAddress\":\"北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼\",\"contactsName\":\"吕女士\",\"serveItemId\":1685894105234755585,\"price\":0.1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"thirdOrderId\":\"1706190087257079809\",\"realPayAmount\":0.1,\"serveStartTime\":1695630600000,\"id\":2309250000000000056,\"lat\":\"40.06115\",\"serveTypeId\":1678649931106705409,\"updateTime\":1695593642000,\"userId\":1701074772546342912,\"tradingOrderNo\":1706190087257079808,\"totalAmount\":0.1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1695593642000,\"payStatus\":4,\"purNum\":1,\"serveTypeName\":\"保洁清\"}', '2023-09-25 06:14:02', '2023-09-25 06:14:02');
INSERT INTO `biz_snapshot_0` VALUES ('1706190243956277248', 'order', '2309250000000000057', '1701074772546342912', 'NO_PAY', '{\"ordersStatus\":0,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0,\"lon\":\"116.34395\",\"serveAddress\":\"北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼\",\"contactsName\":\"吕女士\",\"serveItemId\":1685894105234755585,\"price\":0.1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"realPayAmount\":0.1,\"serveStartTime\":1695632400000,\"id\":2309250000000000057,\"lat\":\"40.06115\",\"serveTypeId\":1678649931106705409,\"updateTime\":1695593679000,\"userId\":1701074772546342912,\"totalAmount\":0.1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1695593679000,\"payStatus\":2,\"purNum\":1,\"serveTypeName\":\"保洁清\"}', '2023-09-25 06:14:39', '2023-09-25 06:14:39');
INSERT INTO `biz_snapshot_0` VALUES ('1706190244090494976', 'order', '2309250000000000057', '1701074772546342912', 'DISPATCHING', '{\"tradingChannel\":\"WECHAT_PAY\",\"ordersStatus\":100,\"payTime\":1695622428311,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0,\"lon\":\"116.34395\",\"serveAddress\":\"北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼\",\"contactsName\":\"吕女士\",\"serveItemId\":1685894105234755585,\"price\":0.1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"thirdOrderId\":\"1706190243985637377\",\"realPayAmount\":0.1,\"serveStartTime\":1695632400000,\"id\":2309250000000000057,\"lat\":\"40.06115\",\"serveTypeId\":1678649931106705409,\"updateTime\":1695593679000,\"userId\":1701074772546342912,\"tradingOrderNo\":1706190243985637376,\"totalAmount\":0.1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1695593679000,\"payStatus\":4,\"purNum\":1,\"serveTypeName\":\"保洁清\"}', '2023-09-25 06:14:39', '2023-09-25 06:14:39');
INSERT INTO `biz_snapshot_0` VALUES ('1706501673981177856', 'order', '2309230000000000043', '1701074772546342912', 'FINISHED', '{\"ordersStatus\":500,\"evaluationTime\":1695696676318,\"id\":2309230000000000043}', '2023-09-26 02:52:11', '2023-09-26 02:52:11');
INSERT INTO `biz_snapshot_0` VALUES ('1706543372723941376', 'order', '2309250000000000060', '1701074772546342912', 'CLOSED', '{\"tradingChannel\":\"WECHAT_PAY\",\"ordersStatus\":700,\"payTime\":1695623609106,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"refundStatus\":1,\"discountAmount\":0,\"lon\":\"116.34395\",\"serveAddress\":\"北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼\",\"contactsName\":\"吕女士\",\"serveItemId\":1685894105234755585,\"cancelerName\":\"微信用户\",\"price\":0.1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"thirdOrderId\":\"1706195196565291008\",\"cancellerId\":1701074772546342912,\"realPayAmount\":0.1,\"serveStartTime\":1695632400000,\"id\":2309250000000000060,\"cancelReason\":\"下单地址有误\",\"lat\":\"40.06115\",\"serveTypeId\":1678649931106705409,\"updateTime\":1695594858000,\"userId\":1701074772546342912,\"tradingOrderNo\":1706195196561096704,\"totalAmount\":0.1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1695594858000,\"cancelTime\":1695706620657,\"cancellerType\":1,\"payStatus\":4,\"purNum\":1,\"serveTypeName\":\"保洁清\"}', '2023-09-26 05:37:53', '2023-09-26 05:37:53');
INSERT INTO `biz_snapshot_0` VALUES ('1706543428457852928', 'order', '2309250000000000057', '1701074772546342912', 'CLOSED', '{\"tradingChannel\":\"WECHAT_PAY\",\"ordersStatus\":700,\"payTime\":1695622428311,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"refundStatus\":1,\"discountAmount\":0,\"lon\":\"116.34395\",\"serveAddress\":\"北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼\",\"contactsName\":\"吕女士\",\"serveItemId\":1685894105234755585,\"cancelerName\":\"微信用户\",\"price\":0.1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"thirdOrderId\":\"1706190243985637377\",\"cancellerId\":1701074772546342912,\"realPayAmount\":0.1,\"serveStartTime\":1695632400000,\"id\":2309250000000000057,\"cancelReason\":\"下单地址有误\",\"lat\":\"40.06115\",\"serveTypeId\":1678649931106705409,\"updateTime\":1695593679000,\"userId\":1701074772546342912,\"tradingOrderNo\":1706190243985637376,\"totalAmount\":0.1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1695593679000,\"cancelTime\":1695706634010,\"cancellerType\":1,\"payStatus\":4,\"purNum\":1,\"serveTypeName\":\"保洁清\"}', '2023-09-26 05:38:06', '2023-09-26 05:38:06');
INSERT INTO `biz_snapshot_0` VALUES ('1706554508752056320', 'order', '2309260000000000061', '1701074772546342912', 'NO_PAY', '{\"ordersStatus\":0,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0,\"lon\":\"116.34395\",\"serveAddress\":\"北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼\",\"contactsName\":\"吕女士\",\"serveItemId\":1685894105234755585,\"price\":1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"realPayAmount\":1,\"serveStartTime\":1695733200000,\"id\":2309260000000000061,\"lat\":\"40.06115\",\"serveTypeId\":1678649931106705409,\"updateTime\":1695680528000,\"userId\":1701074772546342912,\"totalAmount\":1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1695680528000,\"payStatus\":2,\"purNum\":1,\"serveTypeName\":\"保洁清\"}', '2023-09-26 06:22:08', '2023-09-26 06:22:08');
INSERT INTO `biz_snapshot_0` VALUES ('1706554509007908864', 'order', '2309260000000000061', '1701074772546342912', 'DISPATCHING', '{\"tradingChannel\":\"WECHAT_PAY\",\"ordersStatus\":100,\"payTime\":1695709275815,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0,\"lon\":\"116.34395\",\"serveAddress\":\"北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼\",\"contactsName\":\"吕女士\",\"serveItemId\":1685894105234755585,\"price\":1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"thirdOrderId\":\"1706554508819165185\",\"realPayAmount\":1,\"serveStartTime\":1695733200000,\"id\":2309260000000000061,\"lat\":\"40.06115\",\"serveTypeId\":1678649931106705409,\"updateTime\":1695680528000,\"userId\":1701074772546342912,\"tradingOrderNo\":1706554508819165184,\"totalAmount\":1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1695680528000,\"payStatus\":4,\"purNum\":1,\"serveTypeName\":\"保洁清\"}', '2023-09-26 06:22:08', '2023-09-26 06:22:08');
INSERT INTO `biz_snapshot_0` VALUES ('1706554614494564352', 'order', '2309260000000000061', '1701074772546342912', 'NO_SERVE', '{\"tradingChannel\":\"WECHAT_PAY\",\"ordersStatus\":200,\"payTime\":1695709275815,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0,\"lon\":\"116.34395\",\"serveAddress\":\"北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼\",\"contactsName\":\"吕女士\",\"serveItemId\":1685894105234755585,\"price\":1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"thirdOrderId\":\"1706554508819165185\",\"realPayAmount\":1,\"serveStartTime\":1695733200000,\"id\":2309260000000000061,\"lat\":\"40.06115\",\"serveTypeId\":1678649931106705409,\"updateTime\":1695680528000,\"userId\":1701074772546342912,\"tradingOrderNo\":1706554508819165184,\"totalAmount\":1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1695680528000,\"payStatus\":4,\"purNum\":1,\"serveTypeName\":\"保洁清\"}', '2023-09-26 06:22:33', '2023-09-26 06:22:33');
INSERT INTO `biz_snapshot_0` VALUES ('1706554669083521024', 'order', '2309260000000000061', '1701074772546342912', 'DISPATCHING', '{\"tradingChannel\":\"WECHAT_PAY\",\"ordersStatus\":100,\"payTime\":1695709275815,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0,\"lon\":\"116.34395\",\"serveAddress\":\"北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼\",\"contactsName\":\"吕女士\",\"serveItemId\":1685894105234755585,\"price\":1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"thirdOrderId\":\"1706554508819165185\",\"realPayAmount\":1,\"serveStartTime\":1695733200000,\"id\":2309260000000000061,\"lat\":\"40.06115\",\"serveTypeId\":1678649931106705409,\"updateTime\":1695680528000,\"userId\":1701074772546342912,\"tradingOrderNo\":1706554508819165184,\"totalAmount\":1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1695680528000,\"payStatus\":4,\"purNum\":1,\"serveTypeName\":\"保洁清\"}', '2023-09-26 06:22:46', '2023-09-26 06:22:46');
INSERT INTO `biz_snapshot_0` VALUES ('1706559131155992576', 'order', '2309260000000000061', '1701074772546342912', 'NO_SERVE', '{\"tradingChannel\":\"WECHAT_PAY\",\"ordersStatus\":200,\"payTime\":1695709275815,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0,\"lon\":\"116.34395\",\"serveAddress\":\"北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼\",\"contactsName\":\"吕女士\",\"serveItemId\":1685894105234755585,\"price\":1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"thirdOrderId\":\"1706554508819165185\",\"realPayAmount\":1,\"serveStartTime\":1695733200000,\"id\":2309260000000000061,\"lat\":\"40.06115\",\"serveTypeId\":1678649931106705409,\"updateTime\":1695680528000,\"userId\":1701074772546342912,\"tradingOrderNo\":1706554508819165184,\"totalAmount\":1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1695680528000,\"payStatus\":4,\"purNum\":1,\"serveTypeName\":\"保洁清\"}', '2023-09-26 06:40:30', '2023-09-26 06:40:30');
INSERT INTO `biz_snapshot_0` VALUES ('1706559218884145152', 'order', '2309260000000000061', '1701074772546342912', 'DISPATCHING', '{\"tradingChannel\":\"WECHAT_PAY\",\"ordersStatus\":100,\"payTime\":1695709275815,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0,\"lon\":\"116.34395\",\"serveAddress\":\"北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼\",\"contactsName\":\"吕女士\",\"serveItemId\":1685894105234755585,\"price\":1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"thirdOrderId\":\"1706554508819165185\",\"realPayAmount\":1,\"serveStartTime\":1695733200000,\"id\":2309260000000000061,\"lat\":\"40.06115\",\"serveTypeId\":1678649931106705409,\"updateTime\":1695680528000,\"userId\":1701074772546342912,\"tradingOrderNo\":1706554508819165184,\"totalAmount\":1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1695680528000,\"payStatus\":4,\"purNum\":1,\"serveTypeName\":\"保洁清\"}', '2023-09-26 06:40:51', '2023-09-26 06:40:51');
INSERT INTO `biz_snapshot_0` VALUES ('1706562989890506752', 'order', '2309260000000000061', '1701074772546342912', 'NO_SERVE', '{\"tradingChannel\":\"WECHAT_PAY\",\"ordersStatus\":200,\"payTime\":1695709275815,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0,\"lon\":\"116.34395\",\"serveAddress\":\"北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼\",\"contactsName\":\"吕女士\",\"serveItemId\":1685894105234755585,\"price\":1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"thirdOrderId\":\"1706554508819165185\",\"realPayAmount\":1,\"serveStartTime\":1695733200000,\"id\":2309260000000000061,\"lat\":\"40.06115\",\"serveTypeId\":1678649931106705409,\"updateTime\":1695680528000,\"userId\":1701074772546342912,\"tradingOrderNo\":1706554508819165184,\"totalAmount\":1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1695680528000,\"payStatus\":4,\"purNum\":1,\"serveTypeName\":\"保洁清\"}', '2023-09-26 06:55:50', '2023-09-26 06:55:50');
INSERT INTO `biz_snapshot_0` VALUES ('1706563040100528128', 'order', '2309260000000000061', '1701074772546342912', 'DISPATCHING', '{\"tradingChannel\":\"WECHAT_PAY\",\"ordersStatus\":100,\"payTime\":1695709275815,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0,\"lon\":\"116.34395\",\"serveAddress\":\"北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼\",\"contactsName\":\"吕女士\",\"serveItemId\":1685894105234755585,\"price\":1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"thirdOrderId\":\"1706554508819165185\",\"realPayAmount\":1,\"serveStartTime\":1695733200000,\"id\":2309260000000000061,\"lat\":\"40.06115\",\"serveTypeId\":1678649931106705409,\"updateTime\":1695680528000,\"userId\":1701074772546342912,\"tradingOrderNo\":1706554508819165184,\"totalAmount\":1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1695680528000,\"payStatus\":4,\"purNum\":1,\"serveTypeName\":\"保洁清\"}', '2023-09-26 06:56:02', '2023-09-26 06:56:02');
INSERT INTO `biz_snapshot_0` VALUES ('1706563828654837760', 'order', '2309260000000000061', '1701074772546342912', 'NO_SERVE', '{\"tradingChannel\":\"WECHAT_PAY\",\"ordersStatus\":200,\"payTime\":1695709275815,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0,\"lon\":\"116.34395\",\"serveAddress\":\"北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼\",\"contactsName\":\"吕女士\",\"serveItemId\":1685894105234755585,\"price\":1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"thirdOrderId\":\"1706554508819165185\",\"realPayAmount\":1,\"serveStartTime\":1695733200000,\"id\":2309260000000000061,\"lat\":\"40.06115\",\"serveTypeId\":1678649931106705409,\"updateTime\":1695680528000,\"userId\":1701074772546342912,\"tradingOrderNo\":1706554508819165184,\"totalAmount\":1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1695680528000,\"payStatus\":4,\"purNum\":1,\"serveTypeName\":\"保洁清\"}', '2023-09-26 06:59:10', '2023-09-26 06:59:10');
INSERT INTO `biz_snapshot_0` VALUES ('1706563867397632000', 'order', '2309260000000000061', '1701074772546342912', 'SERVING', '{\"tradingChannel\":\"WECHAT_PAY\",\"ordersStatus\":300,\"payTime\":1695709275815,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0,\"lon\":\"116.34395\",\"serveAddress\":\"北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼\",\"contactsName\":\"吕女士\",\"serveItemId\":1685894105234755585,\"price\":1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"thirdOrderId\":\"1706554508819165185\",\"realPayAmount\":1,\"serveStartTime\":1695733200000,\"id\":2309260000000000061,\"lat\":\"40.06115\",\"serveTypeId\":1678649931106705409,\"updateTime\":1695680528000,\"userId\":1701074772546342912,\"tradingOrderNo\":1706554508819165184,\"totalAmount\":1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1695680528000,\"payStatus\":4,\"purNum\":1,\"serveTypeName\":\"保洁清\"}', '2023-09-26 06:59:19', '2023-09-26 06:59:19');
INSERT INTO `biz_snapshot_0` VALUES ('1706563899278536704', 'order', '2309260000000000061', '1701074772546342912', 'NO_EVALUATION', '{\"tradingChannel\":\"WECHAT_PAY\",\"ordersStatus\":400,\"payTime\":1695709275815,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0,\"lon\":\"116.34395\",\"serveAddress\":\"北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼\",\"contactsName\":\"吕女士\",\"serveItemId\":1685894105234755585,\"price\":1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"thirdOrderId\":\"1706554508819165185\",\"realPayAmount\":1,\"serveStartTime\":1695733200000,\"id\":2309260000000000061,\"lat\":\"40.06115\",\"serveTypeId\":1678649931106705409,\"updateTime\":1695680528000,\"userId\":1701074772546342912,\"tradingOrderNo\":1706554508819165184,\"totalAmount\":1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1695680528000,\"payStatus\":4,\"purNum\":1,\"serveTypeName\":\"保洁清\"}', '2023-09-26 06:59:26', '2023-09-26 06:59:26');
INSERT INTO `biz_snapshot_0` VALUES ('1706572987173482496', 'order', '2309260000000000062', '1701074772546342912', 'NO_PAY', '{\"ordersStatus\":0,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0.5,\"lon\":\"116.34395\",\"serveAddress\":\"北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼\",\"contactsName\":\"吕女士\",\"serveItemId\":1685894105234755585,\"price\":1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"realPayAmount\":0.5,\"serveStartTime\":1695772800000,\"id\":2309260000000000062,\"lat\":\"40.06115\",\"serveTypeId\":1678649931106705409,\"updateTime\":1695684933000,\"userId\":1701074772546342912,\"totalAmount\":1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1695684933000,\"payStatus\":2,\"purNum\":1,\"serveTypeName\":\"保洁清\"}', '2023-09-26 07:35:33', '2023-09-26 07:35:33');
INSERT INTO `biz_snapshot_0` VALUES ('1706572987647438848', 'order', '2309260000000000062', '1701074772546342912', 'DISPATCHING', '{\"tradingChannel\":\"WECHAT_PAY\",\"ordersStatus\":100,\"payTime\":1695713681472,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0.5,\"lon\":\"116.34395\",\"serveAddress\":\"北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼\",\"contactsName\":\"吕女士\",\"serveItemId\":1685894105234755585,\"price\":1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"thirdOrderId\":\"1706572987479666689\",\"realPayAmount\":0.5,\"serveStartTime\":1695772800000,\"id\":2309260000000000062,\"lat\":\"40.06115\",\"serveTypeId\":1678649931106705409,\"updateTime\":1695684933000,\"userId\":1701074772546342912,\"tradingOrderNo\":1706572987479666688,\"totalAmount\":1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1695684933000,\"payStatus\":4,\"purNum\":1,\"serveTypeName\":\"保洁清\"}', '2023-09-26 07:35:33', '2023-09-26 07:35:33');
INSERT INTO `biz_snapshot_0` VALUES ('1706573095562686464', 'order', '2309260000000000062', '1701074772546342912', 'CLOSED', '{\"tradingChannel\":\"WECHAT_PAY\",\"ordersStatus\":700,\"payTime\":1695713681472,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"refundStatus\":1,\"discountAmount\":0.5,\"lon\":\"116.34395\",\"serveAddress\":\"北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼\",\"contactsName\":\"吕女士\",\"serveItemId\":1685894105234755585,\"cancelerName\":\"微信用户\",\"price\":1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"thirdOrderId\":\"1706572987479666689\",\"cancellerId\":1701074772546342912,\"realPayAmount\":0.5,\"serveStartTime\":1695772800000,\"id\":2309260000000000062,\"cancelReason\":\"问题已解决，不需要了\",\"lat\":\"40.06115\",\"serveTypeId\":1678649931106705409,\"updateTime\":1695684933000,\"userId\":1701074772546342912,\"tradingOrderNo\":1706572987479666688,\"totalAmount\":1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1695684933000,\"cancelTime\":1695713707054,\"cancellerType\":1,\"payStatus\":4,\"purNum\":1,\"serveTypeName\":\"保洁清\"}', '2023-09-26 07:35:59', '2023-09-26 07:35:59');
INSERT INTO `biz_snapshot_0` VALUES ('1706575339662127104', 'order', '2309260000000000063', '1701074772546342912', 'NO_PAY', '{\"ordersStatus\":0,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0.2,\"lon\":\"116.34395\",\"serveAddress\":\"北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼\",\"contactsName\":\"吕女士\",\"serveItemId\":1685894105234755585,\"price\":1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"realPayAmount\":0.8,\"serveStartTime\":1695776400000,\"id\":2309260000000000063,\"lat\":\"40.06115\",\"serveTypeId\":1678649931106705409,\"updateTime\":1695685494000,\"userId\":1701074772546342912,\"totalAmount\":1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1695685494000,\"payStatus\":2,\"purNum\":1,\"serveTypeName\":\"保洁清\"}', '2023-09-26 07:44:54', '2023-09-26 07:44:54');
INSERT INTO `biz_snapshot_0` VALUES ('1706575339926368256', 'order', '2309260000000000063', '1701074772546342912', 'DISPATCHING', '{\"tradingChannel\":\"WECHAT_PAY\",\"ordersStatus\":100,\"payTime\":1695714242301,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0.2,\"lon\":\"116.34395\",\"serveAddress\":\"北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼\",\"contactsName\":\"吕女士\",\"serveItemId\":1685894105234755585,\"price\":1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"thirdOrderId\":\"1706575339779567617\",\"realPayAmount\":0.8,\"serveStartTime\":1695776400000,\"id\":2309260000000000063,\"lat\":\"40.06115\",\"serveTypeId\":1678649931106705409,\"updateTime\":1695685494000,\"userId\":1701074772546342912,\"tradingOrderNo\":1706575339779567616,\"totalAmount\":1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1695685494000,\"payStatus\":4,\"purNum\":1,\"serveTypeName\":\"保洁清\"}', '2023-09-26 07:44:54', '2023-09-26 07:44:54');
INSERT INTO `biz_snapshot_0` VALUES ('1706575666385825792', 'order', '2309260000000000063', '1701074772546342912', 'CLOSED', '{\"tradingChannel\":\"WECHAT_PAY\",\"ordersStatus\":700,\"payTime\":1695714242301,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"refundStatus\":1,\"discountAmount\":0.2,\"lon\":\"116.34395\",\"serveAddress\":\"北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼\",\"contactsName\":\"吕女士\",\"serveItemId\":1685894105234755585,\"cancelerName\":\"微信用户\",\"price\":1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"thirdOrderId\":\"1706575339779567617\",\"cancellerId\":1701074772546342912,\"realPayAmount\":0.8,\"serveStartTime\":1695776400000,\"id\":2309260000000000063,\"cancelReason\":\"下单地址有误\",\"lat\":\"40.06115\",\"serveTypeId\":1678649931106705409,\"updateTime\":1695685494000,\"userId\":1701074772546342912,\"tradingOrderNo\":1706575339779567616,\"totalAmount\":1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1695685494000,\"cancelTime\":1695714320058,\"cancellerType\":1,\"payStatus\":4,\"purNum\":1,\"serveTypeName\":\"保洁清\"}', '2023-09-26 07:46:12', '2023-09-26 07:46:12');
INSERT INTO `biz_snapshot_0` VALUES ('1706575748149587968', 'order', '2309260000000000064', '1701074772546342912', 'NO_PAY', '{\"ordersStatus\":0,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0.2,\"lon\":\"116.34395\",\"serveAddress\":\"北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼\",\"contactsName\":\"吕女士\",\"serveItemId\":1685894105234755585,\"price\":1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"realPayAmount\":0.8,\"serveStartTime\":1695783600000,\"id\":2309260000000000064,\"lat\":\"40.06115\",\"serveTypeId\":1678649931106705409,\"updateTime\":1695685591000,\"userId\":1701074772546342912,\"totalAmount\":1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1695685591000,\"payStatus\":2,\"purNum\":1,\"serveTypeName\":\"保洁清\"}', '2023-09-26 07:46:31', '2023-09-26 07:46:31');
INSERT INTO `biz_snapshot_0` VALUES ('1706575748443189248', 'order', '2309260000000000064', '1701074772546342912', 'DISPATCHING', '{\"tradingChannel\":\"WECHAT_PAY\",\"ordersStatus\":100,\"payTime\":1695714339694,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0.2,\"lon\":\"116.34395\",\"serveAddress\":\"北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼\",\"contactsName\":\"吕女士\",\"serveItemId\":1685894105234755585,\"price\":1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"thirdOrderId\":\"1706575748275417089\",\"realPayAmount\":0.8,\"serveStartTime\":1695783600000,\"id\":2309260000000000064,\"lat\":\"40.06115\",\"serveTypeId\":1678649931106705409,\"updateTime\":1695685591000,\"userId\":1701074772546342912,\"tradingOrderNo\":1706575748275417088,\"totalAmount\":1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1695685591000,\"payStatus\":4,\"purNum\":1,\"serveTypeName\":\"保洁清\"}', '2023-09-26 07:46:31', '2023-09-26 07:46:31');
INSERT INTO `biz_snapshot_0` VALUES ('1706575824762736640', 'order', '2309260000000000064', '1701074772546342912', 'NO_SERVE', '{\"tradingChannel\":\"WECHAT_PAY\",\"ordersStatus\":200,\"payTime\":1695714339694,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0.2,\"lon\":\"116.34395\",\"serveAddress\":\"北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼\",\"contactsName\":\"吕女士\",\"serveItemId\":1685894105234755585,\"price\":1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"thirdOrderId\":\"1706575748275417089\",\"realPayAmount\":0.8,\"serveStartTime\":1695783600000,\"id\":2309260000000000064,\"lat\":\"40.06115\",\"serveTypeId\":1678649931106705409,\"updateTime\":1695685591000,\"userId\":1701074772546342912,\"tradingOrderNo\":1706575748275417088,\"totalAmount\":1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1695685591000,\"payStatus\":4,\"purNum\":1,\"serveTypeName\":\"保洁清\"}', '2023-09-26 07:46:50', '2023-09-26 07:46:50');
INSERT INTO `biz_snapshot_0` VALUES ('1706576472476528640', 'order', '2309260000000000064', '1701074772546342912', 'SERVING', '{\"tradingChannel\":\"WECHAT_PAY\",\"ordersStatus\":300,\"payTime\":1695714339694,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0.2,\"lon\":\"116.34395\",\"serveAddress\":\"北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼\",\"contactsName\":\"吕女士\",\"serveItemId\":1685894105234755585,\"price\":1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"thirdOrderId\":\"1706575748275417089\",\"realPayAmount\":0.8,\"serveStartTime\":1695783600000,\"id\":2309260000000000064,\"lat\":\"40.06115\",\"serveTypeId\":1678649931106705409,\"updateTime\":1695685591000,\"userId\":1701074772546342912,\"tradingOrderNo\":1706575748275417088,\"totalAmount\":1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1695685591000,\"payStatus\":4,\"purNum\":1,\"serveTypeName\":\"保洁清\"}', '2023-09-26 07:49:24', '2023-09-26 07:49:24');
INSERT INTO `biz_snapshot_0` VALUES ('1706576508652400640', 'order', '2309260000000000064', '1701074772546342912', 'NO_EVALUATION', '{\"tradingChannel\":\"WECHAT_PAY\",\"ordersStatus\":400,\"payTime\":1695714339694,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0.2,\"lon\":\"116.34395\",\"serveAddress\":\"北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼\",\"contactsName\":\"吕女士\",\"serveItemId\":1685894105234755585,\"price\":1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"thirdOrderId\":\"1706575748275417089\",\"realPayAmount\":0.8,\"serveStartTime\":1695783600000,\"id\":2309260000000000064,\"lat\":\"40.06115\",\"serveTypeId\":1678649931106705409,\"updateTime\":1695685591000,\"userId\":1701074772546342912,\"tradingOrderNo\":1706575748275417088,\"totalAmount\":1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1695685591000,\"payStatus\":4,\"purNum\":1,\"serveTypeName\":\"保洁清\"}', '2023-09-26 07:49:33', '2023-09-26 07:49:33');
INSERT INTO `biz_snapshot_0` VALUES ('1714219044187447296', 'order', '2310170000000000001', '1701074772546342912', 'NO_PAY', '{\"ordersStatus\":0,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0,\"lon\":\"116.34395\",\"serveAddress\":\"北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼\",\"contactsName\":\"吕女士\",\"serveItemId\":1685894105234755585,\"price\":1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"realPayAmount\":1,\"serveStartTime\":1697554800000,\"id\":2310170000000000001,\"lat\":\"40.06115\",\"serveTypeId\":1678649931106705409,\"updateTime\":1697507891000,\"userId\":1701074772546342912,\"totalAmount\":1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1697507891000,\"payStatus\":2,\"purNum\":1,\"serveTypeName\":\"保洁清\"}', '2023-10-17 09:58:15', '2023-10-17 09:58:15');
INSERT INTO `biz_snapshot_0` VALUES ('1714219045496070144', 'order', '2310170000000000001', '1701074772546342912', 'DISPATCHING', '{\"tradingChannel\":\"WECHAT_PAY\",\"ordersStatus\":100,\"payTime\":1697536643595,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0,\"lon\":\"116.34395\",\"serveAddress\":\"北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼\",\"contactsName\":\"吕女士\",\"serveItemId\":1685894105234755585,\"price\":1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"thirdOrderId\":\"1714219044707540993\",\"realPayAmount\":1,\"serveStartTime\":1697554800000,\"id\":2310170000000000001,\"lat\":\"40.06115\",\"serveTypeId\":1678649931106705409,\"updateTime\":1697507891000,\"userId\":1701074772546342912,\"tradingOrderNo\":1714219044707540992,\"totalAmount\":1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1697507891000,\"payStatus\":4,\"purNum\":1,\"serveTypeName\":\"保洁清\"}', '2023-10-17 09:58:15', '2023-10-17 09:58:15');
INSERT INTO `biz_snapshot_0` VALUES ('1714256780256649216', 'order', '2310170000000000002', '1701074772546342912', 'NO_PAY', '{\"ordersStatus\":0,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0,\"lon\":\"116.34395\",\"serveAddress\":\"北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼\",\"contactsName\":\"吕女士\",\"serveItemId\":1685894105234755585,\"price\":1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"realPayAmount\":1,\"serveStartTime\":1697610600000,\"id\":2310170000000000002,\"lat\":\"40.06115\",\"serveTypeId\":1678649931106705409,\"updateTime\":1697516892000,\"userId\":1701074772546342912,\"totalAmount\":1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1697516892000,\"payStatus\":2,\"purNum\":1,\"serveTypeName\":\"保洁清\"}', '2023-10-17 12:28:12', '2023-10-17 12:28:12');
INSERT INTO `biz_snapshot_0` VALUES ('1714256780629942272', 'order', '2310170000000000002', '1701074772546342912', 'DISPATCHING', '{\"tradingChannel\":\"WECHAT_PAY\",\"ordersStatus\":100,\"payTime\":1697545640451,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0,\"lon\":\"116.34395\",\"serveAddress\":\"北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼\",\"contactsName\":\"吕女士\",\"serveItemId\":1685894105234755585,\"price\":1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"thirdOrderId\":\"1714256780327952385\",\"realPayAmount\":1,\"serveStartTime\":1697610600000,\"id\":2310170000000000002,\"lat\":\"40.06115\",\"serveTypeId\":1678649931106705409,\"updateTime\":1697516892000,\"userId\":1701074772546342912,\"tradingOrderNo\":1714256780327952384,\"totalAmount\":1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1697516892000,\"payStatus\":4,\"purNum\":1,\"serveTypeName\":\"保洁清\"}', '2023-10-17 12:28:12', '2023-10-17 12:28:12');
INSERT INTO `biz_snapshot_0` VALUES ('1714261429961482240', 'order', '2310170000000000001', '1701074772546342912', 'NO_SERVE', '{\"tradingChannel\":\"WECHAT_PAY\",\"ordersStatus\":200,\"payTime\":1697536643595,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0,\"lon\":\"116.34395\",\"serveAddress\":\"北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼\",\"contactsName\":\"吕女士\",\"serveItemId\":1685894105234755585,\"price\":1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"thirdOrderId\":\"1714219044707540993\",\"realPayAmount\":1,\"serveStartTime\":1697554800000,\"id\":2310170000000000001,\"lat\":\"40.06115\",\"serveTypeId\":1678649931106705409,\"updateTime\":1697507891000,\"userId\":1701074772546342912,\"tradingOrderNo\":1714219044707540992,\"totalAmount\":1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1697507891000,\"payStatus\":4,\"purNum\":1,\"serveTypeName\":\"保洁清\"}', '2023-10-17 12:46:40', '2023-10-17 12:46:40');
INSERT INTO `biz_snapshot_0` VALUES ('1714261708626763776', 'order', '2310170000000000001', '1701074772546342912', 'DISPATCHING', '{\"tradingChannel\":\"WECHAT_PAY\",\"ordersStatus\":100,\"payTime\":1697536643595,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0,\"lon\":\"116.34395\",\"serveAddress\":\"北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼\",\"contactsName\":\"吕女士\",\"serveItemId\":1685894105234755585,\"price\":1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"thirdOrderId\":\"1714219044707540993\",\"realPayAmount\":1,\"serveStartTime\":1697554800000,\"id\":2310170000000000001,\"lat\":\"40.06115\",\"serveTypeId\":1678649931106705409,\"updateTime\":1697507891000,\"userId\":1701074772546342912,\"tradingOrderNo\":1714219044707540992,\"totalAmount\":1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1697507891000,\"payStatus\":4,\"purNum\":1,\"serveTypeName\":\"保洁清\"}', '2023-10-17 12:47:47', '2023-10-17 12:47:47');
INSERT INTO `biz_snapshot_0` VALUES ('1714261763974881280', 'order', '2310170000000000002', '1701074772546342912', 'NO_SERVE', '{\"tradingChannel\":\"WECHAT_PAY\",\"ordersStatus\":200,\"payTime\":1697545640451,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0,\"lon\":\"116.34395\",\"serveAddress\":\"北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼\",\"contactsName\":\"吕女士\",\"serveItemId\":1685894105234755585,\"price\":1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"thirdOrderId\":\"1714256780327952385\",\"realPayAmount\":1,\"serveStartTime\":1697610600000,\"id\":2310170000000000002,\"lat\":\"40.06115\",\"serveTypeId\":1678649931106705409,\"updateTime\":1697516892000,\"userId\":1701074772546342912,\"tradingOrderNo\":1714256780327952384,\"totalAmount\":1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1697516892000,\"payStatus\":4,\"purNum\":1,\"serveTypeName\":\"保洁清\"}', '2023-10-17 12:48:00', '2023-10-17 12:48:00');
INSERT INTO `biz_snapshot_0` VALUES ('1714262037003018240', 'order', '2310170000000000002', '1701074772546342912', 'SERVING', '{\"tradingChannel\":\"WECHAT_PAY\",\"ordersStatus\":300,\"payTime\":1697545640451,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0,\"lon\":\"116.34395\",\"serveAddress\":\"北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼\",\"contactsName\":\"吕女士\",\"serveItemId\":1685894105234755585,\"price\":1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"thirdOrderId\":\"1714256780327952385\",\"realPayAmount\":1,\"serveStartTime\":1697610600000,\"id\":2310170000000000002,\"lat\":\"40.06115\",\"serveTypeId\":1678649931106705409,\"updateTime\":1697516892000,\"userId\":1701074772546342912,\"tradingOrderNo\":1714256780327952384,\"totalAmount\":1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1697516892000,\"payStatus\":4,\"purNum\":1,\"serveTypeName\":\"保洁清\"}', '2023-10-17 12:49:05', '2023-10-17 12:49:05');
INSERT INTO `biz_snapshot_0` VALUES ('1714262083543015424', 'order', '2310170000000000002', '1701074772546342912', 'NO_EVALUATION', '{\"tradingChannel\":\"WECHAT_PAY\",\"ordersStatus\":400,\"payTime\":1697545640451,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0,\"lon\":\"116.34395\",\"serveAddress\":\"北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼\",\"contactsName\":\"吕女士\",\"serveItemId\":1685894105234755585,\"price\":1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"thirdOrderId\":\"1714256780327952385\",\"realPayAmount\":1,\"serveStartTime\":1697610600000,\"id\":2310170000000000002,\"lat\":\"40.06115\",\"serveTypeId\":1678649931106705409,\"updateTime\":1697516892000,\"userId\":1701074772546342912,\"tradingOrderNo\":1714256780327952384,\"totalAmount\":1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1697516892000,\"payStatus\":4,\"purNum\":1,\"serveTypeName\":\"保洁清\"}', '2023-10-17 12:49:16', '2023-10-17 12:49:16');
INSERT INTO `biz_snapshot_0` VALUES ('1714264289348460544', 'order', '2310170000000000003', '1701074772546342912', 'NO_PAY', '{\"ordersStatus\":0,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0,\"lon\":\"116.34395\",\"serveAddress\":\"北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼\",\"contactsName\":\"吕女士\",\"serveItemId\":1685894105234755585,\"price\":1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"realPayAmount\":1,\"serveStartTime\":1697553000000,\"id\":2310170000000000003,\"lat\":\"40.06115\",\"serveTypeId\":1678649931106705409,\"updateTime\":1697518682000,\"userId\":1701074772546342912,\"totalAmount\":1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1697518682000,\"payStatus\":2,\"purNum\":1,\"serveTypeName\":\"保洁清\"}', '2023-10-17 12:58:02', '2023-10-17 12:58:02');
INSERT INTO `biz_snapshot_0` VALUES ('1714264289990189056', 'order', '2310170000000000003', '1701074772546342912', 'DISPATCHING', '{\"tradingChannel\":\"WECHAT_PAY\",\"ordersStatus\":100,\"payTime\":1697547430786,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0,\"lon\":\"116.34395\",\"serveAddress\":\"北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼\",\"contactsName\":\"吕女士\",\"serveItemId\":1685894105234755585,\"price\":1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"thirdOrderId\":\"1714264289482678273\",\"realPayAmount\":1,\"serveStartTime\":1697553000000,\"id\":2310170000000000003,\"lat\":\"40.06115\",\"serveTypeId\":1678649931106705409,\"updateTime\":1697518682000,\"userId\":1701074772546342912,\"tradingOrderNo\":1714264289482678272,\"totalAmount\":1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1697518682000,\"payStatus\":4,\"purNum\":1,\"serveTypeName\":\"保洁清\"}', '2023-10-17 12:58:02', '2023-10-17 12:58:02');
INSERT INTO `biz_snapshot_0` VALUES ('1714264324618444800', 'order', '2310170000000000003', '1701074772546342912', 'NO_SERVE', '{\"tradingChannel\":\"WECHAT_PAY\",\"ordersStatus\":200,\"payTime\":1697547430786,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0,\"lon\":\"116.34395\",\"serveAddress\":\"北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼\",\"contactsName\":\"吕女士\",\"serveItemId\":1685894105234755585,\"price\":1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"thirdOrderId\":\"1714264289482678273\",\"realPayAmount\":1,\"serveStartTime\":1697553000000,\"id\":2310170000000000003,\"lat\":\"40.06115\",\"serveTypeId\":1678649931106705409,\"updateTime\":1697518682000,\"userId\":1701074772546342912,\"tradingOrderNo\":1714264289482678272,\"totalAmount\":1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1697518682000,\"payStatus\":4,\"purNum\":1,\"serveTypeName\":\"保洁清\"}', '2023-10-17 12:58:10', '2023-10-17 12:58:10');
INSERT INTO `biz_snapshot_0` VALUES ('1714265076606820352', 'order', '2310170000000000001', '1701074772546342912', 'NO_SERVE', '{\"tradingChannel\":\"WECHAT_PAY\",\"ordersStatus\":200,\"payTime\":1697536643595,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0,\"lon\":\"116.34395\",\"serveAddress\":\"北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼\",\"contactsName\":\"吕女士\",\"serveItemId\":1685894105234755585,\"price\":1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"thirdOrderId\":\"1714219044707540993\",\"realPayAmount\":1,\"serveStartTime\":1697554800000,\"id\":2310170000000000001,\"lat\":\"40.06115\",\"serveTypeId\":1678649931106705409,\"updateTime\":1697507891000,\"userId\":1701074772546342912,\"tradingOrderNo\":1714219044707540992,\"totalAmount\":1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1697507891000,\"payStatus\":4,\"purNum\":1,\"serveTypeName\":\"保洁清\"}', '2023-10-17 13:01:10', '2023-10-17 13:01:10');
INSERT INTO `biz_snapshot_0` VALUES ('1726227023199858688', 'order', '2310170000000000001', '1701074772546342912', 'SERVING', '{\"tradingChannel\":\"WECHAT_PAY\",\"ordersStatus\":300,\"payTime\":1697536643595,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0,\"lon\":\"116.34395\",\"serveAddress\":\"北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼\",\"contactsName\":\"吕女士\",\"serveItemId\":1685894105234755585,\"price\":1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"thirdOrderId\":\"1714219044707540993\",\"realPayAmount\":1,\"serveStartTime\":1697554800000,\"id\":2310170000000000001,\"lat\":\"40.06115\",\"serveTypeId\":1678649931106705409,\"updateTime\":1697507891000,\"userId\":1701074772546342912,\"tradingOrderNo\":1714219044707540992,\"totalAmount\":1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1697507891000,\"payStatus\":4,\"purNum\":1,\"serveTypeName\":\"保洁清\"}', '2023-11-19 21:13:41', '2023-11-19 21:13:41');
INSERT INTO `biz_snapshot_0` VALUES ('1726518190072152064', 'order', '2310170000000000001', '1701074772546342912', 'FINISHED', '{\"tradingChannel\":\"WECHAT_PAY\",\"ordersStatus\":500,\"payTime\":1697536643595,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0,\"lon\":\"116.34395\",\"serveAddress\":\"北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼\",\"contactsName\":\"吕女士\",\"serveItemId\":1685894105234755585,\"price\":1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"thirdOrderId\":\"1714219044707540993\",\"realPayAmount\":1,\"serveStartTime\":1697554800000,\"id\":2310170000000000001,\"lat\":\"40.06115\",\"serveTypeId\":1678649931106705409,\"updateTime\":1697507891000,\"userId\":1701074772546342912,\"tradingOrderNo\":1714219044707540992,\"totalAmount\":1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1697507891000,\"payStatus\":4,\"purNum\":1,\"serveTypeName\":\"保洁清\"}', '2023-11-20 16:30:40', '2023-11-20 16:30:40');
INSERT INTO `biz_snapshot_0` VALUES ('1726522780888875008', 'order', '2310170000000000003', '1701074772546342912', 'SERVING', '{\"tradingChannel\":\"WECHAT_PAY\",\"ordersStatus\":300,\"payTime\":1697547430786,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0,\"lon\":\"116.34395\",\"serveAddress\":\"北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼\",\"contactsName\":\"吕女士\",\"serveItemId\":1685894105234755585,\"price\":1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"thirdOrderId\":\"1714264289482678273\",\"realPayAmount\":1,\"serveStartTime\":1697553000000,\"id\":2310170000000000003,\"lat\":\"40.06115\",\"serveTypeId\":1678649931106705409,\"updateTime\":1697518682000,\"userId\":1701074772546342912,\"tradingOrderNo\":1714264289482678272,\"totalAmount\":1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1697518682000,\"payStatus\":4,\"purNum\":1,\"serveTypeName\":\"保洁清\"}', '2023-11-20 16:48:54', '2023-11-20 16:48:54');
INSERT INTO `biz_snapshot_0` VALUES ('1726522810064453632', 'order', '2310170000000000003', '1701074772546342912', 'FINISHED', '{\"tradingChannel\":\"WECHAT_PAY\",\"ordersStatus\":500,\"payTime\":1697547430786,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0,\"lon\":\"116.34395\",\"serveAddress\":\"北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼\",\"contactsName\":\"吕女士\",\"serveItemId\":1685894105234755585,\"price\":1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"thirdOrderId\":\"1714264289482678273\",\"realPayAmount\":1,\"serveStartTime\":1697553000000,\"id\":2310170000000000003,\"lat\":\"40.06115\",\"serveTypeId\":1678649931106705409,\"updateTime\":1697518682000,\"userId\":1701074772546342912,\"tradingOrderNo\":1714264289482678272,\"totalAmount\":1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1697518682000,\"payStatus\":4,\"purNum\":1,\"serveTypeName\":\"保洁清\"}', '2023-11-20 16:49:01', '2023-11-20 16:49:01');

-- ----------------------------
-- Table structure for biz_snapshot_1
-- ----------------------------
DROP TABLE IF EXISTS `biz_snapshot_1`;
CREATE TABLE `biz_snapshot_1` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `state_machine_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '状态机名称',
  `biz_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '业务id',
  `db_shard_id` bigint DEFAULT NULL COMMENT '分库键',
  `state` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '状态代码',
  `biz_data` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '业务数据',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='业务数据快照';

-- ----------------------------
-- Records of biz_snapshot_1
-- ----------------------------

-- ----------------------------
-- Table structure for biz_snapshot_2
-- ----------------------------
DROP TABLE IF EXISTS `biz_snapshot_2`;
CREATE TABLE `biz_snapshot_2` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `state_machine_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '状态机名称',
  `biz_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '业务id',
  `db_shard_id` bigint DEFAULT NULL COMMENT '分库键',
  `state` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '状态代码',
  `biz_data` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '业务数据',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='业务数据快照';

-- ----------------------------
-- Records of biz_snapshot_2
-- ----------------------------

-- ----------------------------
-- Table structure for breach_record
-- ----------------------------
DROP TABLE IF EXISTS `breach_record`;
CREATE TABLE `breach_record` (
  `id` bigint NOT NULL COMMENT '违约id',
  `serve_provider_id` bigint NOT NULL COMMENT '违约机构或师傅',
  `serve_provider_type` int NOT NULL COMMENT '类型，2：师傅、3：机构',
  `behavior_type` int NOT NULL COMMENT '行为类型，1：待分配时取消，2：待服务时取消，3：服务中取消，4：派单拒绝，5：派单超时',
  `breach_reason` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '违约原因',
  `serve_item_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '服务项名称',
  `serve_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '服务地址',
  `orders_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '服务编码',
  `served_user_id` bigint NOT NULL COMMENT '被服务人',
  `served_phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '被服务人员手机号，脱敏',
  `breach_time` datetime NOT NULL COMMENT '违约时间',
  `breach_day` int NOT NULL COMMENT '违约日，格式例如20200512,2020年5月12日',
  `orders_id` bigint NOT NULL COMMENT '违约单订单id',
  `orders_serve_id` bigint DEFAULT NULL COMMENT '服务单id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='违约记录';

-- ----------------------------
-- Records of breach_record
-- ----------------------------
INSERT INTO `breach_record` VALUES ('1704798076457275392', '1696338624494202882', '2', '2', '服务地址有误', '日常保洁', '北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼', null, '1701074772546342912', '13333333333', '2023-09-21 18:01:50', '20230921', '2309210000000000038', null);
INSERT INTO `breach_record` VALUES ('1704850841762091008', '1696338624494202882', '2', '2', '服务地址有误', '日常保洁', '北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼', null, '1701074772546342912', '13333333333', '2023-09-21 21:31:30', '20230921', '2309210000000000042', null);
INSERT INTO `breach_record` VALUES ('1704863326590238720', '1696338624494202882', '2', '2', '服务地址有误', '日常保洁', '北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼', null, '1701074772546342912', '13333333333', '2023-09-21 22:21:07', '20230921', '2309210000000000042', null);
INSERT INTO `breach_record` VALUES ('1704864015693414400', '1696338624494202882', '2', '2', '看错地址，无法服务', '日常保洁', '北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼', null, '1701074772546342912', '13333333333', '2023-09-21 22:23:51', '20230921', '2309210000000000042', null);
INSERT INTO `breach_record` VALUES ('1706554668584398848', '1696338624494202882', '2', '2', '服务地址有误', '日常保洁', '北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼', null, '1701074772546342912', '13333333333', '2023-09-26 14:21:54', '20230926', '2309260000000000061', null);
INSERT INTO `breach_record` VALUES ('1706559218703790080', '1696338624494202882', '2', '2', '服务地址有误', '日常保洁', '北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼', null, '1701074772546342912', '13333333333', '2023-09-26 14:39:59', '20230926', '2309260000000000061', null);
INSERT INTO `breach_record` VALUES ('1706563039525908480', '1696338624494202882', '2', '2', '服务地址有误', '日常保洁', '北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼', null, '1701074772546342912', '13333333333', '2023-09-26 14:55:10', '20230926', '2309260000000000061', null);
INSERT INTO `breach_record` VALUES ('1714261707968258048', '1696338624494202882', '2', '2', '服务地址有误', '日常保洁', '北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼', null, '1701074772546342912', '13333333333', '2023-10-17 20:46:55', '20231017', '2310170000000000001', null);

-- ----------------------------
-- Table structure for history_orders_serve_sync
-- ----------------------------
DROP TABLE IF EXISTS `history_orders_serve_sync`;
CREATE TABLE `history_orders_serve_sync` (
  `id` bigint NOT NULL COMMENT '服务单id，和',
  `serve_provider_id` bigint DEFAULT NULL COMMENT '服务人员或服务机构id',
  `serve_provider_type` int DEFAULT NULL COMMENT '服务者类型，2：服务端服务，3：机构端服务',
  `institution_staff_id` bigint DEFAULT NULL COMMENT '机构服务人员id',
  `institution_staff_name` varchar(50) DEFAULT NULL COMMENT '机构服务人员名称',
  `institution_name` varchar(100) DEFAULT NULL COMMENT '机构名称',
  `orders_origin_type` int DEFAULT NULL COMMENT '订单来源类型，1：抢单，2：派单',
  `contacts_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '客户姓名',
  `contacts_phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '客户电话',
  `serve_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '服务地址',
  `city_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '城市编码',
  `serve_type_id` bigint DEFAULT NULL COMMENT '服务分类id',
  `serve_type_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '服务分裂名称',
  `serve_start_time` datetime DEFAULT NULL COMMENT '预约时间',
  `serve_item_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '服务项名称',
  `serve_item_id` bigint DEFAULT NULL COMMENT '服务项id',
  `serve_item_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '服务图片',
  `serve_status` int DEFAULT NULL COMMENT '服务单状态，3：服务完成，4：订单关闭',
  `serve_provider_staff_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '服务人姓名',
  `serve_provider_staff_phone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '服务人手机号',
  `canceler_name` varchar(50) DEFAULT NULL COMMENT '取消人姓名',
  `cancel_time` datetime DEFAULT NULL COMMENT '退款时间',
  `cancel_reason` varchar(50) DEFAULT NULL COMMENT '退款原因',
  `real_serve_start_time` datetime DEFAULT NULL COMMENT '实际服务开始时间',
  `real_serve_end_time` datetime DEFAULT NULL COMMENT '实际服务完结时间',
  `serve_before_imgs` json DEFAULT NULL COMMENT '服务前照片',
  `serve_after_imgs` json DEFAULT NULL COMMENT '服务后照片',
  `serve_before_illustrate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '服务前说明',
  `serve_after_illustrate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '服务后说明',
  `orders_amount` decimal(10,2) DEFAULT NULL COMMENT '订单金额',
  `pur_num` int DEFAULT NULL COMMENT '购买数量',
  `serve_num` int DEFAULT NULL COMMENT '服务数量',
  `unit` int DEFAULT NULL COMMENT '单位',
  `display` int DEFAULT '1' COMMENT '服务端/机构端是否展示，1：展示，0：隐藏',
  `is_deleted` int DEFAULT '0' COMMENT '是否是逻辑删除',
  `update_by` bigint DEFAULT NULL COMMENT '更新人',
  `sort_time` datetime DEFAULT NULL COMMENT '排序时间，服务单状态为服务完成，该字段是完成时间；服务单状态为订单关闭，该时间为退款时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `list_query_index` (`serve_provider_id`,`sort_time`,`serve_status`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='服务单';

-- ----------------------------
-- Records of history_orders_serve_sync
-- ----------------------------
INSERT INTO `history_orders_serve_sync` VALUES ('2310170000000000001', '1696338624494202882', '2', null, null, null, '2', '吕女士', '13333333333', '北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼', '010', '1678649931106705409', '保洁清', '2023-10-17 23:00:00', '日常保洁', '1685894105234755585', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png', '3', '服务人员02', '15066699132', null, null, null, '2023-11-19 21:12:46', '2023-11-20 16:29:46', '[\"https://jzo2o-oss.oss-cn-hangzhou.aliyuncs.com/b9498f65-7621-4d4d-9edf-0fa93cebffe6.png\"]', '[\"https://jzo2o-oss.oss-cn-hangzhou.aliyuncs.com/3ee3a2cb-0bb9-40ec-bbb3-d94f0b5172db.jpg\"]', '已按照客户要求完成服务', '', '1.00', null, '1', '1', '1', '0', '1696338624494202882', '2023-12-05 16:29:49', '2023-11-20 16:30:38');
INSERT INTO `history_orders_serve_sync` VALUES ('2310170000000000003', '1696338624494202882', '2', null, null, null, '2', '吕女士', '13333333333', '北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼', '010', '1678649931106705409', '保洁清', '2023-10-17 22:30:00', '日常保洁', '1685894105234755585', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png', '3', '服务人员02', '15066699132', null, null, null, '2023-11-20 16:48:03', '2023-11-20 16:48:10', '[\"https://jzo2o-oss.oss-cn-hangzhou.aliyuncs.com/0ffaa79b-1063-495f-9252-34093b5f2d42.png\"]', '[\"https://jzo2o-oss.oss-cn-hangzhou.aliyuncs.com/03f8be26-3da3-49d2-aa0e-fcdd461f4fe0.png\"]', '', '', '1.00', null, '1', '1', '1', '0', '1696338624494202882', '2023-12-05 16:48:10', '2023-11-20 16:49:01');
INSERT INTO `history_orders_serve_sync` VALUES ('2311230000000000040', '1696338624494202882', '2', null, null, null, '1', '苗先生', '13333333333', '北京市北京市昌平区北京市昌平区回龙观街道弘文恒瑞文化传播公司正泽商务中心', '010', '1678649931106705409', '保洁清', '2023-11-23 17:00:00', '日常保洁', '1685894105234755585', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png', '3', '服务人员02', '15066699132', null, null, null, '2024-08-19 14:28:20', '2024-08-19 14:44:27', '[\"https://itxinfei-yljz.oss-cn-beijing.aliyuncs.com/a067ce70-ea91-4934-ad9d-222240b8367a.jpg\"]', '[\"https://itxinfei-yljz.oss-cn-beijing.aliyuncs.com/24be9fe6-49a7-4a12-ba6e-195294e40f46.jpg\"]', '', '', '1.00', null, '1', '1', '1', '0', '1696338624494202882', '2024-09-03 14:45:18', '2024-08-19 14:45:18');

-- ----------------------------
-- Table structure for history_orders_sync
-- ----------------------------
DROP TABLE IF EXISTS `history_orders_sync`;
CREATE TABLE `history_orders_sync` (
  `id` bigint NOT NULL COMMENT '订单id',
  `user_id` bigint NOT NULL COMMENT '订单所属人',
  `serve_type_id` bigint DEFAULT NULL COMMENT '服务类型id',
  `serve_provider_id` bigint DEFAULT NULL COMMENT '服务人',
  `serve_provider_type` int DEFAULT NULL COMMENT '服务人类型，2：服务人员，3：机构',
  `serve_item_id` bigint NOT NULL COMMENT '服务项id',
  `serve_id` bigint NOT NULL COMMENT '服务id',
  `city_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '城市编码',
  `serve_type_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '服务类型名称',
  `serve_item_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '服务项名称',
  `serve_item_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '服务项图片',
  `unit` int DEFAULT NULL COMMENT '服务单位',
  `orders_status` int NOT NULL COMMENT '订单状态，500：订单完成，600：已取消，700：已关闭',
  `pay_status` int DEFAULT NULL COMMENT '支付状态，1：支付成功，2：已关闭',
  `refund_status` int DEFAULT NULL COMMENT '退款状态',
  `trade_finish_time` datetime DEFAULT NULL COMMENT '订单完成时间',
  `trading_channel` varchar(255) DEFAULT NULL COMMENT '支付渠道，ALI_PAY：支付宝，WECHAT_PAY：微信',
  `third_order_id` varchar(50) DEFAULT NULL COMMENT '支付流水',
  `dispatch_time` datetime DEFAULT NULL COMMENT '派单时间',
  `price` decimal(10,2) NOT NULL COMMENT '单价',
  `pur_num` int NOT NULL DEFAULT '1' COMMENT '购买数量',
  `total_amount` decimal(10,2) NOT NULL COMMENT '订单总金额',
  `real_pay_amount` decimal(10,2) NOT NULL COMMENT '实际支付金额',
  `third_refund_order_id` varchar(50) DEFAULT NULL COMMENT '退款流水',
  `canceler_name` varchar(50) DEFAULT NULL COMMENT '取消人姓名',
  `discount_amount` decimal(10,2) NOT NULL COMMENT '优惠金额',
  `serve_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '服务详细地址',
  `contacts_phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '联系人手机号',
  `contacts_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '联系人姓名',
  `serve_provider_staff_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '服务人姓名',
  `serve_provider_staff_phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '服务人手机号',
  `institution_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '机构名称',
  `institution_phone` varchar(20) DEFAULT NULL COMMENT '机构电话',
  `place_order_time` datetime DEFAULT NULL COMMENT '下单时间',
  `serve_start_time` datetime NOT NULL COMMENT '服务开始时间',
  `serve_end_time` datetime DEFAULT NULL COMMENT '服务结束时间',
  `real_serve_start_time` datetime DEFAULT NULL COMMENT '实际服务开始时间',
  `real_serve_end_time` datetime DEFAULT NULL COMMENT '实际服务结束时间',
  `serve_before_imgs` json DEFAULT NULL COMMENT '服务开始图片',
  `serve_before_illustrate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '服务开始说明',
  `serve_after_imgs` json DEFAULT NULL COMMENT '服务完成图片',
  `serve_after_illustrate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '服务完成说明',
  `payment_timeout` datetime DEFAULT NULL COMMENT '支付超时时间，该时间只对待支付有意义',
  `lon` double(10,5) DEFAULT NULL COMMENT '经度',
  `lat` double(10,5) DEFAULT NULL COMMENT '纬度',
  `pay_time` datetime DEFAULT NULL COMMENT '支付时间',
  `cancel_time` datetime DEFAULT NULL COMMENT '取消/被退单时间',
  `cancel_reason` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '取消/被退单原因',
  `year` int DEFAULT NULL COMMENT '下单年份,格式：yyyy',
  `month` int DEFAULT NULL COMMENT '下单月份,格式：yyyyMM',
  `day` int DEFAULT NULL COMMENT '下单所在日,格式：yyyyMMdd',
  `hour` int DEFAULT NULL COMMENT '下单所在小时，格式：yyyyMMddHH',
  `sort_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '排序时间字段',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sync` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='历史订单完成15天后同步到历史订单同步表中，通过canal同步到历史订单库中；1天后删除（删除条件当天数据和历史订单库中的订单数据数量一致）';

-- ----------------------------
-- Records of history_orders_sync
-- ----------------------------
INSERT INTO `history_orders_sync` VALUES ('2310170000000000001', '1701074772546342912', '1678649931106705409', '1696338624494202882', '2', '1685894105234755585', '1693815624114970626', '010', '保洁清', '日常保洁', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png', '1', '500', '4', null, '2023-11-20 16:30:38', 'WECHAT_PAY', null, '2023-10-17 13:01:10', '1.00', '1', '1.00', '1.00', null, null, '0.00', '北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼 ', '13333333333', '吕女士', '服务人员02', '15066699132', null, null, '2023-10-17 09:58:11', '2023-10-17 23:00:00', null, '2023-11-19 21:12:46', '2023-11-20 16:29:46', '[\"https://jzo2o-oss.oss-cn-hangzhou.aliyuncs.com/b9498f65-7621-4d4d-9edf-0fa93cebffe6.png\"]', '已按照客户要求完成服务', '[\"https://jzo2o-oss.oss-cn-hangzhou.aliyuncs.com/3ee3a2cb-0bb9-40ec-bbb3-d94f0b5172db.jpg\"]', '', null, '116.34395', '40.06115', '2023-10-17 17:57:24', null, null, '2023', '202311', '20231120', '2023112016', '2023-12-05 16:29:48', '2023-11-20 17:26:15', null);
INSERT INTO `history_orders_sync` VALUES ('2310170000000000003', '1701074772546342912', '1678649931106705409', '1696338624494202882', '2', '1685894105234755585', '1693815624114970626', '010', '保洁清', '日常保洁', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png', '1', '500', '4', null, '2023-11-20 16:49:01', 'WECHAT_PAY', null, '2023-10-17 12:58:10', '1.00', '1', '1.00', '1.00', null, null, '0.00', '北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼 ', '13333333333', '吕女士', '服务人员02', '15066699132', null, null, '2023-10-17 12:58:02', '2023-10-17 22:30:00', null, '2023-11-20 16:48:03', '2023-11-20 16:48:10', '[\"https://jzo2o-oss.oss-cn-hangzhou.aliyuncs.com/0ffaa79b-1063-495f-9252-34093b5f2d42.png\"]', '', '[\"https://jzo2o-oss.oss-cn-hangzhou.aliyuncs.com/03f8be26-3da3-49d2-aa0e-fcdd461f4fe0.png\"]', '', null, '116.34395', '40.06115', '2023-10-17 20:57:11', null, null, '2023', '202311', '20231120', '2023112016', '2023-12-05 16:48:10', '2023-11-20 17:26:15', null);
INSERT INTO `history_orders_sync` VALUES ('2311230000000000040', '1716346406098296832', '1678649931106705409', '1696338624494202882', '2', '1685894105234755585', '1693815624114970626', '010', '保洁清', '日常保洁', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png', '1', '500', '4', null, '2024-08-19 14:45:18', 'WECHAT_PAY', null, '2024-08-19 13:39:30', '1.00', '1', '1.00', '1.00', null, null, '0.00', '北京市北京市昌平区北京市昌平区回龙观街道弘文恒瑞文化传播公司正泽商务中心', '13333333333', '苗先生', '服务人员02', '15066699132', null, null, '2023-11-23 12:01:26', '2023-11-23 17:00:00', null, '2024-08-19 14:28:20', '2024-08-19 14:44:27', '[\"https://itxinfei-yljz.oss-cn-beijing.aliyuncs.com/a067ce70-ea91-4934-ad9d-222240b8367a.jpg\"]', '', '[\"https://itxinfei-yljz.oss-cn-beijing.aliyuncs.com/24be9fe6-49a7-4a12-ba6e-195294e40f46.jpg\"]', '', null, '116.34351', '40.06024', '2023-11-23 12:00:35', null, null, '2024', '202408', '20240819', '2024081914', '2024-09-03 14:45:18', '2024-08-19 14:45:18', null);

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` bigint NOT NULL COMMENT '订单id',
  `user_id` bigint NOT NULL COMMENT '订单所属人',
  `serve_type_id` bigint DEFAULT NULL COMMENT '服务类型id',
  `serve_type_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '服务类型名称',
  `serve_item_id` bigint NOT NULL COMMENT '服务项id',
  `serve_item_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '服务项名称',
  `serve_item_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '服务项图片',
  `unit` int DEFAULT NULL COMMENT '服务单位',
  `serve_id` bigint NOT NULL COMMENT '服务id',
  `orders_status` int NOT NULL COMMENT '订单状态，0：待支付，100：派单中，200：待服务，300：服务中，400：待评价，500：订单完成，600：已取消，700：已关闭',
  `pay_status` int DEFAULT NULL COMMENT '支付状态，0：待支付，1：支付成功，2：已关闭，3：退款成功',
  `refund_status` int DEFAULT NULL COMMENT '退款状态 1退款中 2退款成功 3退款失败',
  `price` decimal(10,2) NOT NULL COMMENT '单价',
  `pur_num` int NOT NULL DEFAULT '1' COMMENT '购买数量',
  `total_amount` decimal(10,2) NOT NULL COMMENT '订单总金额',
  `real_pay_amount` decimal(10,2) NOT NULL COMMENT '实际支付金额',
  `discount_amount` decimal(10,2) NOT NULL COMMENT '优惠金额',
  `city_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '城市编码',
  `serve_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '服务详细地址',
  `contacts_phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '联系人手机号',
  `contacts_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '联系人姓名',
  `serve_start_time` datetime NOT NULL COMMENT '服务开始时间',
  `lon` double(10,5) DEFAULT NULL COMMENT '经度',
  `lat` double(10,5) DEFAULT NULL COMMENT '纬度',
  `pay_time` datetime DEFAULT NULL COMMENT '支付时间',
  `evaluation_time` datetime DEFAULT NULL COMMENT '评价时间',
  `evaluation_status` int NOT NULL DEFAULT '0' COMMENT '评价状态 0:未评价  1:已评价',
  `trading_order_no` bigint DEFAULT NULL COMMENT '支付服务交易单号',
  `transaction_id` varchar(50) DEFAULT NULL COMMENT '第三方支付的交易号',
  `refund_no` bigint DEFAULT NULL COMMENT '支付服务退款单号',
  `refund_id` varchar(50) DEFAULT NULL COMMENT '第三方支付的退款单号',
  `trading_channel` varchar(50) DEFAULT NULL COMMENT '支付渠道',
  `display` int DEFAULT '1' COMMENT '用户端是否展示，1：展示，0：隐藏',
  `sort_by` bigint DEFAULT NULL COMMENT '排序字段，serve_start_time秒级时间戳+订单id后六位',
  `real_serve_end_time` datetime DEFAULT NULL COMMENT '实际服务完成时间',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `query_index_0` (`orders_status`,`user_id`,`display`,`sort_by` DESC),
  KEY `query_index_1` (`user_id`,`display`,`sort_by` DESC)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='订单表';

-- ----------------------------
-- Records of orders
-- ----------------------------

-- ----------------------------
-- Table structure for orders_0
-- ----------------------------
DROP TABLE IF EXISTS `orders_0`;
CREATE TABLE `orders_0` (
  `id` bigint NOT NULL COMMENT '订单id',
  `user_id` bigint NOT NULL COMMENT '订单所属人',
  `serve_type_id` bigint DEFAULT NULL COMMENT '服务类型id',
  `serve_type_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '服务类型名称',
  `serve_item_id` bigint NOT NULL COMMENT '服务项id',
  `serve_item_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '服务项名称',
  `serve_item_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '服务项图片',
  `unit` int DEFAULT NULL COMMENT '服务单位',
  `serve_id` bigint NOT NULL COMMENT '服务id',
  `orders_status` int NOT NULL COMMENT '订单状态，0：待支付，100：派单中，200：待服务，300：服务中，400：待评价，500：订单完成，600：已取消，700：已关闭',
  `pay_status` int DEFAULT NULL COMMENT '支付状态，2：待支付，4：支付成功',
  `refund_status` int DEFAULT NULL COMMENT '退款状态 1退款中 2退款成功 3退款失败',
  `price` decimal(10,2) NOT NULL COMMENT '单价',
  `pur_num` int NOT NULL DEFAULT '1' COMMENT '购买数量',
  `total_amount` decimal(10,2) NOT NULL COMMENT '订单总金额',
  `real_pay_amount` decimal(10,2) NOT NULL COMMENT '实际支付金额',
  `discount_amount` decimal(10,2) NOT NULL COMMENT '优惠金额',
  `city_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '城市编码',
  `serve_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '服务详细地址',
  `contacts_phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '联系人手机号',
  `contacts_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '联系人姓名',
  `serve_start_time` datetime NOT NULL COMMENT '服务开始时间',
  `lon` double(10,5) DEFAULT NULL COMMENT '经度',
  `lat` double(10,5) DEFAULT NULL COMMENT '纬度',
  `pay_time` datetime DEFAULT NULL COMMENT '支付时间',
  `evaluation_time` datetime DEFAULT NULL COMMENT '评价时间',
  `evaluation_status` int NOT NULL DEFAULT '0' COMMENT '评价状态 0:未评价  1:已评价',
  `trading_order_no` bigint DEFAULT NULL COMMENT '支付服务交易单号',
  `transaction_id` varchar(50) DEFAULT NULL COMMENT '第三方支付的交易号',
  `refund_no` bigint DEFAULT NULL COMMENT '支付服务退款单号',
  `refund_id` varchar(50) DEFAULT NULL COMMENT '第三方支付的退款单号',
  `trading_channel` varchar(50) DEFAULT NULL COMMENT '支付渠道',
  `display` int DEFAULT '1' COMMENT '用户端是否展示，1：展示，0：隐藏',
  `sort_by` bigint DEFAULT NULL COMMENT '排序字段，serve_start_time秒级时间戳+订单id后六位',
  `real_serve_end_time` datetime DEFAULT NULL COMMENT '实际服务完成时间',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `query_index_1` (`user_id`,`display`,`sort_by` DESC),
  KEY `query_index_0` (`orders_status`,`user_id`,`display`,`sort_by` DESC,`serve_item_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='订单表';

-- ----------------------------
-- Records of orders_0
-- ----------------------------
INSERT INTO `orders_0` VALUES ('2309180000000000017', '1701074772546342912', '1678649931106705409', '保洁清', '1685894105234755585', '日常保洁', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png', '1', '1693815624114970626', '100', '4', null, '0.10', '1', '0.10', '0.10', '0.00', '010', '北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼', '13333333333', '吕女士', '2023-09-18 12:30:00', '116.34395', '40.06115', '2023-09-18 10:29:41', null, '0', '1703597125247463424', '1111', null, null, 'WECHAT_PAY', '1', '1695011400017', null, '2023-09-18 02:30:29', '2023-09-18 02:30:32');
INSERT INTO `orders_0` VALUES ('2309180000000000018', '1701074772546342912', '1678649931106705409', '保洁清', '1685894105234755585', '日常保洁', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png', '1', '1693815624114970626', '600', '2', null, '0.10', '1', '0.10', '0.10', '0.00', '010', '北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼', '13333333333', '吕女士', '2023-09-18 14:30:00', '116.34395', '40.06115', null, null, '0', null, null, null, null, null, '1', '1695018600018', null, '2023-09-18 03:39:20', '2023-09-20 08:34:42');
INSERT INTO `orders_0` VALUES ('2309180000000000019', '1701074772546342912', '1678649931106705409', '保洁清', '1685894105234755585', '日常保洁', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png', '1', '1693815624114970626', '100', '4', null, '0.10', '1', '0.10', '0.10', '0.00', '010', '北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼', '13333333333', '吕女士', '2023-09-18 14:30:00', '116.34395', '40.06115', '2023-09-18 11:40:09', null, '0', '1703614861893795840', '1111', null, null, 'WECHAT_PAY', '1', '1695018600019', null, '2023-09-18 03:40:58', '2023-09-18 03:41:01');
INSERT INTO `orders_0` VALUES ('2309180000000000020', '1701074772546342912', '1678649931106705409', '保洁清', '1685894105234755585', '日常保洁', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png', '1', '1693815624114970626', '100', '4', null, '0.10', '1', '0.10', '0.10', '0.00', '010', '北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼', '13333333333', '吕女士', '2023-09-18 21:00:00', '116.34395', '40.06115', '2023-09-18 18:27:09', null, '0', '1703717287128784896', '1111', null, null, 'WECHAT_PAY', '1', '1695042000020', null, '2023-09-18 10:27:58', '2023-09-18 10:28:01');
INSERT INTO `orders_0` VALUES ('2309190000000000021', '1701074772546342912', '1678649931106705409', '保洁清', '1685894105234755585', '日常保洁', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png', '1', '1693815624114970626', '100', '4', null, '0.10', '1', '0.10', '0.10', '0.00', '010', '北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼', '13333333333', '吕女士', '2023-09-19 18:00:00', '116.34395', '40.06115', '2023-09-19 15:36:45', null, '0', '1704036791742377984', '1111', null, null, 'WECHAT_PAY', '1', '1695117600021', null, '2023-09-19 07:37:34', '2023-09-19 07:37:36');
INSERT INTO `orders_0` VALUES ('2309190000000000022', '1701074772546342912', '1678649931106705409', '保洁清', '1685894105234755585', '日常保洁', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png', '1', '1693815624114970626', '100', '4', null, '0.10', '1', '0.10', '0.10', '0.00', '010', '北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼', '13333333333', '吕女士', '2023-09-19 18:00:00', '116.34395', '40.06115', '2023-09-19 15:38:37', null, '0', '1704037259092701184', '1111', null, null, 'WECHAT_PAY', '1', '1695117600022', null, '2023-09-19 07:39:28', '2023-09-19 07:39:28');
INSERT INTO `orders_0` VALUES ('2309190000000000023', '1701074772546342912', '1678649931106705409', '保洁清', '1685894105234755585', '日常保洁', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png', '1', '1693815624114970626', '100', '4', null, '0.10', '1', '0.10', '0.10', '0.00', '010', '北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼', '13333333333', '吕女士', '2023-09-19 18:00:00', '116.34395', '40.06115', '2023-09-19 15:41:30', null, '0', '1704037987341316096', '1111', null, null, 'WECHAT_PAY', '1', '1695117600023', null, '2023-09-19 07:42:21', '2023-09-19 07:42:21');
INSERT INTO `orders_0` VALUES ('2309190000000000024', '1701074772546342912', '1678649931106705409', '保洁清', '1685894105234755585', '日常保洁', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png', '1', '1693815624114970626', '100', '4', null, '0.10', '1', '0.10', '0.10', '0.00', '010', '北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼', '13333333333', '吕女士', '2023-09-19 18:00:00', '116.34395', '40.06115', '2023-09-19 15:45:05', null, '0', '1704038886767865856', '1111', null, null, 'WECHAT_PAY', '1', '1695117600024', null, '2023-09-19 07:45:56', '2023-09-19 07:45:56');
INSERT INTO `orders_0` VALUES ('2309190000000000025', '1701074772546342912', '1678649931106705409', '保洁清', '1685894105234755585', '日常保洁', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png', '1', '1693815624114970626', '100', '4', null, '0.10', '1', '0.10', '0.10', '0.00', '010', '北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼', '13333333333', '吕女士', '2023-09-19 18:30:00', '116.34395', '40.06115', '2023-09-19 15:46:20', null, '0', '1704039201676210176', '1111', null, null, 'WECHAT_PAY', '1', '1695119400025', null, '2023-09-19 07:47:11', '2023-09-19 07:47:11');
INSERT INTO `orders_0` VALUES ('2309190000000000026', '1701074772546342912', '1678649931106705409', '保洁清', '1685894105234755585', '日常保洁', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png', '1', '1693815624114970626', '100', '4', null, '0.10', '1', '0.10', '0.10', '0.00', '010', '北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼', '13333333333', '吕女士', '2023-09-19 19:00:00', '116.34395', '40.06115', '2023-09-19 15:48:15', null, '0', '1704039682683265024', '1111', null, null, 'WECHAT_PAY', '1', '1695121200026', null, '2023-09-19 07:49:03', '2023-09-19 07:49:06');
INSERT INTO `orders_0` VALUES ('2309190000000000027', '1701074772546342912', '1678649931106705409', '保洁清', '1685894105234755585', '日常保洁', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png', '1', '1693815624114970626', '100', '4', null, '0.10', '1', '0.10', '0.10', '0.00', '010', '北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼', '13333333333', '吕女士', '2023-09-19 21:00:00', '116.34395', '40.06115', '2023-09-19 15:53:55', null, '0', '1704041111602868224', '1111', null, null, 'WECHAT_PAY', '1', '1695128400027', null, '2023-09-19 07:54:44', '2023-09-19 07:54:46');
INSERT INTO `orders_0` VALUES ('2309190000000000028', '1701074772546342912', '1678649931106705409', '保洁清', '1685894105234755585', '日常保洁', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png', '1', '1693815624114970626', '100', '4', null, '0.10', '1', '0.10', '0.10', '0.00', '010', '北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼', '13333333333', '吕女士', '2023-09-19 20:00:00', '116.34395', '40.06115', '2023-09-19 17:28:39', null, '0', '1704064949044699136', '1111', null, null, 'WECHAT_PAY', '1', '1695124800028', null, '2023-09-19 09:29:10', '2023-09-19 09:29:30');
INSERT INTO `orders_0` VALUES ('2309190000000000029', '1701074772546342912', '1678649931106705409', '保洁清', '1685894105234755585', '日常保洁', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png', '1', '1693815624114970626', '100', '4', null, '0.10', '1', '0.10', '0.10', '0.00', '010', '北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼', '13333333333', '吕女士', '2023-09-19 21:30:00', '116.34395', '40.06115', '2023-09-19 17:32:23', null, '0', '1704065891534229504', '1111', null, null, 'WECHAT_PAY', '1', '1695130200029', null, '2023-09-19 09:33:04', '2023-09-19 09:33:14');
INSERT INTO `orders_0` VALUES ('2309190000000000030', '1701074772546342912', '1678649931106705409', '保洁清', '1685894105234755585', '日常保洁', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png', '1', '1693815624114970626', '100', '4', null, '0.10', '1', '0.10', '0.10', '0.00', '010', '北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼', '13333333333', '吕女士', '2023-09-19 22:00:00', '116.34395', '40.06115', '2023-09-19 17:34:02', null, '0', '1704066307693072384', '1111', null, null, 'WECHAT_PAY', '1', '1695132000030', null, '2023-09-19 09:34:46', '2023-09-19 09:34:53');
INSERT INTO `orders_0` VALUES ('2309190000000000031', '1701074772546342912', '1678649931106705409', '保洁清', '1685894105234755585', '日常保洁', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png', '1', '1693815624114970626', '100', '4', null, '0.10', '1', '0.10', '0.10', '0.00', '010', '北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼', '13333333333', '吕女士', '2023-09-19 20:00:00', '116.34395', '40.06115', '2023-09-19 17:38:04', null, '0', '1704067204791783424', '1111', null, null, 'WECHAT_PAY', '1', '1695124800031', null, '2023-09-19 09:38:08', '2023-09-19 09:38:55');
INSERT INTO `orders_0` VALUES ('2309190000000000032', '1701074772546342912', '1678649931106705409', '保洁清', '1685894105234755585', '日常保洁', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png', '1', '1693815624114970626', '700', '4', '1', '0.10', '1', '0.10', '0.10', '0.00', '010', '北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼', '13333333333', '吕女士', '2023-09-19 22:30:00', '116.34395', '40.06115', '2023-09-19 17:48:29', null, '0', '1704069941608636416', '1111', null, null, 'WECHAT_PAY', '1', '1695133800032', null, '2023-09-19 09:49:11', '2023-09-20 08:22:43');
INSERT INTO `orders_0` VALUES ('2309200000000000033', '1701074772546342912', '1678649931106705409', '保洁清', '1685894105234755585', '日常保洁', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png', '1', '1693815624114970626', '100', '4', null, '0.10', '1', '0.10', '0.10', '0.00', '010', '北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼', '13333333333', '吕女士', '2023-09-20 19:30:00', '116.34395', '40.06115', '2023-09-20 16:34:25', null, '0', '1704413690180165632', '1111', null, null, 'WECHAT_PAY', '1', '1695209400033', null, '2023-09-20 08:35:17', '2023-09-20 08:35:17');
INSERT INTO `orders_0` VALUES ('2309210000000000034', '1701074772546342912', '1678649931106705409', '保洁清', '1685894105234755585', '日常保洁', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png', '1', '1693815624114970626', '200', '4', null, '0.10', '1', '0.10', '0.10', '0.00', '010', '北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼', '13333333333', '吕女士', '2023-09-21 22:00:00', '116.34395', '40.06115', '2023-09-21 15:49:13', null, '0', '1704764705484070912', '1111', null, null, 'WECHAT_PAY', '1', '1695304800034', null, '2023-09-21 07:50:00', '2023-09-21 08:48:52');
INSERT INTO `orders_0` VALUES ('2309210000000000035', '1701074772546342912', '1678649931106705409', '保洁清', '1685894105234755585', '日常保洁', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png', '1', '1693815624114970626', '200', '4', null, '0.10', '1', '0.10', '0.10', '0.00', '010', '北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼', '13333333333', '吕女士', '2023-09-21 22:00:00', '116.34395', '40.06115', '2023-09-21 16:52:13', null, '0', '1704780559181438976', '1111', null, null, 'WECHAT_PAY', '1', '1695304800035', null, '2023-09-21 08:53:05', '2023-09-21 08:53:20');
INSERT INTO `orders_0` VALUES ('2309210000000000036', '1701074772546342912', '1678649931106705409', '保洁清', '1685894105234755585', '日常保洁', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png', '1', '1693815624114970626', '700', '4', '1', '0.10', '1', '0.10', '0.10', '0.00', '010', '北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼', '13333333333', '吕女士', '2023-09-21 22:00:00', '116.34395', '40.06115', '2023-09-21 16:56:13', null, '0', '1704781563725635584', '1111', null, null, 'WECHAT_PAY', '1', '1695304800036', null, '2023-09-21 08:57:04', '2023-09-23 09:31:43');
INSERT INTO `orders_0` VALUES ('2309210000000000037', '1701074772546342912', '1678649931106705409', '保洁清', '1685894105234755585', '日常保洁', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png', '1', '1693815624114970626', '500', '4', null, '0.10', '1', '0.10', '0.10', '0.00', '010', '北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼', '13333333333', '吕女士', '2023-09-21 22:00:00', '116.34395', '40.06115', '2023-09-21 16:57:23', '2023-09-23 15:36:26', '0', '1704781859038191616', '1111', null, null, 'WECHAT_PAY', '1', '1695304800037', null, '2023-09-21 08:58:15', '2023-09-23 07:37:19');
INSERT INTO `orders_0` VALUES ('2309210000000000038', '1701074772546342912', '1678649931106705409', '保洁清', '1685894105234755585', '日常保洁', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png', '1', '1693815624114970626', '100', '4', null, '0.10', '1', '0.10', '0.10', '0.00', '010', '北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼', '13333333333', '吕女士', '2023-09-21 20:30:00', '116.34395', '40.06115', '2023-09-21 17:47:11', null, '0', '1704794391375253504', '1111', null, null, 'WECHAT_PAY', '1', '1695299400038', null, '2023-09-21 09:48:03', '2023-09-21 10:02:41');
INSERT INTO `orders_0` VALUES ('2309210000000000039', '1701074772546342912', '1678649931106705409', '保洁清', '1685894105234755585', '日常保洁', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png', '1', '1693815624114970626', '500', '4', null, '0.10', '1', '0.10', '0.10', '0.00', '010', '北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼', '13333333333', '吕女士', '2023-09-21 23:30:00', '116.34395', '40.06115', '2023-09-21 17:48:41', '2023-09-22 21:34:58', '0', '1704794766413139968', '1111', null, null, 'WECHAT_PAY', '1', '1695310200039', null, '2023-09-21 09:49:32', '2023-09-22 13:35:50');
INSERT INTO `orders_0` VALUES ('2309210000000000041', '1701074772546342912', '1678649931106705409', '保洁清', '1685894105234755585', '日常保洁', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png', '1', '1693815624114970626', '700', '4', '1', '0.10', '1', '0.10', '0.10', '0.00', '010', '北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼', '13333333333', '吕女士', '2023-09-21 23:30:00', '116.34395', '40.06115', '2023-09-21 17:57:01', null, '0', '1704796864395694080', '1111', null, null, 'WECHAT_PAY', '1', '1695310200041', null, '2023-09-21 09:57:48', '2023-09-22 03:05:56');
INSERT INTO `orders_0` VALUES ('2309210000000000042', '1701074772546342912', '1678649931106705409', '保洁清', '1685894105234755585', '日常保洁', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png', '1', '1693815624114970626', '500', '4', null, '0.10', '1', '0.10', '0.10', '0.00', '010', '北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼', '13333333333', '吕女士', '2023-09-22 06:30:00', '116.34395', '40.06115', '2023-09-21 20:59:17', '2023-09-22 21:20:08', '0', '1704842735086817280', '1111', null, null, 'WECHAT_PAY', '1', '1695335400042', null, '2023-09-21 13:00:09', '2023-09-22 13:21:00');
INSERT INTO `orders_0` VALUES ('2309230000000000043', '1701074772546342912', '1678649931106705409', '保洁清', '1685894105234755585', '日常保洁', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png', '1', '1693815624114970626', '500', '4', null, '0.10', '1', '0.10', '0.10', '0.00', '010', '北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼', '13333333333', '吕女士', '2023-09-23 22:00:00', '116.34395', '40.06115', '2023-09-23 16:18:20', '2023-09-26 10:51:16', '0', '1705496806844014592', '1705496806844014593', null, null, 'WECHAT_PAY', '1', '1695477600043', null, '2023-09-23 08:19:08', '2023-09-26 02:52:08');
INSERT INTO `orders_0` VALUES ('2309250000000000044', '1701074772546342912', '1678649931106705409', '保洁清', '1685894105234755585', '日常保洁', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png', '1', '1693815624114970626', '100', '4', null, '0.10', '1', '0.10', '0.10', '0.00', '010', '北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼', '13333333333', '吕女士', '2023-09-25 14:30:00', '116.34395', '40.06115', '2023-09-25 11:31:55', null, '0', '1706149501712064512', '1706149501712064513', null, null, 'WECHAT_PAY', '1', '1695623400044', null, '2023-09-25 03:32:43', '2023-09-25 03:32:46');
INSERT INTO `orders_0` VALUES ('2309250000000000051', '1701074772546342912', '1678649931106705409', '保洁清', '1685894105234755585', '日常保洁', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png', '1', '1693815624114970626', '100', '4', null, '0.10', '1', '0.10', '0.10', '0.00', '010', '北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼', '13333333333', '吕女士', '2023-09-25 16:00:00', '116.34395', '40.06115', '2023-09-25 13:51:50', null, '0', '1706184714655645696', '1706184714659840000', null, null, 'WECHAT_PAY', '1', '1695628800051', null, '2023-09-25 05:52:41', '2023-09-25 05:52:41');
INSERT INTO `orders_0` VALUES ('2309250000000000056', '1701074772546342912', '1678649931106705409', '保洁清', '1685894105234755585', '日常保洁', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png', '1', '1693815624114970626', '100', '4', null, '0.10', '1', '0.10', '0.10', '0.00', '010', '北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼', '13333333333', '吕女士', '2023-09-25 16:30:00', '116.34395', '40.06115', '2023-09-25 14:13:11', null, '0', '1706190087257079808', '1706190087257079809', null, null, 'WECHAT_PAY', '1', '1695630600056', null, '2023-09-25 06:14:02', '2023-09-25 06:14:02');
INSERT INTO `orders_0` VALUES ('2309250000000000057', '1701074772546342912', '1678649931106705409', '保洁清', '1685894105234755585', '日常保洁', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png', '1', '1693815624114970626', '700', '4', '1', '0.10', '1', '0.10', '0.10', '0.00', '010', '北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼', '13333333333', '吕女士', '2023-09-25 17:00:00', '116.34395', '40.06115', '2023-09-25 14:13:48', null, '0', '1706190243985637376', '1706190243985637377', null, null, 'WECHAT_PAY', '1', '1695632400057', null, '2023-09-25 06:14:39', '2023-09-26 05:38:06');
INSERT INTO `orders_0` VALUES ('2309250000000000060', '1701074772546342912', '1678649931106705409', '保洁清', '1685894105234755585', '日常保洁', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png', '1', '1693815624114970626', '700', '4', '1', '0.10', '1', '0.10', '0.10', '0.00', '010', '北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼', '13333333333', '吕女士', '2023-09-25 17:00:00', '116.34395', '40.06115', '2023-09-25 14:33:29', null, '0', '1706195196561096704', '1706195196565291008', null, null, 'WECHAT_PAY', '1', '1695632400060', null, '2023-09-25 06:34:18', '2023-09-26 05:37:52');
INSERT INTO `orders_0` VALUES ('2309260000000000061', '1701074772546342912', '1678649931106705409', '保洁清', '1685894105234755585', '日常保洁', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png', '1', '1693815624114970626', '400', '4', null, '1.00', '1', '1.00', '1.00', '0.00', '010', '北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼', '13333333333', '吕女士', '2023-09-26 21:00:00', '116.34395', '40.06115', '2023-09-26 14:21:16', null, '0', '1706554508819165184', '1706554508819165185', null, null, 'WECHAT_PAY', '1', '1695733200061', null, '2023-09-26 06:22:08', '2023-09-26 06:59:26');
INSERT INTO `orders_0` VALUES ('2309260000000000062', '1701074772546342912', '1678649931106705409', '保洁清', '1685894105234755585', '日常保洁', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png', '1', '1693815624114970626', '700', '4', '1', '1.00', '1', '1.00', '0.50', '0.50', '010', '北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼', '13333333333', '吕女士', '2023-09-27 08:00:00', '116.34395', '40.06115', '2023-09-26 15:34:41', null, '0', '1706572987479666688', '1706572987479666689', null, null, 'WECHAT_PAY', '1', '1695772800062', null, '2023-09-26 07:35:33', '2023-09-26 07:35:59');
INSERT INTO `orders_0` VALUES ('2309260000000000063', '1701074772546342912', '1678649931106705409', '保洁清', '1685894105234755585', '日常保洁', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png', '1', '1693815624114970626', '700', '4', '1', '1.00', '1', '1.00', '0.80', '0.20', '010', '北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼', '13333333333', '吕女士', '2023-09-27 09:00:00', '116.34395', '40.06115', '2023-09-26 15:44:02', null, '0', '1706575339779567616', '1706575339779567617', null, null, 'WECHAT_PAY', '1', '1695776400063', null, '2023-09-26 07:44:54', '2023-09-26 07:46:12');
INSERT INTO `orders_0` VALUES ('2309260000000000064', '1701074772546342912', '1678649931106705409', '保洁清', '1685894105234755585', '日常保洁', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png', '1', '1693815624114970626', '400', '4', null, '1.00', '1', '1.00', '0.80', '0.20', '010', '北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼', '13333333333', '吕女士', '2023-09-27 11:00:00', '116.34395', '40.06115', '2023-09-26 15:45:40', null, '0', '1706575748275417088', '1706575748275417089', null, null, 'WECHAT_PAY', '1', '1695783600064', null, '2023-09-26 07:46:31', '2023-09-26 07:49:33');
INSERT INTO `orders_0` VALUES ('2310170000000000001', '1701074772546342912', '1678649931106705409', '保洁清', '1685894105234755585', '日常保洁', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png', '1', '1693815624114970626', '500', '4', null, '1.00', '1', '1.00', '1.00', '0.00', '010', '北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼', '13333333333', '吕女士', '2023-10-17 23:00:00', '116.34395', '40.06115', '2023-10-17 17:57:24', null, '0', '1714219044707540992', '1714219044707540993', null, null, 'WECHAT_PAY', '1', '1697554800001', null, '2023-10-17 09:58:11', '2023-11-20 16:30:38');
INSERT INTO `orders_0` VALUES ('2310170000000000002', '1701074772546342912', '1678649931106705409', '保洁清', '1685894105234755585', '日常保洁', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png', '1', '1693815624114970626', '400', '4', null, '1.00', '1', '1.00', '1.00', '0.00', '010', '北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼', '13333333333', '吕女士', '2023-10-18 14:30:00', '116.34395', '40.06115', '2023-10-17 20:27:20', null, '0', '1714256780327952384', '1714256780327952385', null, null, 'WECHAT_PAY', '1', '1697610600002', null, '2023-10-17 12:28:12', '2023-10-17 12:49:16');
INSERT INTO `orders_0` VALUES ('2310170000000000003', '1701074772546342912', '1678649931106705409', '保洁清', '1685894105234755585', '日常保洁', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png', '1', '1693815624114970626', '500', '4', null, '1.00', '1', '1.00', '1.00', '0.00', '010', '北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼', '13333333333', '吕女士', '2023-10-17 22:30:00', '116.34395', '40.06115', '2023-10-17 20:57:11', null, '0', '1714264289482678272', '1714264289482678273', null, null, 'WECHAT_PAY', '1', '1697553000003', null, '2023-10-17 12:58:02', '2023-11-20 16:49:01');

-- ----------------------------
-- Table structure for orders_1
-- ----------------------------
DROP TABLE IF EXISTS `orders_1`;
CREATE TABLE `orders_1` (
  `id` bigint NOT NULL COMMENT '订单id',
  `user_id` bigint NOT NULL COMMENT '订单所属人',
  `serve_type_id` bigint DEFAULT NULL COMMENT '服务类型id',
  `serve_type_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '服务类型名称',
  `serve_item_id` bigint NOT NULL COMMENT '服务项id',
  `serve_item_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '服务项名称',
  `serve_item_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '服务项图片',
  `unit` int DEFAULT NULL COMMENT '服务单位',
  `serve_id` bigint NOT NULL COMMENT '服务id',
  `orders_status` int NOT NULL COMMENT '订单状态，0：待支付，100：派单中，200：待服务，300：服务中，400：待评价，500：订单完成，600：已取消，700：已关闭',
  `pay_status` int DEFAULT NULL COMMENT '支付状态，2：待支付，4：支付成功',
  `refund_status` int DEFAULT NULL COMMENT '退款状态 1退款中 2退款成功 3退款失败',
  `price` decimal(10,2) NOT NULL COMMENT '单价',
  `pur_num` int NOT NULL DEFAULT '1' COMMENT '购买数量',
  `total_amount` decimal(10,2) NOT NULL COMMENT '订单总金额',
  `real_pay_amount` decimal(10,2) NOT NULL COMMENT '实际支付金额',
  `discount_amount` decimal(10,2) NOT NULL COMMENT '优惠金额',
  `city_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '城市编码',
  `serve_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '服务详细地址',
  `contacts_phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '联系人手机号',
  `contacts_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '联系人姓名',
  `serve_start_time` datetime NOT NULL COMMENT '服务开始时间',
  `lon` double(10,5) DEFAULT NULL COMMENT '经度',
  `lat` double(10,5) DEFAULT NULL COMMENT '纬度',
  `pay_time` datetime DEFAULT NULL COMMENT '支付时间',
  `evaluation_time` datetime DEFAULT NULL COMMENT '评价时间',
  `evaluation_status` int NOT NULL DEFAULT '0' COMMENT '评价状态 0:未评价  1:已评价',
  `trading_order_no` bigint DEFAULT NULL COMMENT '支付服务交易单号',
  `transaction_id` varchar(50) DEFAULT NULL COMMENT '第三方支付的交易号',
  `refund_no` bigint DEFAULT NULL COMMENT '支付服务退款单号',
  `refund_id` varchar(50) DEFAULT NULL COMMENT '第三方支付的退款单号',
  `trading_channel` varchar(50) DEFAULT NULL COMMENT '支付渠道',
  `display` int DEFAULT '1' COMMENT '用户端是否展示，1：展示，0：隐藏',
  `sort_by` bigint DEFAULT NULL COMMENT '排序字段，serve_start_time秒级时间戳+订单id后六位',
  `real_serve_end_time` datetime DEFAULT NULL COMMENT '实际服务完成时间',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `query_index_0` (`orders_status`,`user_id`,`display`,`sort_by` DESC),
  KEY `query_index_1` (`user_id`,`display`,`sort_by` DESC)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='订单表';

-- ----------------------------
-- Records of orders_1
-- ----------------------------

-- ----------------------------
-- Table structure for orders_2
-- ----------------------------
DROP TABLE IF EXISTS `orders_2`;
CREATE TABLE `orders_2` (
  `id` bigint NOT NULL COMMENT '订单id',
  `user_id` bigint NOT NULL COMMENT '订单所属人',
  `serve_type_id` bigint DEFAULT NULL COMMENT '服务类型id',
  `serve_type_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '服务类型名称',
  `serve_item_id` bigint NOT NULL COMMENT '服务项id',
  `serve_item_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '服务项名称',
  `serve_item_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '服务项图片',
  `unit` int DEFAULT NULL COMMENT '服务单位',
  `serve_id` bigint NOT NULL COMMENT '服务id',
  `orders_status` int NOT NULL COMMENT '订单状态，0：待支付，100：派单中，200：待服务，300：服务中，400：待评价，500：订单完成，600：已取消，700：已关闭',
  `pay_status` int DEFAULT NULL COMMENT '支付状态，2：待支付，4：支付成功',
  `refund_status` int DEFAULT NULL COMMENT '退款状态 1退款中 2退款成功 3退款失败',
  `price` decimal(10,2) NOT NULL COMMENT '单价',
  `pur_num` int NOT NULL DEFAULT '1' COMMENT '购买数量',
  `total_amount` decimal(10,2) NOT NULL COMMENT '订单总金额',
  `real_pay_amount` decimal(10,2) NOT NULL COMMENT '实际支付金额',
  `discount_amount` decimal(10,2) NOT NULL COMMENT '优惠金额',
  `city_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '城市编码',
  `serve_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '服务详细地址',
  `contacts_phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '联系人手机号',
  `contacts_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '联系人姓名',
  `serve_start_time` datetime NOT NULL COMMENT '服务开始时间',
  `lon` double(10,5) DEFAULT NULL COMMENT '经度',
  `lat` double(10,5) DEFAULT NULL COMMENT '纬度',
  `pay_time` datetime DEFAULT NULL COMMENT '支付时间',
  `evaluation_time` datetime DEFAULT NULL COMMENT '评价时间',
  `evaluation_status` int NOT NULL DEFAULT '0' COMMENT '评价状态 0:未评价  1:已评价',
  `trading_order_no` bigint DEFAULT NULL COMMENT '支付服务交易单号',
  `transaction_id` varchar(50) DEFAULT NULL COMMENT '第三方支付的交易号',
  `refund_no` bigint DEFAULT NULL COMMENT '支付服务退款单号',
  `refund_id` varchar(50) DEFAULT NULL COMMENT '第三方支付的退款单号',
  `trading_channel` varchar(50) DEFAULT NULL COMMENT '支付渠道',
  `display` int DEFAULT '1' COMMENT '用户端是否展示，1：展示，0：隐藏',
  `sort_by` bigint DEFAULT NULL COMMENT '排序字段，serve_start_time秒级时间戳+订单id后六位',
  `real_serve_end_time` datetime DEFAULT NULL COMMENT '实际服务完成时间',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `query_index_0` (`orders_status`,`user_id`,`display`,`sort_by` DESC),
  KEY `query_index_1` (`user_id`,`display`,`sort_by` DESC)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='订单表';

-- ----------------------------
-- Records of orders_2
-- ----------------------------

-- ----------------------------
-- Table structure for orders_canceled
-- ----------------------------
DROP TABLE IF EXISTS `orders_canceled`;
CREATE TABLE `orders_canceled` (
  `id` bigint NOT NULL COMMENT '订单id',
  `canceller_id` bigint DEFAULT NULL COMMENT '取消人',
  `canceler_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '取消人名称',
  `canceller_type` int DEFAULT NULL COMMENT '取消人类型，1：普通用户，4：运营人员',
  `cancel_reason` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '取消原因',
  `cancel_time` datetime DEFAULT NULL COMMENT '取消时间',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='订单取消表';

-- ----------------------------
-- Records of orders_canceled
-- ----------------------------
INSERT INTO `orders_canceled` VALUES ('2309180000000000018', '1701074772546342912', '微信用户', '1', '问题已解决，不需要了', '2023-09-20 16:33:51', '2023-09-20 08:34:42', '2023-09-20 08:34:42');
INSERT INTO `orders_canceled` VALUES ('2309190000000000032', '1701074772546342912', '微信用户', '1', '问题已解决，不需要了', '2023-09-20 16:21:51', '2023-09-20 08:22:43', '2023-09-20 08:22:43');
INSERT INTO `orders_canceled` VALUES ('2309210000000000036', '1674350264389750786', '萧炎', '4', '测试取消订单', '2023-09-23 17:30:51', '2023-09-23 09:31:43', '2023-09-23 09:31:43');
INSERT INTO `orders_canceled` VALUES ('2309210000000000041', '1674350264389750786', '萧炎', '4', 'aaaaaaaaaaaa', '2023-09-22 11:05:04', '2023-09-22 03:05:56', '2023-09-22 03:05:56');
INSERT INTO `orders_canceled` VALUES ('2309250000000000057', '1701074772546342912', '微信用户', '1', '下单地址有误', '2023-09-26 13:37:14', '2023-09-26 05:38:06', '2023-09-26 05:38:06');
INSERT INTO `orders_canceled` VALUES ('2309250000000000060', '1701074772546342912', '微信用户', '1', '下单地址有误', '2023-09-26 13:37:01', '2023-09-26 05:37:52', '2023-09-26 05:37:52');
INSERT INTO `orders_canceled` VALUES ('2309260000000000062', '1701074772546342912', '微信用户', '1', '问题已解决，不需要了', '2023-09-26 15:35:07', '2023-09-26 07:35:59', '2023-09-26 07:35:59');
INSERT INTO `orders_canceled` VALUES ('2309260000000000063', '1701074772546342912', '微信用户', '1', '下单地址有误', '2023-09-26 15:45:20', '2023-09-26 07:46:12', '2023-09-26 07:46:12');
INSERT INTO `orders_canceled` VALUES ('2310280000000000004', '1716346406098296832', '普通用户72135', '1', '问题已解决，不需要了', '2023-10-28 17:04:06', '2023-10-28 09:04:57', '2023-10-28 09:04:57');
INSERT INTO `orders_canceled` VALUES ('2310280000000000005', '1716346406098296832', '普通用户72135', '1', '问题已解决，不需要了', '2023-10-28 21:52:33', '2023-10-28 13:53:25', '2023-10-28 13:53:25');
INSERT INTO `orders_canceled` VALUES ('2311020000000000021', '1716346406098296832', '普通用户72135', '1', '下单地址有误', '2023-11-02 17:26:31', '2023-11-02 17:27:25', '2023-11-02 17:27:25');
INSERT INTO `orders_canceled` VALUES ('2311020000000000022', '1716346406098296832', '普通用户72135', '1', '下单地址有误', '2023-11-02 17:34:50', '2023-11-02 17:35:44', '2023-11-02 17:35:44');
INSERT INTO `orders_canceled` VALUES ('2311020000000000023', '1716346406098296832', '普通用户72135', '1', '下单地址有误', '2023-11-02 18:23:22', '2023-11-02 18:24:16', '2023-11-02 18:24:16');
INSERT INTO `orders_canceled` VALUES ('2311020000000000024', '1716346406098296832', '普通用户72135', '1', '下单时间错误', '2023-11-02 18:53:35', '2023-11-02 18:54:30', '2023-11-02 18:54:30');
INSERT INTO `orders_canceled` VALUES ('2311020000000000025', '1716346406098296832', '普通用户72135', '1', '下单地址有误', '2023-11-02 18:59:52', '2023-11-02 19:00:47', '2023-11-02 19:00:47');
INSERT INTO `orders_canceled` VALUES ('2311020000000000026', '1716346406098296832', '普通用户72135', '1', '下单地址有误', '2023-11-02 19:05:28', '2023-11-02 19:06:23', '2023-11-02 19:06:23');
INSERT INTO `orders_canceled` VALUES ('2311020000000000027', '1716346406098296832', '普通用户72135', '1', '下单时间错误', '2023-11-02 19:08:14', '2023-11-02 19:09:08', '2023-11-02 19:09:08');
INSERT INTO `orders_canceled` VALUES ('2311020000000000028', null, null, '0', '订单超时支付，自动取消', '2023-11-03 19:04:06', '2023-11-03 19:04:57', '2023-11-03 19:04:57');
INSERT INTO `orders_canceled` VALUES ('2311030000000000029', '1716346406098296832', '普通用户72135', '1', '下单地址有误', '2023-11-03 14:27:00', '2023-11-03 14:27:51', '2023-11-03 14:27:51');
INSERT INTO `orders_canceled` VALUES ('2311030000000000030', null, null, '0', '订单超时支付，自动取消', '2023-11-03 19:10:23', '2023-11-03 19:11:14', '2023-11-03 19:11:14');
INSERT INTO `orders_canceled` VALUES ('2311030000000000031', null, null, '0', '订单超时支付，自动取消', '2023-11-03 19:22:41', '2023-11-03 19:23:33', '2023-11-03 19:23:33');
INSERT INTO `orders_canceled` VALUES ('2311090000000000037', '1716346406098296832', '普通用户72135', '1', '下单地址有误', '2023-11-09 21:43:40', '2023-11-09 21:44:33', '2023-11-09 21:44:33');
INSERT INTO `orders_canceled` VALUES ('2311150000000000037', '1716346406098296832', '普通用户72135', '1', '下单地址有误', '2023-11-15 15:08:16', '2023-11-15 15:08:15', '2023-11-15 15:08:15');

-- ----------------------------
-- Table structure for orders_dispatch
-- ----------------------------
DROP TABLE IF EXISTS `orders_dispatch`;
CREATE TABLE `orders_dispatch` (
  `id` bigint NOT NULL COMMENT '订单id',
  `orders_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '订单id',
  `city_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '城市编码',
  `serve_type_id` bigint DEFAULT NULL COMMENT '服务分类id',
  `serve_item_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '服务名称',
  `serve_type_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '服务分类名称',
  `serve_item_id` bigint DEFAULT NULL COMMENT '服务项id',
  `serve_address` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '服务地址',
  `serve_item_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '服务项目图片',
  `orders_amount` decimal(10,2) DEFAULT NULL COMMENT '订单金额',
  `serve_start_time` datetime NOT NULL COMMENT '服务开始时间',
  `lon` double(10,5) DEFAULT NULL COMMENT '经度',
  `lat` double(10,5) DEFAULT NULL COMMENT '纬度',
  `pur_num` int NOT NULL COMMENT '服务数量',
  `is_transfer_manual` int DEFAULT '0' COMMENT '是否转人工',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='派单池';

-- ----------------------------
-- Records of orders_dispatch
-- ----------------------------

-- ----------------------------
-- Table structure for orders_refund
-- ----------------------------
DROP TABLE IF EXISTS `orders_refund`;
CREATE TABLE `orders_refund` (
  `id` bigint NOT NULL COMMENT '订单id',
  `trading_order_no` bigint DEFAULT NULL COMMENT '支付服务交易单号',
  `real_pay_amount` decimal(10,2) DEFAULT NULL COMMENT '实付金额',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='订单退款表';

-- ----------------------------
-- Records of orders_refund
-- ----------------------------
INSERT INTO `orders_refund` VALUES ('2311150000000000037', '1724683868990189568', '1.00', '2023-11-15 15:08:15');

-- ----------------------------
-- Table structure for orders_seize
-- ----------------------------
DROP TABLE IF EXISTS `orders_seize`;
CREATE TABLE `orders_seize` (
  `id` bigint NOT NULL COMMENT '订单id',
  `city_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '城市编码',
  `serve_type_id` bigint DEFAULT NULL COMMENT '服务分类id',
  `serve_item_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '服务名称',
  `serve_type_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '服务分类名称',
  `serve_item_id` bigint DEFAULT NULL COMMENT '服务项id',
  `serve_address` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '服务地址',
  `serve_item_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '服务项目图片',
  `orders_amount` decimal(10,2) DEFAULT NULL COMMENT '订单总金额',
  `serve_start_time` datetime NOT NULL COMMENT '服务开始时间',
  `pay_success_time` datetime DEFAULT NULL COMMENT '订单支付成功时间，用于计算是否进入派单',
  `lon` double(10,5) DEFAULT NULL COMMENT '经度',
  `lat` double(10,5) DEFAULT NULL COMMENT '纬度',
  `pur_num` int NOT NULL COMMENT '服务数量',
  `is_time_out` int DEFAULT '0' COMMENT '抢单是否超时',
  `sort_by` bigint DEFAULT NULL COMMENT '抢单列表排序字段',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `sort_by_index` (`sort_by`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='抢单池';

-- ----------------------------
-- Records of orders_seize
-- ----------------------------
INSERT INTO `orders_seize` VALUES ('2311230000000000041', '010', '1678654490336124929', '空调维修', '日常维修', '1685850705647194113', '北京市北京市昌平区北京市昌平区城北街道北京市昌平区政府信息公开办公室北京市昌平区人民政府', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/71460cfd-0f49-467f-923d-1f9a02912b81.png', '17.00', '2023-11-23 18:00:00', null, '116.23189', '40.22100', '1', '0', '1700733600041', '2023-11-23 12:08:34', '2023-11-23 12:08:34');

-- ----------------------------
-- Table structure for orders_serve
-- ----------------------------
DROP TABLE IF EXISTS `orders_serve`;
CREATE TABLE `orders_serve` (
  `id` bigint NOT NULL COMMENT '任务id',
  `user_id` bigint DEFAULT NULL COMMENT '属于哪个用户',
  `serve_provider_id` bigint NOT NULL COMMENT '服务人员或服务机构id',
  `serve_provider_type` int DEFAULT NULL COMMENT '服务者类型，2：服务端服务，3：机构端服务',
  `institution_staff_id` bigint DEFAULT NULL COMMENT '机构服务人员id',
  `orders_id` bigint NOT NULL COMMENT '订单id',
  `orders_origin_type` int NOT NULL COMMENT '订单来源类型，1：抢单，2：派单',
  `city_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '城市编码',
  `serve_type_id` bigint NOT NULL COMMENT '服务分类id',
  `serve_start_time` datetime DEFAULT NULL COMMENT '预约时间',
  `serve_item_id` bigint NOT NULL COMMENT '服务项id',
  `serve_status` int NOT NULL COMMENT '任务状态',
  `settlement_status` int NOT NULL DEFAULT '0' COMMENT '结算状态，0：不可结算，1：待结算，2：结算完成',
  `real_serve_start_time` datetime DEFAULT NULL COMMENT '实际服务开始时间',
  `real_serve_end_time` datetime DEFAULT NULL COMMENT '实际服务完结时间',
  `serve_before_imgs` json DEFAULT NULL COMMENT '服务前照片',
  `serve_after_imgs` json DEFAULT NULL COMMENT '服务后照片',
  `serve_item_img` varchar(255) DEFAULT NULL,
  `serve_before_illustrate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '服务前说明',
  `serve_after_illustrate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '服务后说明',
  `cancel_time` datetime DEFAULT NULL COMMENT '取消时间,可以是退单，可以是取消时间',
  `orders_amount` decimal(10,2) DEFAULT NULL COMMENT '订单金额',
  `pur_num` int DEFAULT NULL COMMENT '购买数量',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `sort_by` bigint DEFAULT NULL COMMENT '排序字段（serve_start_time（秒级时间戳）+订单id（后6位））',
  `display` int DEFAULT '1' COMMENT '服务端/机构端是否展示，1：展示，0：隐藏',
  `update_by` bigint DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='服务单表';

-- ----------------------------
-- Records of orders_serve
-- ----------------------------

-- ----------------------------
-- Table structure for orders_serve_0
-- ----------------------------
DROP TABLE IF EXISTS `orders_serve_0`;
CREATE TABLE `orders_serve_0` (
  `id` bigint NOT NULL COMMENT '任务id',
  `user_id` bigint DEFAULT NULL COMMENT '属于哪个用户',
  `serve_provider_id` bigint NOT NULL COMMENT '服务人员或服务机构id',
  `serve_provider_type` int DEFAULT NULL COMMENT '服务者类型，2：服务端服务，3：机构端服务',
  `institution_staff_id` bigint DEFAULT NULL COMMENT '机构服务人员id',
  `orders_id` bigint DEFAULT NULL COMMENT '订单id',
  `orders_origin_type` int NOT NULL COMMENT '订单来源类型，1：抢单，2：派单',
  `city_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '城市编码',
  `serve_type_id` bigint NOT NULL COMMENT '服务分类id',
  `serve_start_time` datetime DEFAULT NULL COMMENT '预约时间',
  `serve_item_id` bigint NOT NULL COMMENT '服务项id',
  `serve_status` int NOT NULL COMMENT '任务状态',
  `settlement_status` int NOT NULL DEFAULT '0' COMMENT '结算状态，0：不可结算，1：待结算，2：结算完成',
  `real_serve_start_time` datetime DEFAULT NULL COMMENT '实际服务开始时间',
  `real_serve_end_time` datetime DEFAULT NULL COMMENT '实际服务完结时间',
  `serve_before_imgs` json DEFAULT NULL COMMENT '服务前照片',
  `serve_after_imgs` json DEFAULT NULL COMMENT '服务后照片',
  `serve_item_img` varchar(255) DEFAULT NULL,
  `serve_before_illustrate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '服务前说明',
  `serve_after_illustrate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '服务后说明',
  `cancel_time` datetime DEFAULT NULL COMMENT '取消时间,可以是退单，可以是取消时间',
  `orders_amount` decimal(10,2) DEFAULT NULL COMMENT '订单金额',
  `pur_num` int DEFAULT NULL COMMENT '购买数量',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `sort_by` bigint DEFAULT NULL COMMENT '排序字段（serve_start_time（秒级时间戳）+订单id（后6位））',
  `display` int DEFAULT '1' COMMENT '服务端/机构端是否展示，1：展示，0：隐藏',
  `update_by` bigint DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='服务任务';

-- ----------------------------
-- Records of orders_serve_0
-- ----------------------------
INSERT INTO `orders_serve_0` VALUES ('2309210000000000037', null, '1696338624494202882', '2', null, null, '1', '010', '1678649931106705409', '2023-09-21 22:00:00', '1685894105234755585', '3', '0', '2023-09-21 17:38:41', '2023-09-21 17:39:01', '[]', '[]', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png', '非常不错', 'FDFDS', null, '0.10', '1', '2023-09-21 08:58:15', '2023-09-21 09:39:52', '1695304800037', '1', null);
INSERT INTO `orders_serve_0` VALUES ('2309210000000000039', null, '1696338624494202882', '2', null, null, '2', '010', '1678649931106705409', '2023-09-21 23:30:00', '1685894105234755585', '3', '0', '2023-09-21 17:57:54', '2023-09-21 21:02:26', '[]', '[\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/9252302f-f3b5-498e-af48-c906f80e8e30.png\"]', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png', '霏霏', 'ffff', null, '0.10', '1', '2023-09-21 09:49:32', '2023-09-21 13:03:18', '1695310200039', '1', null);
INSERT INTO `orders_serve_0` VALUES ('2309210000000000041', null, '1696338624494202882', '2', null, null, '2', '010', '1678649931106705409', '2023-09-21 23:30:00', '1685894105234755585', '4', '0', null, null, null, null, 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png', null, null, null, '0.10', '1', '2023-09-21 09:57:53', '2023-09-22 03:05:56', '1695310200041', '1', null);
INSERT INTO `orders_serve_0` VALUES ('2309210000000000042', null, '1696338624494202882', '2', null, null, '1', '010', '1678649931106705409', '2023-09-22 06:30:00', '1685894105234755585', '3', '0', '2023-09-21 22:24:48', '2023-09-22 10:28:11', '[]', '[\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/f8bb5160-b79e-4f4b-b0f3-3af515f0e026.png\"]', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png', 'fds', 'aaaaaa', null, '0.10', '1', '2023-09-21 14:24:42', '2023-09-22 02:29:04', '1695335400042', '1', null);
INSERT INTO `orders_serve_0` VALUES ('2309230000000000043', null, '1696338624494202882', '2', null, null, '1', '010', '1678649931106705409', '2023-09-23 22:00:00', '1685894105234755585', '3', '0', '2023-09-23 16:31:23', '2023-09-23 16:31:40', '[\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/c9641658-6d1f-418b-90d0-7913361cd7b3.jpg\"]', '[\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/8c46569e-e150-46fc-833d-cfb45d4ed501.jpg\"]', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png', '完成的非常不错', '完成的非常不错11111', null, '0.10', '1', '2023-09-23 08:19:13', '2023-09-23 08:32:31', '1695477600043', '1', null);
INSERT INTO `orders_serve_0` VALUES ('2309260000000000061', null, '1696338624494202882', '2', null, null, '1', '010', '1678649931106705409', '2023-09-26 21:00:00', '1685894105234755585', '3', '0', '2023-09-26 14:58:27', '2023-09-26 14:58:35', '[\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/237f3050-b85f-4aa5-a599-f82f28295975.png\"]', '[\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/80816ecc-aa24-477f-b899-3a62bc310748.jpg\"]', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png', '', '', null, '1.00', '1', '2023-09-26 06:55:59', '2023-09-26 06:59:26', '1695733200061', '1', null);
INSERT INTO `orders_serve_0` VALUES ('2309260000000000064', null, '1696338624494202882', '2', null, null, '1', '010', '1678649931106705409', '2023-09-27 11:00:00', '1685894105234755585', '3', '0', '2023-09-26 15:48:32', '2023-09-26 15:48:41', '[\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/71f9d0e6-f3a9-4142-b5b0-9e3f6921a627.jpg\"]', '[\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/00701d65-78de-49a0-a10f-a2bc4348bed9.jpg\"]', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png', '', '', null, '0.80', '1', '2023-09-26 07:46:32', '2023-09-26 07:49:33', '1695783600064', '1', null);
INSERT INTO `orders_serve_0` VALUES ('2310170000000000001', null, '1696338624494202882', '2', null, null, '2', '010', '1678649931106705409', '2023-10-17 23:00:00', '1685894105234755585', '3', '0', '2023-11-19 21:12:46', '2023-11-20 16:29:46', '[\"https://jzo2o-oss.oss-cn-hangzhou.aliyuncs.com/b9498f65-7621-4d4d-9edf-0fa93cebffe6.png\"]', '[\"https://jzo2o-oss.oss-cn-hangzhou.aliyuncs.com/3ee3a2cb-0bb9-40ec-bbb3-d94f0b5172db.jpg\"]', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png', '已按照客户要求完成服务', '', null, '1.00', '1', '2023-10-17 13:01:10', '2023-11-20 16:30:38', '1697554800001', '1', null);
INSERT INTO `orders_serve_0` VALUES ('2310170000000000002', null, '1696338624494202882', '2', null, null, '1', '010', '1678649931106705409', '2023-10-18 14:30:00', '1685894105234755585', '3', '0', '2023-10-17 20:48:13', '2023-10-17 20:48:25', '[\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/70f05490-d70e-4113-b908-b3abba7106f5.png\"]', '[\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/45f14807-587e-4fae-a806-e0d116f5cc3e.png\"]', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png', '', '', null, '1.00', '1', '2023-10-17 12:48:00', '2023-10-17 12:49:16', '1697610600002', '1', null);
INSERT INTO `orders_serve_0` VALUES ('2310170000000000003', null, '1696338624494202882', '2', null, null, '2', '010', '1678649931106705409', '2023-10-17 22:30:00', '1685894105234755585', '3', '0', '2023-11-20 16:48:03', '2023-11-20 16:48:10', '[\"https://jzo2o-oss.oss-cn-hangzhou.aliyuncs.com/0ffaa79b-1063-495f-9252-34093b5f2d42.png\"]', '[\"https://jzo2o-oss.oss-cn-hangzhou.aliyuncs.com/03f8be26-3da3-49d2-aa0e-fcdd461f4fe0.png\"]', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png', '', '', null, '1.00', '1', '2023-10-17 12:58:10', '2023-11-20 16:49:01', '1697553000003', '1', null);
INSERT INTO `orders_serve_0` VALUES ('2311230000000000040', null, '1696338624494202882', '2', null, null, '1', '010', '1678649931106705409', '2023-11-23 17:00:00', '1685894105234755585', '3', '0', '2024-08-19 14:28:20', '2024-08-19 14:44:27', '[\"https://itxinfei-yljz.oss-cn-beijing.aliyuncs.com/a067ce70-ea91-4934-ad9d-222240b8367a.jpg\"]', '[\"https://itxinfei-yljz.oss-cn-beijing.aliyuncs.com/24be9fe6-49a7-4a12-ba6e-195294e40f46.jpg\"]', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png', '', '', null, '1.00', '1', '2024-08-19 13:39:30', '2024-08-19 14:45:18', '1700730000040', '1', null);
INSERT INTO `orders_serve_0` VALUES ('2311240000000000042', null, '1696338624494202882', '2', null, null, '2', '010', '1678649931106705409', '2023-11-24 17:00:00', '1685894105234755585', '1', '0', null, null, null, null, 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png', null, null, null, '1.00', '1', '2023-11-24 15:58:40', '2023-11-24 15:58:40', '1700816400042', '1', null);

-- ----------------------------
-- Table structure for orders_serve_1
-- ----------------------------
DROP TABLE IF EXISTS `orders_serve_1`;
CREATE TABLE `orders_serve_1` (
  `id` bigint NOT NULL COMMENT '任务id',
  `user_id` bigint DEFAULT NULL COMMENT '属于哪个用户',
  `serve_provider_id` bigint NOT NULL COMMENT '服务人员或服务机构id',
  `serve_provider_type` int DEFAULT NULL COMMENT '服务者类型，2：服务端服务，3：机构端服务',
  `institution_staff_id` bigint DEFAULT NULL COMMENT '机构服务人员id',
  `orders_id` bigint DEFAULT NULL COMMENT '订单id',
  `orders_origin_type` int NOT NULL COMMENT '订单来源类型，1：抢单，2：派单',
  `city_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '城市编码',
  `serve_type_id` bigint NOT NULL COMMENT '服务分类id',
  `serve_start_time` datetime DEFAULT NULL COMMENT '预约时间',
  `serve_item_id` bigint NOT NULL COMMENT '服务项id',
  `serve_status` int NOT NULL COMMENT '任务状态',
  `settlement_status` int NOT NULL DEFAULT '0' COMMENT '结算状态，0：不可结算，1：待结算，2：结算完成',
  `real_serve_start_time` datetime DEFAULT NULL COMMENT '实际服务开始时间',
  `real_serve_end_time` datetime DEFAULT NULL COMMENT '实际服务完结时间',
  `serve_before_imgs` json DEFAULT NULL COMMENT '服务前照片',
  `serve_after_imgs` json DEFAULT NULL COMMENT '服务后照片',
  `serve_item_img` varchar(255) DEFAULT NULL,
  `serve_before_illustrate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '服务前说明',
  `serve_after_illustrate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '服务后说明',
  `cancel_time` datetime DEFAULT NULL COMMENT '取消时间,可以是退单，可以是取消时间',
  `orders_amount` decimal(10,2) DEFAULT NULL COMMENT '订单金额',
  `pur_num` int DEFAULT NULL COMMENT '购买数量',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `sort_by` bigint DEFAULT NULL COMMENT '排序字段（serve_start_time（秒级时间戳）+订单id（后6位））',
  `display` int DEFAULT '1' COMMENT '服务端/机构端是否展示，1：展示，0：隐藏',
  `update_by` bigint DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='服务任务';

-- ----------------------------
-- Records of orders_serve_1
-- ----------------------------

-- ----------------------------
-- Table structure for orders_serve_2
-- ----------------------------
DROP TABLE IF EXISTS `orders_serve_2`;
CREATE TABLE `orders_serve_2` (
  `id` bigint NOT NULL COMMENT '任务id',
  `user_id` bigint DEFAULT NULL COMMENT '属于哪个用户',
  `serve_provider_id` bigint NOT NULL COMMENT '服务人员或服务机构id',
  `serve_provider_type` int DEFAULT NULL COMMENT '服务者类型，2：服务端服务，3：机构端服务',
  `institution_staff_id` bigint DEFAULT NULL COMMENT '机构服务人员id',
  `orders_id` bigint DEFAULT NULL COMMENT '订单id',
  `orders_origin_type` int NOT NULL COMMENT '订单来源类型，1：抢单，2：派单',
  `city_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '城市编码',
  `serve_type_id` bigint NOT NULL COMMENT '服务分类id',
  `serve_start_time` datetime DEFAULT NULL COMMENT '预约时间',
  `serve_item_id` bigint NOT NULL COMMENT '服务项id',
  `serve_status` int NOT NULL COMMENT '任务状态',
  `settlement_status` int NOT NULL DEFAULT '0' COMMENT '结算状态，0：不可结算，1：待结算，2：结算完成',
  `real_serve_start_time` datetime DEFAULT NULL COMMENT '实际服务开始时间',
  `real_serve_end_time` datetime DEFAULT NULL COMMENT '实际服务完结时间',
  `serve_before_imgs` json DEFAULT NULL COMMENT '服务前照片',
  `serve_after_imgs` json DEFAULT NULL COMMENT '服务后照片',
  `serve_item_img` varchar(255) DEFAULT NULL,
  `serve_before_illustrate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '服务前说明',
  `serve_after_illustrate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '服务后说明',
  `cancel_time` datetime DEFAULT NULL COMMENT '取消时间,可以是退单，可以是取消时间',
  `orders_amount` decimal(10,2) DEFAULT NULL COMMENT '订单金额',
  `pur_num` int DEFAULT NULL COMMENT '购买数量',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `sort_by` bigint DEFAULT NULL COMMENT '排序字段（serve_start_time（秒级时间戳）+订单id（后6位））',
  `display` int DEFAULT '1' COMMENT '服务端/机构端是否展示，1：展示，0：隐藏',
  `update_by` bigint DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='服务任务';

-- ----------------------------
-- Records of orders_serve_2
-- ----------------------------

-- ----------------------------
-- Table structure for serve_provider_sync
-- ----------------------------
DROP TABLE IF EXISTS `serve_provider_sync`;
CREATE TABLE `serve_provider_sync` (
  `id` bigint NOT NULL,
  `serve_times` json DEFAULT NULL COMMENT '服务时间段',
  `acceptance_num` int DEFAULT NULL COMMENT '接单数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='服务状态表';

-- ----------------------------
-- Records of serve_provider_sync
-- ----------------------------
INSERT INTO `serve_provider_sync` VALUES ('1696338624494202882', '[2023112417]', '1');
INSERT INTO `serve_provider_sync` VALUES ('1696706462195150849', '[]', '2');
INSERT INTO `serve_provider_sync` VALUES ('1716431678555406338', '[2023111520, 2023111521, 2023112418]', '3');

-- ----------------------------
-- Table structure for state_persister
-- ----------------------------
DROP TABLE IF EXISTS `state_persister`;
CREATE TABLE `state_persister` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `state_machine_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '状态机名称',
  `biz_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '业务id',
  `state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '状态',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `唯一索引` (`state_machine_name`,`biz_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1727963430022361091 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='状态机持久化表';

-- ----------------------------
-- Records of state_persister
-- ----------------------------
INSERT INTO `state_persister` VALUES ('1703597113423974402', 'order', '2309180000000000017', 'DISPATCHING', '2023-09-18 02:30:29', '2023-09-18 02:30:32');
INSERT INTO `state_persister` VALUES ('1703614442400677890', 'order', '2309180000000000018', 'CANCELED', '2023-09-18 03:39:21', '2023-09-20 08:34:42');
INSERT INTO `state_persister` VALUES ('1703614852641415169', 'order', '2309180000000000019', 'DISPATCHING', '2023-09-18 03:40:58', '2023-09-18 03:41:01');
INSERT INTO `state_persister` VALUES ('1703717277117251586', 'order', '2309180000000000020', 'DISPATCHING', '2023-09-18 10:27:58', '2023-09-18 10:28:01');
INSERT INTO `state_persister` VALUES ('1704036781277843457', 'order', '2309190000000000021', 'DISPATCHING', '2023-09-19 07:37:34', '2023-09-19 07:37:36');
INSERT INTO `state_persister` VALUES ('1704037259042623490', 'order', '2309190000000000022', 'DISPATCHING', '2023-09-19 07:39:28', '2023-09-19 07:39:28');
INSERT INTO `state_persister` VALUES ('1704037987173797889', 'order', '2309190000000000023', 'DISPATCHING', '2023-09-19 07:42:21', '2023-09-19 07:42:21');
INSERT INTO `state_persister` VALUES ('1704038886696816642', 'order', '2309190000000000024', 'DISPATCHING', '2023-09-19 07:45:56', '2023-09-19 07:45:56');
INSERT INTO `state_persister` VALUES ('1704039201630326785', 'order', '2309190000000000025', 'DISPATCHING', '2023-09-19 07:47:11', '2023-09-19 07:47:11');
INSERT INTO `state_persister` VALUES ('1704039671891574786', 'order', '2309190000000000026', 'DISPATCHING', '2023-09-19 07:49:03', '2023-09-19 07:49:06');
INSERT INTO `state_persister` VALUES ('1704041100601462786', 'order', '2309190000000000027', 'DISPATCHING', '2023-09-19 07:54:44', '2023-09-19 07:54:46');
INSERT INTO `state_persister` VALUES ('1704064867142795265', 'order', '2309190000000000028', 'DISPATCHING', '2023-09-19 09:29:10', '2023-09-19 09:29:30');
INSERT INTO `state_persister` VALUES ('1704065848488341505', 'order', '2309190000000000029', 'DISPATCHING', '2023-09-19 09:33:04', '2023-09-19 09:33:14');
INSERT INTO `state_persister` VALUES ('1704066275527208961', 'order', '2309190000000000030', 'DISPATCHING', '2023-09-19 09:34:46', '2023-09-19 09:34:54');
INSERT INTO `state_persister` VALUES ('1704067124496281601', 'order', '2309190000000000031', 'DISPATCHING', '2023-09-19 09:38:08', '2023-09-19 09:38:55');
INSERT INTO `state_persister` VALUES ('1704069905735024641', 'order', '2309190000000000032', 'CLOSED', '2023-09-19 09:49:11', '2023-09-20 08:22:43');
INSERT INTO `state_persister` VALUES ('1704413690130087937', 'order', '2309200000000000033', 'DISPATCHING', '2023-09-20 08:35:17', '2023-09-20 08:35:17');
INSERT INTO `state_persister` VALUES ('1704764690116395009', 'order', '2309210000000000034', 'NO_SERVE', '2023-09-21 07:50:01', '2023-09-21 08:48:52');
INSERT INTO `state_persister` VALUES ('1704780558942617602', 'order', '2309210000000000035', 'NO_SERVE', '2023-09-21 08:53:05', '2023-09-21 08:53:20');
INSERT INTO `state_persister` VALUES ('1704781563553923073', 'order', '2309210000000000036', 'CLOSED', '2023-09-21 08:57:04', '2023-09-23 09:31:43');
INSERT INTO `state_persister` VALUES ('1704781858841313281', 'order', '2309210000000000037', 'FINISHED', '2023-09-21 08:58:15', '2023-09-23 07:37:19');
INSERT INTO `state_persister` VALUES ('1704794391111397377', 'order', '2309210000000000038', 'DISPATCHING', '2023-09-21 09:48:03', '2023-09-21 10:02:41');
INSERT INTO `state_persister` VALUES ('1704794766241558529', 'order', '2309210000000000039', 'FINISHED', '2023-09-21 09:49:32', '2023-09-22 13:35:50');
INSERT INTO `state_persister` VALUES ('1704796846855385089', 'order', '2309210000000000041', 'CLOSED', '2023-09-21 09:57:48', '2023-09-22 03:05:56');
INSERT INTO `state_persister` VALUES ('1704842734885761026', 'order', '2309210000000000042', 'FINISHED', '2023-09-21 13:00:09', '2023-09-22 13:21:00');
INSERT INTO `state_persister` VALUES ('1705496792029986818', 'order', '2309230000000000043', 'FINISHED', '2023-09-23 08:19:08', '2023-09-26 02:52:08');
INSERT INTO `state_persister` VALUES ('1705852641625882625', 'order', 'test101', 'NO_PAY', '2023-09-24 07:53:12', '2023-09-24 07:53:12');
INSERT INTO `state_persister` VALUES ('1705854124530462721', 'order', '101', 'DISPATCHING', '2023-09-24 07:59:06', '2023-09-24 08:11:41');
INSERT INTO `state_persister` VALUES ('1705863029281112066', 'order', '102', 'DISPATCHING', '2023-09-24 08:34:29', '2023-09-24 08:34:31');
INSERT INTO `state_persister` VALUES ('1706149491759235074', 'order', '2309250000000000044', 'DISPATCHING', '2023-09-25 03:32:43', '2023-09-25 03:32:46');
INSERT INTO `state_persister` VALUES ('1706184714437795841', 'order', '2309250000000000051', 'DISPATCHING', '2023-09-25 05:52:41', '2023-09-25 05:52:41');
INSERT INTO `state_persister` VALUES ('1706190087186030594', 'order', '2309250000000000056', 'DISPATCHING', '2023-09-25 06:14:02', '2023-09-25 06:14:02');
INSERT INTO `state_persister` VALUES ('1706190243935559681', 'order', '2309250000000000057', 'CLOSED', '2023-09-25 06:14:39', '2023-09-26 05:38:06');
INSERT INTO `state_persister` VALUES ('1706195187010920449', 'order', '2309250000000000060', 'CLOSED', '2023-09-25 06:34:18', '2023-09-26 05:37:53');
INSERT INTO `state_persister` VALUES ('1706554508697784321', 'order', '2309260000000000061', 'NO_EVALUATION', '2023-09-26 06:22:08', '2023-09-26 06:59:26');
INSERT INTO `state_persister` VALUES ('1706572987001786370', 'order', '2309260000000000062', 'CLOSED', '2023-09-26 07:35:33', '2023-09-26 07:35:59');
INSERT INTO `state_persister` VALUES ('1706575339490430978', 'order', '2309260000000000063', 'CLOSED', '2023-09-26 07:44:54', '2023-09-26 07:46:12');
INSERT INTO `state_persister` VALUES ('1706575748061777922', 'order', '2309260000000000064', 'NO_EVALUATION', '2023-09-26 07:46:31', '2023-09-26 07:49:33');
INSERT INTO `state_persister` VALUES ('1714219032242339841', 'order', '2310170000000000001', 'FINISHED', '2023-10-17 09:58:12', '2023-11-20 16:30:38');
INSERT INTO `state_persister` VALUES ('1714256780227559426', 'order', '2310170000000000002', 'NO_EVALUATION', '2023-10-17 12:28:12', '2023-10-17 12:49:16');
INSERT INTO `state_persister` VALUES ('1714264289302593537', 'order', '2310170000000000003', 'FINISHED', '2023-10-17 12:58:02', '2023-11-20 16:49:01');
INSERT INTO `state_persister` VALUES ('1718188647226114050', 'order', '2310280000000000004', 'CLOSED', '2023-10-28 08:52:02', '2023-10-28 09:04:57');
INSERT INTO `state_persister` VALUES ('1718264289591660545', 'order', '2310280000000000005', 'CLOSED', '2023-10-28 13:52:37', '2023-10-28 13:53:25');
INSERT INTO `state_persister` VALUES ('1720008721775792129', 'order', '2311020000000000021', 'NO_PAY', '2023-11-02 17:24:24', '2023-11-02 17:24:24');
INSERT INTO `state_persister` VALUES ('1720010008022028290', 'order', '2311020000000000022', 'DISPATCHING', '2023-11-02 17:29:31', '2023-11-02 17:35:30');
INSERT INTO `state_persister` VALUES ('1720023463743475714', 'order', '2311020000000000023', 'DISPATCHING', '2023-11-02 18:22:59', '2023-11-02 18:23:50');
INSERT INTO `state_persister` VALUES ('1720031189290770433', 'order', '2311020000000000024', 'CANCELED', '2023-11-02 18:53:41', '2023-11-02 18:54:30');
INSERT INTO `state_persister` VALUES ('1720032807579144193', 'order', '2311020000000000025', 'CANCELED', '2023-11-02 19:00:07', '2023-11-02 19:00:47');
INSERT INTO `state_persister` VALUES ('1720034297509171201', 'order', '2311020000000000026', 'CANCELED', '2023-11-02 19:06:02', '2023-11-02 19:06:23');
INSERT INTO `state_persister` VALUES ('1720035011849474050', 'order', '2311020000000000027', 'CANCELED', '2023-11-02 19:08:52', '2023-11-02 19:09:08');
INSERT INTO `state_persister` VALUES ('1720062470506532865', 'order', '2311020000000000028', 'CANCELED', '2023-11-02 20:57:59', '2023-11-03 19:04:57');
INSERT INTO `state_persister` VALUES ('1720326073612525570', 'order', '2311030000000000029', 'CANCELED', '2023-11-03 14:25:24', '2023-11-03 14:27:51');
INSERT INTO `state_persister` VALUES ('1720387084545695746', 'order', '2311030000000000030', 'CANCELED', '2023-11-03 18:27:50', '2023-11-03 19:11:14');
INSERT INTO `state_persister` VALUES ('1720400020903329794', 'order', '2311030000000000031', 'CANCELED', '2023-11-03 19:19:15', '2023-11-03 19:23:34');
INSERT INTO `state_persister` VALUES ('1722592772592353282', 'order', '2311090000000000032', 'NO_PAY', '2023-11-09 20:32:29', '2023-11-09 20:32:29');
INSERT INTO `state_persister` VALUES ('1722593486685192193', 'order', '2311090000000000033', 'NO_PAY', '2023-11-09 20:35:19', '2023-11-09 20:35:19');
INSERT INTO `state_persister` VALUES ('1722610262307250178', 'order', '2311090000000000037', 'CANCELED', '2023-11-09 21:41:59', '2023-11-09 21:44:33');
INSERT INTO `state_persister` VALUES ('1724683859453845505', 'order', '2311150000000000037', 'CLOSED', '2023-11-15 15:00:49', '2023-11-15 15:08:15');
INSERT INTO `state_persister` VALUES ('1724685206622347266', 'order', '2311150000000000038', 'NO_SERVE', '2023-11-15 15:06:11', '2023-11-15 17:01:20');
INSERT INTO `state_persister` VALUES ('1724718101625942017', 'order', '2311150000000000039', 'NO_SERVE', '2023-11-15 17:16:53', '2023-11-15 17:17:59');
INSERT INTO `state_persister` VALUES ('1727537592479088642', 'order', '2311230000000000040', 'FINISHED', '2023-11-23 12:01:27', '2024-08-19 14:45:18');
INSERT INTO `state_persister` VALUES ('1727539382729670658', 'order', '2311230000000000041', 'DISPATCHING', '2023-11-23 12:08:34', '2023-11-23 12:08:34');
INSERT INTO `state_persister` VALUES ('1727951991723339777', 'order', '2311240000000000042', 'NO_SERVE', '2023-11-24 15:28:05', '2023-11-24 15:58:40');
INSERT INTO `state_persister` VALUES ('1727963430022361090', 'order', '2311240000000000043', 'NO_SERVE', '2023-11-24 16:13:34', '2023-11-24 16:13:50');

-- ----------------------------
-- Table structure for undo_log
-- ----------------------------
DROP TABLE IF EXISTS `undo_log`;
CREATE TABLE `undo_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `branch_id` bigint NOT NULL,
  `xid` varchar(100) NOT NULL,
  `context` varchar(128) NOT NULL,
  `rollback_info` longblob NOT NULL,
  `log_status` int NOT NULL,
  `log_created` datetime NOT NULL,
  `log_modified` datetime NOT NULL,
  `ext` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `ux_undo_log` (`xid`,`branch_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=185 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of undo_log
-- ----------------------------
