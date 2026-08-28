/*
Navicat MySQL Data Transfer

Source Server         : 192.168.101.68
Source Server Version : 80026
Source Host           : 192.168.101.68:3306
Source Database       : jzo2o-orders-1

Target Server Type    : MYSQL
Target Server Version : 80026
File Encoding         : 65001

Date: 2024-08-24 21:21:28
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for biz_snapshot
-- ----------------------------
DROP TABLE IF EXISTS `biz_snapshot`;
CREATE TABLE `biz_snapshot` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `state_machine_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '状态机名称',
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
INSERT INTO `biz_snapshot` VALUES ('1705852652602122240', 'order', 'test101', '1', 'NO_PAY', '{}', '2023-09-24 07:53:15', '2023-09-24 07:53:15');
INSERT INTO `biz_snapshot` VALUES ('1705854135619817472', 'order', '101', '1', 'NO_PAY', '{}', '2023-09-24 07:59:08', '2023-09-24 07:59:08');
INSERT INTO `biz_snapshot` VALUES ('1705857303472787456', 'order', '101', '1', 'DISPATCHING', '{}', '2023-09-24 08:11:44', '2023-09-24 08:11:44');
INSERT INTO `biz_snapshot` VALUES ('1705863039749840896', 'order', '102', '1', 'NO_PAY', '{}', '2023-09-24 08:34:31', '2023-09-24 08:34:31');
INSERT INTO `biz_snapshot` VALUES ('1705863040399958016', 'order', '102', '1', 'DISPATCHING', '{}', '2023-09-24 08:34:31', '2023-09-24 08:34:31');

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
) ENGINE=InnoDB AUTO_INCREMENT=1825423562935410689 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='业务数据快照';

-- ----------------------------
-- Records of biz_snapshot_0
-- ----------------------------
INSERT INTO `biz_snapshot_0` VALUES ('1706195196246523904', 'order', '2309250000000000060', '1701074772546342912', 'NO_PAY', '{\"ordersStatus\":0,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0,\"lon\":\"116.34395\",\"serveAddress\":\"北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼\",\"contactsName\":\"吕女士\",\"serveItemId\":1685894105234755585,\"price\":0.1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"realPayAmount\":0.1,\"serveStartTime\":1695632400000,\"id\":2309250000000000060,\"lat\":\"40.06115\",\"serveTypeId\":1678649931106705409,\"updateTime\":1695594858000,\"userId\":1701074772546342912,\"totalAmount\":0.1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1695594858000,\"payStatus\":2,\"purNum\":1,\"serveTypeName\":\"保洁清\"}', '2023-09-25 06:34:20', '2023-09-25 06:34:20');
INSERT INTO `biz_snapshot_0` VALUES ('1706195197005692928', 'order', '2309250000000000060', '1701074772546342912', 'DISPATCHING', '{\"tradingChannel\":\"WECHAT_PAY\",\"ordersStatus\":100,\"payTime\":1695623609106,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0,\"lon\":\"116.34395\",\"serveAddress\":\"北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼\",\"contactsName\":\"吕女士\",\"serveItemId\":1685894105234755585,\"price\":0.1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"thirdOrderId\":\"1706195196565291008\",\"realPayAmount\":0.1,\"serveStartTime\":1695632400000,\"id\":2309250000000000060,\"lat\":\"40.06115\",\"serveTypeId\":1678649931106705409,\"updateTime\":1695594858000,\"userId\":1701074772546342912,\"tradingOrderNo\":1706195196561096704,\"totalAmount\":0.1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1695594858000,\"payStatus\":4,\"purNum\":1,\"serveTypeName\":\"保洁清\"}', '2023-09-25 06:34:20', '2023-09-25 06:34:20');
INSERT INTO `biz_snapshot_0` VALUES ('1718188659917824000', 'order', '2310280000000000004', '1716346406098296832', 'NO_PAY', '{\"ordersStatus\":0,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0,\"lon\":\"113.83892\",\"serveAddress\":\"河南省郑州市新郑市河南省郑州市新郑市郑港街道黑马程序员航投大厦\",\"contactsName\":\"苗先生\",\"serveItemId\":1685894105234755585,\"price\":1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"realPayAmount\":1,\"serveStartTime\":1698544800000,\"id\":2310280000000000004,\"lat\":\"34.57203\",\"serveTypeId\":1678649931106705409,\"updateTime\":1698454321000,\"userId\":1716346406098296832,\"totalAmount\":1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1698454321000,\"payStatus\":2,\"purNum\":1,\"serveTypeName\":\"保洁清\"}', '2023-10-28 08:52:05', '2023-10-28 08:52:05');
INSERT INTO `biz_snapshot_0` VALUES ('1718191729955414016', 'order', '2310280000000000004', '1716346406098296832', 'DISPATCHING', '{\"tradingChannel\":\"WECHAT_PAY\",\"ordersStatus\":100,\"payTime\":1698483805384,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0,\"lon\":\"113.83892\",\"serveAddress\":\"河南省郑州市新郑市河南省郑州市新郑市郑港街道黑马程序员航投大厦\",\"contactsName\":\"苗先生\",\"serveItemId\":1685894105234755585,\"price\":1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"thirdOrderId\":\"4200001984202310284056772128\",\"realPayAmount\":1,\"serveStartTime\":1698544800000,\"id\":2310280000000000004,\"lat\":\"34.57203\",\"serveTypeId\":1678649931106705409,\"updateTime\":1698454321000,\"userId\":1716346406098296832,\"tradingOrderNo\":1718190563888783362,\"totalAmount\":1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1698454321000,\"payStatus\":4,\"purNum\":1,\"serveTypeName\":\"保洁清\"}', '2023-10-28 09:04:17', '2023-10-28 09:04:17');
INSERT INTO `biz_snapshot_0` VALUES ('1718191898457382912', 'order', '2310280000000000004', '1716346406098296832', 'CLOSED', '{\"tradingChannel\":\"WECHAT_PAY\",\"ordersStatus\":700,\"payTime\":1698483805384,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"refundStatus\":1,\"discountAmount\":0,\"lon\":\"113.83892\",\"serveAddress\":\"河南省郑州市新郑市河南省郑州市新郑市郑港街道黑马程序员航投大厦\",\"contactsName\":\"苗先生\",\"serveItemId\":1685894105234755585,\"cancelerName\":\"普通用户72135\",\"price\":1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"thirdOrderId\":\"4200001984202310284056772128\",\"cancellerId\":1716346406098296832,\"realPayAmount\":1,\"serveStartTime\":1698544800000,\"id\":2310280000000000004,\"cancelReason\":\"问题已解决，不需要了\",\"lat\":\"34.57203\",\"serveTypeId\":1678649931106705409,\"updateTime\":1698454321000,\"userId\":1716346406098296832,\"tradingOrderNo\":1718190563888783362,\"totalAmount\":1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1698454321000,\"cancelTime\":1698483845659,\"cancellerType\":1,\"payStatus\":4,\"purNum\":1,\"serveTypeName\":\"保洁清\"}', '2023-10-28 09:04:57', '2023-10-28 09:04:57');
INSERT INTO `biz_snapshot_0` VALUES ('1718200879061925888', 'order', '2310280000000000004', '1716346406098296832', 'CLOSED', '{\"tradingChannel\":\"WECHAT_PAY\",\"ordersStatus\":700,\"payTime\":1698483805384,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"refundStatus\":2,\"discountAmount\":0,\"lon\":\"113.83892\",\"serveAddress\":\"河南省郑州市新郑市河南省郑州市新郑市郑港街道黑马程序员航投大厦\",\"contactsName\":\"苗先生\",\"serveItemId\":1685894105234755585,\"cancelerName\":\"普通用户72135\",\"refundNo\":1718200723722047490,\"price\":1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"thirdOrderId\":\"4200001984202310284056772128\",\"cancellerId\":1716346406098296832,\"realPayAmount\":1,\"serveStartTime\":1698544800000,\"id\":2310280000000000004,\"cancelReason\":\"问题已解决，不需要了\",\"lat\":\"34.57203\",\"serveTypeId\":1678649931106705409,\"thirdRefundOrderId\":\"50310007642023102804403909410\",\"updateTime\":1698454321000,\"userId\":1716346406098296832,\"tradingOrderNo\":1718190563888783362,\"totalAmount\":1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1698454321000,\"cancelTime\":1698483845659,\"cancellerType\":1,\"payStatus\":4,\"purNum\":1,\"serveTypeName\":\"保洁清\"}', '2023-10-28 09:40:38', '2023-10-28 09:40:38');
INSERT INTO `biz_snapshot_0` VALUES ('1718264296867135488', 'order', '2310280000000000005', '1716346406098296832', 'NO_PAY', '{\"ordersStatus\":0,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0,\"lon\":\"113.83892\",\"serveAddress\":\"河南省郑州市新郑市河南省郑州市新郑市郑港街道黑马程序员航投大厦\",\"contactsName\":\"苗先生\",\"serveItemId\":1685894105234755585,\"price\":1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"realPayAmount\":1,\"serveStartTime\":1698557400000,\"id\":2310280000000000005,\"lat\":\"34.57203\",\"serveTypeId\":1678649931106705409,\"updateTime\":1698472357000,\"userId\":1716346406098296832,\"totalAmount\":1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1698472357000,\"payStatus\":2,\"purNum\":1,\"serveTypeName\":\"保洁清\"}', '2023-10-28 13:52:39', '2023-10-28 13:52:39');
INSERT INTO `biz_snapshot_0` VALUES ('1718264422381682688', 'order', '2310280000000000005', '1716346406098296832', 'DISPATCHING', '{\"tradingChannel\":\"WECHAT_PAY\",\"ordersStatus\":100,\"payTime\":1698501136679,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0,\"lon\":\"113.83892\",\"serveAddress\":\"河南省郑州市新郑市河南省郑州市新郑市郑港街道黑马程序员航投大厦\",\"contactsName\":\"苗先生\",\"serveItemId\":1685894105234755585,\"price\":1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"thirdOrderId\":\"4200001978202310288067344599\",\"realPayAmount\":1,\"serveStartTime\":1698557400000,\"id\":2310280000000000005,\"lat\":\"34.57203\",\"serveTypeId\":1678649931106705409,\"updateTime\":1698472357000,\"userId\":1716346406098296832,\"tradingOrderNo\":1718264316280008706,\"totalAmount\":1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1698472357000,\"payStatus\":4,\"purNum\":1,\"serveTypeName\":\"保洁清\"}', '2023-10-28 13:53:09', '2023-10-28 13:53:09');
INSERT INTO `biz_snapshot_0` VALUES ('1718264489377300480', 'order', '2310280000000000005', '1716346406098296832', 'CLOSED', '{\"tradingChannel\":\"WECHAT_PAY\",\"ordersStatus\":700,\"payTime\":1698501136679,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"refundStatus\":1,\"discountAmount\":0,\"lon\":\"113.83892\",\"serveAddress\":\"河南省郑州市新郑市河南省郑州市新郑市郑港街道黑马程序员航投大厦\",\"contactsName\":\"苗先生\",\"serveItemId\":1685894105234755585,\"cancelerName\":\"普通用户72135\",\"price\":1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"thirdOrderId\":\"4200001978202310288067344599\",\"cancellerId\":1716346406098296832,\"realPayAmount\":1,\"serveStartTime\":1698557400000,\"id\":2310280000000000005,\"cancelReason\":\"问题已解决，不需要了\",\"lat\":\"34.57203\",\"serveTypeId\":1678649931106705409,\"updateTime\":1698472357000,\"userId\":1716346406098296832,\"tradingOrderNo\":1718264316280008706,\"totalAmount\":1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1698472357000,\"cancelTime\":1698501152688,\"cancellerType\":1,\"payStatus\":4,\"purNum\":1,\"serveTypeName\":\"保洁清\"}', '2023-10-28 13:53:25', '2023-10-28 13:53:25');
INSERT INTO `biz_snapshot_0` VALUES ('1718264598911549440', 'order', '2310280000000000005', '1716346406098296832', 'CLOSED', '{\"tradingChannel\":\"WECHAT_PAY\",\"ordersStatus\":700,\"payTime\":1698501136679,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"refundStatus\":2,\"discountAmount\":0,\"lon\":\"113.83892\",\"serveAddress\":\"河南省郑州市新郑市河南省郑州市新郑市郑港街道黑马程序员航投大厦\",\"contactsName\":\"苗先生\",\"serveItemId\":1685894105234755585,\"cancelerName\":\"普通用户72135\",\"refundNo\":1718264509826166786,\"price\":1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"thirdOrderId\":\"4200001978202310288067344599\",\"cancellerId\":1716346406098296832,\"realPayAmount\":1,\"serveStartTime\":1698557400000,\"id\":2310280000000000005,\"cancelReason\":\"问题已解决，不需要了\",\"lat\":\"34.57203\",\"serveTypeId\":1678649931106705409,\"thirdRefundOrderId\":\"50300007632023102815800615452\",\"updateTime\":1698472357000,\"userId\":1716346406098296832,\"tradingOrderNo\":1718264316280008706,\"totalAmount\":1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1698472357000,\"cancelTime\":1698501152688,\"cancellerType\":1,\"payStatus\":4,\"purNum\":1,\"serveTypeName\":\"保洁清\"}', '2023-10-28 13:53:51', '2023-10-28 13:53:51');
INSERT INTO `biz_snapshot_0` VALUES ('1720008733335023616', 'order', '2311020000000000021', '1716346406098296832', 'NO_PAY', '{\"ordersStatus\":0,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0,\"lon\":\"113.83892\",\"serveAddress\":\"河南省郑州市新郑市河南省郑州市新郑市郑港街道黑马程序员航投大厦\",\"contactsName\":\"苗先生\",\"serveItemId\":1685894105234755585,\"price\":1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"realPayAmount\":1,\"serveStartTime\":1698922800000,\"id\":2311020000000000021,\"lat\":\"34.57203\",\"serveTypeId\":1678649931106705409,\"updateTime\":1698917064000,\"userId\":1716346406098296832,\"totalAmount\":1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1698917064000,\"payStatus\":2,\"purNum\":1,\"serveTypeName\":\"保洁清\"}', '2023-11-02 17:24:27', '2023-11-02 17:24:27');
INSERT INTO `biz_snapshot_0` VALUES ('1720010008042729472', 'order', '2311020000000000022', '1716346406098296832', 'NO_PAY', '{\"ordersStatus\":0,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0,\"lon\":\"113.83892\",\"serveAddress\":\"河南省郑州市新郑市河南省郑州市新郑市郑港街道黑马程序员航投大厦\",\"contactsName\":\"苗先生\",\"serveItemId\":1685894105234755585,\"price\":1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"realPayAmount\":1,\"serveStartTime\":1698924600000,\"id\":2311020000000000022,\"lat\":\"34.57203\",\"serveTypeId\":1678649931106705409,\"updateTime\":1698917371000,\"userId\":1716346406098296832,\"totalAmount\":1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1698917371000,\"payStatus\":2,\"purNum\":1,\"serveTypeName\":\"保洁清\"}', '2023-11-02 17:29:31', '2023-11-02 17:29:31');
INSERT INTO `biz_snapshot_0` VALUES ('1720011514506702848', 'order', '2311020000000000022', '1716346406098296832', 'DISPATCHING', '{\"tradingChannel\":\"WECHAT_PAY\",\"ordersStatus\":100,\"payTime\":1698917675932,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0,\"lon\":\"113.83892\",\"serveAddress\":\"河南省郑州市新郑市河南省郑州市新郑市郑港街道黑马程序员航投大厦\",\"contactsName\":\"苗先生\",\"serveItemId\":1685894105234755585,\"price\":1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"thirdOrderId\":\"4200001988202311029499853500\",\"realPayAmount\":1,\"serveStartTime\":1698924600000,\"id\":2311020000000000022,\"lat\":\"34.57203\",\"serveTypeId\":1678649931106705409,\"updateTime\":1698917371000,\"userId\":1716346406098296832,\"tradingOrderNo\":1720010020076392450,\"totalAmount\":1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1698917371000,\"payStatus\":4,\"purNum\":1,\"serveTypeName\":\"保洁清\"}', '2023-11-02 17:35:30', '2023-11-02 17:35:30');
INSERT INTO `biz_snapshot_0` VALUES ('1720023473323012096', 'order', '2311020000000000023', '1716346406098296832', 'NO_PAY', '{\"ordersStatus\":0,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0,\"lon\":\"113.83892\",\"serveAddress\":\"河南省郑州市新郑市河南省郑州市新郑市郑港街道黑马程序员航投大厦\",\"contactsName\":\"苗先生\",\"serveItemId\":1685894105234755585,\"price\":1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"realPayAmount\":1,\"serveStartTime\":1698933600000,\"id\":2311020000000000023,\"lat\":\"34.57203\",\"serveTypeId\":1678649931106705409,\"updateTime\":1698920579000,\"userId\":1716346406098296832,\"totalAmount\":1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1698920579000,\"payStatus\":2,\"purNum\":1,\"serveTypeName\":\"保洁清\"}', '2023-11-02 18:23:01', '2023-11-02 18:23:01');
INSERT INTO `biz_snapshot_0` VALUES ('1720023678302842880', 'order', '2311020000000000023', '1716346406098296832', 'DISPATCHING', '{\"tradingChannel\":\"WECHAT_PAY\",\"ordersStatus\":100,\"payTime\":1698920576002,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0,\"lon\":\"113.83892\",\"serveAddress\":\"河南省郑州市新郑市河南省郑州市新郑市郑港街道黑马程序员航投大厦\",\"contactsName\":\"苗先生\",\"serveItemId\":1685894105234755585,\"price\":1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"thirdOrderId\":\"4200001974202311028474971242\",\"realPayAmount\":1,\"serveStartTime\":1698933600000,\"id\":2311020000000000023,\"lat\":\"34.57203\",\"serveTypeId\":1678649931106705409,\"updateTime\":1698920579000,\"userId\":1716346406098296832,\"tradingOrderNo\":1720023598087016449,\"totalAmount\":1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1698920579000,\"payStatus\":4,\"purNum\":1,\"serveTypeName\":\"保洁清\"}', '2023-11-02 18:23:50', '2023-11-02 18:23:50');
INSERT INTO `biz_snapshot_0` VALUES ('1720031203416932352', 'order', '2311020000000000024', '1716346406098296832', 'NO_PAY', '{\"ordersStatus\":0,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0,\"lon\":\"113.83892\",\"serveAddress\":\"河南省郑州市新郑市河南省郑州市新郑市郑港街道黑马程序员航投大厦\",\"contactsName\":\"苗先生\",\"serveItemId\":1685894105234755585,\"price\":1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"realPayAmount\":1,\"serveStartTime\":1698930000000,\"id\":2311020000000000024,\"lat\":\"34.57203\",\"serveTypeId\":1678649931106705409,\"updateTime\":1698922420000,\"userId\":1716346406098296832,\"totalAmount\":1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1698922420000,\"payStatus\":2,\"purNum\":1,\"serveTypeName\":\"保洁清\"}', '2023-11-02 18:53:45', '2023-11-02 18:53:45');
INSERT INTO `biz_snapshot_0` VALUES ('1720031393980940288', 'order', '2311020000000000024', '1', 'CANCELED', '{\"ordersStatus\":600,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0,\"lon\":\"113.83892\",\"serveAddress\":\"河南省郑州市新郑市河南省郑州市新郑市郑港街道黑马程序员航投大厦\",\"contactsName\":\"苗先生\",\"serveItemId\":1685894105234755585,\"cancelerName\":\"普通用户72135\",\"price\":1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"cancellerId\":1716346406098296832,\"realPayAmount\":1,\"serveStartTime\":1698930000000,\"id\":2311020000000000024,\"cancelReason\":\"下单时间错误\",\"lat\":\"34.57203\",\"serveTypeId\":1678649931106705409,\"updateTime\":1698922420000,\"userId\":1716346406098296832,\"totalAmount\":1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1698922420000,\"cancelTime\":1698922415499,\"cancellerType\":1,\"payStatus\":2,\"purNum\":1,\"serveTypeName\":\"保洁清\"}', '2023-11-02 18:54:30', '2023-11-02 18:54:30');
INSERT INTO `biz_snapshot_0` VALUES ('1720032826818162688', 'order', '2311020000000000025', '1716346406098296832', 'NO_PAY', '{\"ordersStatus\":0,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0,\"lon\":\"113.83892\",\"serveAddress\":\"河南省郑州市新郑市河南省郑州市新郑市郑港街道黑马程序员航投大厦\",\"contactsName\":\"苗先生\",\"serveItemId\":1685894105234755585,\"price\":1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"realPayAmount\":1,\"serveStartTime\":1698930000000,\"id\":2311020000000000025,\"lat\":\"34.57203\",\"serveTypeId\":1678649931106705409,\"updateTime\":1698922807000,\"userId\":1716346406098296832,\"totalAmount\":1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1698922807000,\"payStatus\":2,\"purNum\":1,\"serveTypeName\":\"保洁清\"}', '2023-11-02 19:00:12', '2023-11-02 19:00:12');
INSERT INTO `biz_snapshot_0` VALUES ('1720032974671572992', 'order', '2311020000000000025', '1716346406098296832', 'CANCELED', '{\"ordersStatus\":600,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0,\"lon\":\"113.83892\",\"serveAddress\":\"河南省郑州市新郑市河南省郑州市新郑市郑港街道黑马程序员航投大厦\",\"contactsName\":\"苗先生\",\"serveItemId\":1685894105234755585,\"cancelerName\":\"普通用户72135\",\"price\":1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"cancellerId\":1716346406098296832,\"realPayAmount\":1,\"serveStartTime\":1698930000000,\"id\":2311020000000000025,\"cancelReason\":\"下单地址有误\",\"lat\":\"34.57203\",\"serveTypeId\":1678649931106705409,\"updateTime\":1698922807000,\"userId\":1716346406098296832,\"totalAmount\":1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1698922807000,\"cancelTime\":1698922792362,\"cancellerType\":1,\"payStatus\":2,\"purNum\":1,\"serveTypeName\":\"保洁清\"}', '2023-11-02 19:00:47', '2023-11-02 19:00:47');
INSERT INTO `biz_snapshot_0` VALUES ('1720034297534083072', 'order', '2311020000000000026', '1716346406098296832', 'NO_PAY', '{\"ordersStatus\":0,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0,\"lon\":\"113.83892\",\"serveAddress\":\"河南省郑州市新郑市河南省郑州市新郑市郑港街道黑马程序员航投大厦\",\"contactsName\":\"苗先生\",\"serveItemId\":1685894105234755585,\"price\":1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"realPayAmount\":1,\"serveStartTime\":1698935400000,\"id\":2311020000000000026,\"lat\":\"34.57203\",\"serveTypeId\":1678649931106705409,\"updateTime\":1698923162000,\"userId\":1716346406098296832,\"totalAmount\":1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1698923162000,\"payStatus\":2,\"purNum\":1,\"serveTypeName\":\"保洁清\"}', '2023-11-02 19:06:02', '2023-11-02 19:06:02');
INSERT INTO `biz_snapshot_0` VALUES ('1720034383701864448', 'order', '2311020000000000026', '1716346406098296832', 'CANCELED', '{\"ordersStatus\":600,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0,\"lon\":\"113.83892\",\"serveAddress\":\"河南省郑州市新郑市河南省郑州市新郑市郑港街道黑马程序员航投大厦\",\"contactsName\":\"苗先生\",\"serveItemId\":1685894105234755585,\"cancelerName\":\"普通用户72135\",\"price\":1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"cancellerId\":1716346406098296832,\"realPayAmount\":1,\"serveStartTime\":1698935400000,\"id\":2311020000000000026,\"cancelReason\":\"下单地址有误\",\"lat\":\"34.57203\",\"serveTypeId\":1678649931106705409,\"updateTime\":1698923162000,\"userId\":1716346406098296832,\"totalAmount\":1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1698923162000,\"cancelTime\":1698923128389,\"cancellerType\":1,\"payStatus\":2,\"purNum\":1,\"serveTypeName\":\"保洁清\"}', '2023-11-02 19:06:23', '2023-11-02 19:06:23');
INSERT INTO `biz_snapshot_0` VALUES ('1720035011874385920', 'order', '2311020000000000027', '1716346406098296832', 'NO_PAY', '{\"ordersStatus\":0,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0,\"lon\":\"113.83892\",\"serveAddress\":\"河南省郑州市新郑市河南省郑州市新郑市郑港街道黑马程序员航投大厦\",\"contactsName\":\"苗先生\",\"serveItemId\":1685894105234755585,\"price\":1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"realPayAmount\":1,\"serveStartTime\":1698937200000,\"id\":2311020000000000027,\"lat\":\"34.57203\",\"serveTypeId\":1678649931106705409,\"updateTime\":1698923332000,\"userId\":1716346406098296832,\"totalAmount\":1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1698923332000,\"payStatus\":2,\"purNum\":1,\"serveTypeName\":\"保洁清\"}', '2023-11-02 19:08:52', '2023-11-02 19:08:52');
INSERT INTO `biz_snapshot_0` VALUES ('1720035077519437824', 'order', '2311020000000000027', '1716346406098296832', 'CANCELED', '{\"ordersStatus\":600,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0,\"lon\":\"113.83892\",\"serveAddress\":\"河南省郑州市新郑市河南省郑州市新郑市郑港街道黑马程序员航投大厦\",\"contactsName\":\"苗先生\",\"serveItemId\":1685894105234755585,\"cancelerName\":\"普通用户72135\",\"price\":1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"cancellerId\":1716346406098296832,\"realPayAmount\":1,\"serveStartTime\":1698937200000,\"id\":2311020000000000027,\"cancelReason\":\"下单时间错误\",\"lat\":\"34.57203\",\"serveTypeId\":1678649931106705409,\"updateTime\":1698923332000,\"userId\":1716346406098296832,\"totalAmount\":1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1698923332000,\"cancelTime\":1698923293812,\"cancellerType\":1,\"payStatus\":2,\"purNum\":1,\"serveTypeName\":\"保洁清\"}', '2023-11-02 19:09:08', '2023-11-02 19:09:08');
INSERT INTO `biz_snapshot_0` VALUES ('1720062470527250432', 'order', '2311020000000000028', '1716346406098296832', 'NO_PAY', '{\"ordersStatus\":0,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0,\"lon\":\"113.83892\",\"serveAddress\":\"河南省郑州市新郑市河南省郑州市新郑市郑港街道黑马程序员航投大厦\",\"contactsName\":\"苗先生\",\"serveItemId\":1685894105234755585,\"price\":1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"realPayAmount\":1,\"serveStartTime\":1698937200000,\"id\":2311020000000000028,\"lat\":\"34.57203\",\"serveTypeId\":1678649931106705409,\"updateTime\":1698929879000,\"userId\":1716346406098296832,\"totalAmount\":1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1698929879000,\"payStatus\":2,\"purNum\":1,\"serveTypeName\":\"保洁清\"}', '2023-11-02 20:57:59', '2023-11-02 20:57:59');
INSERT INTO `biz_snapshot_0` VALUES ('1720326084337106944', 'order', '2311030000000000029', '1716346406098296832', 'NO_PAY', '{\"ordersStatus\":0,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0,\"lon\":\"113.83892\",\"serveAddress\":\"河南省郑州市新郑市河南省郑州市新郑市郑港街道黑马程序员航投大厦\",\"contactsName\":\"苗先生\",\"serveItemId\":1685894105234755585,\"price\":1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"realPayAmount\":1,\"serveStartTime\":1699012800000,\"id\":2311030000000000029,\"lat\":\"34.57203\",\"serveTypeId\":1678649931106705409,\"updateTime\":1698992724000,\"userId\":1716346406098296832,\"totalAmount\":1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1698992724000,\"payStatus\":2,\"purNum\":1,\"serveTypeName\":\"保洁清\"}', '2023-11-03 14:25:27', '2023-11-03 14:25:27');
INSERT INTO `biz_snapshot_0` VALUES ('1720326690950905856', 'order', '2311030000000000029', '1716346406098296832', 'CANCELED', '{\"ordersStatus\":600,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0,\"lon\":\"113.83892\",\"serveAddress\":\"河南省郑州市新郑市河南省郑州市新郑市郑港街道黑马程序员航投大厦\",\"contactsName\":\"苗先生\",\"serveItemId\":1685894105234755585,\"cancelerName\":\"普通用户72135\",\"price\":1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"cancellerId\":1716346406098296832,\"realPayAmount\":1,\"serveStartTime\":1699012800000,\"id\":2311030000000000029,\"cancelReason\":\"下单地址有误\",\"lat\":\"34.57203\",\"serveTypeId\":1678649931106705409,\"updateTime\":1698992724000,\"userId\":1716346406098296832,\"totalAmount\":1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1698992724000,\"cancelTime\":1698992819844,\"cancellerType\":1,\"payStatus\":2,\"purNum\":1,\"serveTypeName\":\"保洁清\"}', '2023-11-03 14:27:51', '2023-11-03 14:27:51');
INSERT INTO `biz_snapshot_0` VALUES ('1720387097602310144', 'order', '2311030000000000030', '1716346406098296832', 'NO_PAY', '{\"ordersStatus\":0,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0,\"lon\":\"113.83892\",\"serveAddress\":\"河南省郑州市新郑市河南省郑州市新郑市郑港街道黑马程序员航投大厦\",\"contactsName\":\"苗先生\",\"serveItemId\":1685894105234755585,\"price\":1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"realPayAmount\":1,\"serveStartTime\":1699018200000,\"id\":2311030000000000030,\"lat\":\"34.57203\",\"serveTypeId\":1678649931106705409,\"updateTime\":1699007270000,\"userId\":1716346406098296832,\"totalAmount\":1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1699007270000,\"payStatus\":2,\"purNum\":1,\"serveTypeName\":\"保洁清\"}', '2023-11-03 18:27:53', '2023-11-03 18:27:53');
INSERT INTO `biz_snapshot_0` VALUES ('1720396444323545088', 'order', '2311020000000000028', '1', 'CANCELED', '{\"ordersStatus\":600,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0,\"lon\":\"113.83892\",\"serveAddress\":\"河南省郑州市新郑市河南省郑州市新郑市郑港街道黑马程序员航投大厦\",\"contactsName\":\"苗先生\",\"serveItemId\":1685894105234755585,\"price\":1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"realPayAmount\":1,\"serveStartTime\":1698937200000,\"id\":2311020000000000028,\"cancelReason\":\"订单超时支付，自动取消\",\"lat\":\"34.57203\",\"serveTypeId\":1678649931106705409,\"updateTime\":1698929879000,\"userId\":1716346406098296832,\"totalAmount\":1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1698929879000,\"cancelTime\":1699009445824,\"cancellerType\":0,\"payStatus\":2,\"purNum\":1,\"serveTypeName\":\"保洁清\"}', '2023-11-03 19:05:02', '2023-11-03 19:05:02');
INSERT INTO `biz_snapshot_0` VALUES ('1720398021033721856', 'order', '2311030000000000030', '1', 'CANCELED', '{\"ordersStatus\":600,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0,\"lon\":\"113.83892\",\"serveAddress\":\"河南省郑州市新郑市河南省郑州市新郑市郑港街道黑马程序员航投大厦\",\"contactsName\":\"苗先生\",\"serveItemId\":1685894105234755585,\"price\":1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"realPayAmount\":1,\"serveStartTime\":1699018200000,\"id\":2311030000000000030,\"cancelReason\":\"订单超时支付，自动取消\",\"lat\":\"34.57203\",\"serveTypeId\":1678649931106705409,\"updateTime\":1699007270000,\"userId\":1716346406098296832,\"totalAmount\":1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1699007270000,\"cancelTime\":1699009822591,\"cancellerType\":0,\"payStatus\":2,\"purNum\":1,\"serveTypeName\":\"保洁清\"}', '2023-11-03 19:11:18', '2023-11-03 19:11:18');
INSERT INTO `biz_snapshot_0` VALUES ('1720400030419951616', 'order', '2311030000000000031', '1716346406098296832', 'NO_PAY', '{\"ordersStatus\":0,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0,\"lon\":\"113.83892\",\"serveAddress\":\"河南省郑州市新郑市河南省郑州市新郑市郑港街道黑马程序员航投大厦\",\"contactsName\":\"苗先生\",\"serveItemId\":1685894105234755585,\"price\":1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"realPayAmount\":1,\"serveStartTime\":1699021800000,\"id\":2311030000000000031,\"lat\":\"34.57203\",\"serveTypeId\":1678649931106705409,\"updateTime\":1699010354000,\"userId\":1716346406098296832,\"totalAmount\":1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1598010354000,\"payStatus\":2,\"purNum\":1,\"serveTypeName\":\"保洁清\"}', '2023-11-03 19:19:17', '2023-11-03 19:22:13');
INSERT INTO `biz_snapshot_0` VALUES ('1720401108595154944', 'order', '2311030000000000031', '1', 'CANCELED', '{\"ordersStatus\":600,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0,\"lon\":\"113.83892\",\"serveAddress\":\"河南省郑州市新郑市河南省郑州市新郑市郑港街道黑马程序员航投大厦\",\"contactsName\":\"苗先生\",\"serveItemId\":1685894105234755585,\"price\":1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"realPayAmount\":1,\"serveStartTime\":1699021800000,\"id\":2311030000000000031,\"cancelReason\":\"订单超时支付，自动取消\",\"lat\":\"34.57203\",\"serveTypeId\":1678649931106705409,\"updateTime\":1699010354000,\"userId\":1716346406098296832,\"totalAmount\":1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1598010354000,\"cancelTime\":1699010561375,\"cancellerType\":0,\"payStatus\":2,\"purNum\":1,\"serveTypeName\":\"保洁清\"}', '2023-11-03 19:23:34', '2023-11-03 19:23:34');
INSERT INTO `biz_snapshot_0` VALUES ('1722592783388237824', 'order', '2311090000000000032', '1716346406098296832', 'NO_PAY', '{\"ordersStatus\":0,\"cityCode\":\"010\",\"serveItemName\":\"空调维修\",\"serveId\":1715263395009191938,\"discountAmount\":0,\"lon\":\"113.83892\",\"serveAddress\":\"河南省郑州市新郑市河南省郑州市新郑市郑港街道黑马程序员航投大厦\",\"contactsName\":\"苗先生\",\"serveItemId\":1685850705647194113,\"price\":17,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/71460cfd-0f49-467f-923d-1f9a02912b81.png\",\"realPayAmount\":17,\"serveStartTime\":1699574400000,\"id\":2311090000000000032,\"lat\":\"34.57203\",\"serveTypeId\":1678654490336124929,\"updateTime\":1699533149000,\"userId\":1716346406098296832,\"totalAmount\":17,\"unit\":4,\"contactsPhone\":\"13333333333\",\"createTime\":1699533149000,\"payStatus\":2,\"purNum\":1,\"serveTypeName\":\"日常维修\"}', '2023-11-09 20:32:32', '2023-11-09 20:32:32');
INSERT INTO `biz_snapshot_0` VALUES ('1722593502665236480', 'order', '2311090000000000033', '1716346406098296832', 'NO_PAY', '{\"ordersStatus\":0,\"cityCode\":\"010\",\"serveItemName\":\"空调维修\",\"serveId\":1715263395009191938,\"discountAmount\":3.4,\"lon\":\"113.83892\",\"serveAddress\":\"河南省郑州市新郑市河南省郑州市新郑市郑港街道黑马程序员航投大厦\",\"contactsName\":\"苗先生\",\"serveItemId\":1685850705647194113,\"price\":17,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/71460cfd-0f49-467f-923d-1f9a02912b81.png\",\"realPayAmount\":13.6,\"serveStartTime\":1699664400000,\"id\":2311090000000000033,\"lat\":\"34.57203\",\"serveTypeId\":1678654490336124929,\"updateTime\":1699533319000,\"userId\":1716346406098296832,\"totalAmount\":17,\"unit\":4,\"contactsPhone\":\"13333333333\",\"createTime\":1699533319000,\"payStatus\":2,\"purNum\":1,\"serveTypeName\":\"日常维修\"}', '2023-11-09 20:35:23', '2023-11-09 20:35:23');
INSERT INTO `biz_snapshot_0` VALUES ('1722610272838893568', 'order', '2311090000000000037', '1716346406098296832', 'NO_PAY', '{\"ordersStatus\":0,\"cityCode\":\"010\",\"serveItemName\":\"空调维修\",\"serveId\":1715263395009191938,\"discountAmount\":3.4,\"lon\":\"113.83892\",\"serveAddress\":\"河南省郑州市新郑市河南省郑州市新郑市郑港街道黑马程序员航投大厦\",\"contactsName\":\"苗先生\",\"serveItemId\":1685850705647194113,\"price\":17,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/71460cfd-0f49-467f-923d-1f9a02912b81.png\",\"realPayAmount\":13.6,\"serveStartTime\":1699579800000,\"id\":2311090000000000037,\"lat\":\"34.57203\",\"serveTypeId\":1678654490336124929,\"updateTime\":1699537318000,\"userId\":1716346406098296832,\"totalAmount\":17,\"unit\":4,\"contactsPhone\":\"13333333333\",\"createTime\":1699537318000,\"payStatus\":2,\"purNum\":1,\"serveTypeName\":\"日常维修\"}', '2023-11-09 21:42:02', '2023-11-09 21:42:02');
INSERT INTO `biz_snapshot_0` VALUES ('1722610909114810368', 'order', '2311090000000000037', '1716346406098296832', 'CANCELED', '{\"ordersStatus\":600,\"cityCode\":\"010\",\"serveItemName\":\"空调维修\",\"serveId\":1715263395009191938,\"discountAmount\":3.4,\"lon\":\"113.83892\",\"serveAddress\":\"河南省郑州市新郑市河南省郑州市新郑市郑港街道黑马程序员航投大厦\",\"contactsName\":\"苗先生\",\"serveItemId\":1685850705647194113,\"cancelerName\":\"普通用户72135\",\"price\":17,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/71460cfd-0f49-467f-923d-1f9a02912b81.png\",\"cancellerId\":1716346406098296832,\"realPayAmount\":13.6,\"serveStartTime\":1699579800000,\"id\":2311090000000000037,\"cancelReason\":\"下单地址有误\",\"lat\":\"34.57203\",\"serveTypeId\":1678654490336124929,\"updateTime\":1699537318000,\"userId\":1716346406098296832,\"totalAmount\":17,\"unit\":4,\"contactsPhone\":\"13333333333\",\"createTime\":1699537318000,\"cancelTime\":1699537419662,\"cancellerType\":1,\"payStatus\":2,\"purNum\":1,\"serveTypeName\":\"日常维修\"}', '2023-11-09 21:44:33', '2023-11-09 21:44:33');
INSERT INTO `biz_snapshot_0` VALUES ('1724683868612702208', 'order', '2311150000000000037', '1716346406098296832', 'NO_PAY', '{\"ordersStatus\":0,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0,\"lon\":\"113.83892\",\"serveAddress\":\"河南省郑州市新郑市河南省郑州市新郑市郑港街道黑马程序员航投大厦\",\"contactsName\":\"苗先生\",\"serveItemId\":1685894105234755585,\"price\":1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"realPayAmount\":1,\"serveStartTime\":1700051400000,\"id\":2311150000000000037,\"lat\":\"34.57203\",\"serveTypeId\":1678649931106705409,\"updateTime\":1700031649000,\"userId\":1716346406098296832,\"totalAmount\":1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1700031649000,\"payStatus\":2,\"purNum\":1,\"serveTypeName\":\"保洁清\"}', '2023-11-15 15:00:52', '2023-11-15 15:00:52');
INSERT INTO `biz_snapshot_0` VALUES ('1724683869850021888', 'order', '2311150000000000037', '1716346406098296832', 'DISPATCHING', '{\"tradingChannel\":\"WECHAT_PAY\",\"ordersStatus\":100,\"payTime\":1700031652116,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0,\"lon\":\"113.83892\",\"serveAddress\":\"河南省郑州市新郑市河南省郑州市新郑市郑港街道黑马程序员航投大厦\",\"contactsName\":\"苗先生\",\"serveItemId\":1685894105234755585,\"price\":1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"thirdOrderId\":\"1724683868990189569\",\"realPayAmount\":1,\"serveStartTime\":1700051400000,\"id\":2311150000000000037,\"lat\":\"34.57203\",\"serveTypeId\":1678649931106705409,\"updateTime\":1700031649000,\"userId\":1716346406098296832,\"tradingOrderNo\":1724683868990189568,\"totalAmount\":1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1700031649000,\"payStatus\":4,\"purNum\":1,\"serveTypeName\":\"保洁清\"}', '2023-11-15 15:00:52', '2023-11-15 15:00:52');
INSERT INTO `biz_snapshot_0` VALUES ('1724685206646009856', 'order', '2311150000000000038', '1716346406098296832', 'NO_PAY', '{\"ordersStatus\":0,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0,\"lon\":\"116.34351\",\"serveAddress\":\"北京市北京市昌平区北京市昌平区回龙观街道弘文恒瑞文化传播公司正泽商务中心\",\"contactsName\":\"苗先生\",\"serveItemId\":1685894105234755585,\"price\":1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"realPayAmount\":1,\"serveStartTime\":1700051400000,\"id\":2311150000000000038,\"lat\":\"40.06024\",\"serveTypeId\":1678649931106705409,\"updateTime\":1700031970000,\"userId\":1716346406098296832,\"totalAmount\":1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1700031970000,\"payStatus\":2,\"purNum\":1,\"serveTypeName\":\"保洁清\"}', '2023-11-15 15:06:11', '2023-11-15 15:06:11');
INSERT INTO `biz_snapshot_0` VALUES ('1724685206834753536', 'order', '2311150000000000038', '1716346406098296832', 'DISPATCHING', '{\"tradingChannel\":\"WECHAT_PAY\",\"ordersStatus\":100,\"payTime\":1700031971042,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0,\"lon\":\"116.34351\",\"serveAddress\":\"北京市北京市昌平区北京市昌平区回龙观街道弘文恒瑞文化传播公司正泽商务中心\",\"contactsName\":\"苗先生\",\"serveItemId\":1685894105234755585,\"price\":1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"thirdOrderId\":\"1724685206700535809\",\"realPayAmount\":1,\"serveStartTime\":1700051400000,\"id\":2311150000000000038,\"lat\":\"40.06024\",\"serveTypeId\":1678649931106705409,\"updateTime\":1700031970000,\"userId\":1716346406098296832,\"tradingOrderNo\":1724685206700535808,\"totalAmount\":1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1700031970000,\"payStatus\":4,\"purNum\":1,\"serveTypeName\":\"保洁清\"}', '2023-11-15 15:06:11', '2023-11-15 15:06:11');
INSERT INTO `biz_snapshot_0` VALUES ('1724685729172402176', 'order', '2311150000000000037', '1716346406098296832', 'CLOSED', '{\"tradingChannel\":\"WECHAT_PAY\",\"ordersStatus\":700,\"payTime\":1700031652116,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"refundStatus\":1,\"discountAmount\":0,\"lon\":\"113.83892\",\"serveAddress\":\"河南省郑州市新郑市河南省郑州市新郑市郑港街道黑马程序员航投大厦\",\"contactsName\":\"苗先生\",\"serveItemId\":1685894105234755585,\"cancelerName\":\"普通用户72135\",\"price\":1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"thirdOrderId\":\"1724683868990189569\",\"cancellerId\":1716346406098296832,\"realPayAmount\":1,\"serveStartTime\":1700051400000,\"id\":2311150000000000037,\"cancelReason\":\"下单地址有误\",\"lat\":\"34.57203\",\"serveTypeId\":1678649931106705409,\"updateTime\":1700031649000,\"userId\":1716346406098296832,\"tradingOrderNo\":1724683868990189568,\"totalAmount\":1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1700031649000,\"cancelTime\":1700032095573,\"cancellerType\":1,\"payStatus\":4,\"purNum\":1,\"serveTypeName\":\"保洁清\"}', '2023-11-15 15:08:15', '2023-11-15 15:08:15');
INSERT INTO `biz_snapshot_0` VALUES ('1724714196832210944', 'order', '2311150000000000038', '1716346406098296832', 'NO_SERVE', '{\"tradingChannel\":\"WECHAT_PAY\",\"ordersStatus\":200,\"payTime\":1700031971042,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0,\"lon\":\"116.34351\",\"serveAddress\":\"北京市北京市昌平区北京市昌平区回龙观街道弘文恒瑞文化传播公司正泽商务中心\",\"contactsName\":\"苗先生\",\"serveItemId\":1685894105234755585,\"price\":1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"thirdOrderId\":\"1724685206700535809\",\"realPayAmount\":1,\"serveStartTime\":1700051400000,\"id\":2311150000000000038,\"lat\":\"40.06024\",\"serveTypeId\":1678649931106705409,\"updateTime\":1700031970000,\"userId\":1716346406098296832,\"tradingOrderNo\":1724685206700535808,\"totalAmount\":1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1700031970000,\"payStatus\":4,\"purNum\":1,\"serveTypeName\":\"保洁清\"}', '2023-11-15 17:01:22', '2023-11-15 17:01:22');
INSERT INTO `biz_snapshot_0` VALUES ('1724718110453317632', 'order', '2311150000000000039', '1716346406098296832', 'NO_PAY', '{\"ordersStatus\":0,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0,\"lon\":\"116.34351\",\"serveAddress\":\"北京市北京市昌平区北京市昌平区回龙观街道弘文恒瑞文化传播公司正泽商务中心\",\"contactsName\":\"苗先生\",\"serveItemId\":1685894105234755585,\"price\":1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"realPayAmount\":1,\"serveStartTime\":1700053200000,\"id\":2311150000000000039,\"lat\":\"40.06024\",\"serveTypeId\":1678649931106705409,\"updateTime\":1700039813000,\"userId\":1716346406098296832,\"totalAmount\":1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1700039813000,\"payStatus\":2,\"purNum\":1,\"serveTypeName\":\"保洁清\"}', '2023-11-15 17:16:55', '2023-11-15 17:16:55');
INSERT INTO `biz_snapshot_0` VALUES ('1724718111493505024', 'order', '2311150000000000039', '1716346406098296832', 'DISPATCHING', '{\"tradingChannel\":\"WECHAT_PAY\",\"ordersStatus\":100,\"payTime\":1700039815986,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0,\"lon\":\"116.34351\",\"serveAddress\":\"北京市北京市昌平区北京市昌平区回龙观街道弘文恒瑞文化传播公司正泽商务中心\",\"contactsName\":\"苗先生\",\"serveItemId\":1685894105234755585,\"price\":1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"thirdOrderId\":\"1724718110755307521\",\"realPayAmount\":1,\"serveStartTime\":1700053200000,\"id\":2311150000000000039,\"lat\":\"40.06024\",\"serveTypeId\":1678649931106705409,\"updateTime\":1700039813000,\"userId\":1716346406098296832,\"tradingOrderNo\":1724718110755307520,\"totalAmount\":1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1700039813000,\"payStatus\":4,\"purNum\":1,\"serveTypeName\":\"保洁清\"}', '2023-11-15 17:16:56', '2023-11-15 17:16:56');
INSERT INTO `biz_snapshot_0` VALUES ('1724718375394988032', 'order', '2311150000000000039', '1716346406098296832', 'NO_SERVE', '{\"tradingChannel\":\"WECHAT_PAY\",\"ordersStatus\":200,\"payTime\":1700039815986,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0,\"lon\":\"116.34351\",\"serveAddress\":\"北京市北京市昌平区北京市昌平区回龙观街道弘文恒瑞文化传播公司正泽商务中心\",\"contactsName\":\"苗先生\",\"serveItemId\":1685894105234755585,\"price\":1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"thirdOrderId\":\"1724718110755307521\",\"realPayAmount\":1,\"serveStartTime\":1700053200000,\"id\":2311150000000000039,\"lat\":\"40.06024\",\"serveTypeId\":1678649931106705409,\"updateTime\":1700039813000,\"userId\":1716346406098296832,\"tradingOrderNo\":1724718110755307520,\"totalAmount\":1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1700039813000,\"payStatus\":4,\"purNum\":1,\"serveTypeName\":\"保洁清\"}', '2023-11-15 17:17:59', '2023-11-15 17:17:59');
INSERT INTO `biz_snapshot_0` VALUES ('1727537602208239616', 'order', '2311230000000000040', '1716346406098296832', 'NO_PAY', '{\"ordersStatus\":0,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0,\"lon\":\"116.34351\",\"serveAddress\":\"北京市北京市昌平区北京市昌平区回龙观街道弘文恒瑞文化传播公司正泽商务中心\",\"contactsName\":\"苗先生\",\"serveItemId\":1685894105234755585,\"price\":1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"realPayAmount\":1,\"serveStartTime\":1700730000000,\"id\":2311230000000000040,\"lat\":\"40.06024\",\"serveTypeId\":1678649931106705409,\"updateTime\":1700712086000,\"userId\":1716346406098296832,\"totalAmount\":1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1700712086000,\"payStatus\":2,\"purNum\":1,\"serveTypeName\":\"保洁清\"}', '2023-11-23 12:01:29', '2023-11-23 12:01:29');
INSERT INTO `biz_snapshot_0` VALUES ('1727537603172929536', 'order', '2311230000000000040', '1716346406098296832', 'DISPATCHING', '{\"tradingChannel\":\"WECHAT_PAY\",\"ordersStatus\":100,\"payTime\":1700712035219,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0,\"lon\":\"116.34351\",\"serveAddress\":\"北京市北京市昌平区北京市昌平区回龙观街道弘文恒瑞文化传播公司正泽商务中心\",\"contactsName\":\"苗先生\",\"serveItemId\":1685894105234755585,\"price\":1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"thirdOrderId\":\"1727537602568949760\",\"realPayAmount\":1,\"serveStartTime\":1700730000000,\"id\":2311230000000000040,\"lat\":\"40.06024\",\"serveTypeId\":1678649931106705409,\"updateTime\":1700712086000,\"userId\":1716346406098296832,\"tradingOrderNo\":1727537602564755456,\"totalAmount\":1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1700712086000,\"payStatus\":4,\"purNum\":1,\"serveTypeName\":\"保洁清\"}', '2023-11-23 12:01:29', '2023-11-23 12:01:29');
INSERT INTO `biz_snapshot_0` VALUES ('1727539382753202176', 'order', '2311230000000000041', '1716346406098296832', 'NO_PAY', '{\"ordersStatus\":0,\"cityCode\":\"010\",\"serveItemName\":\"空调维修\",\"serveId\":1715263395009191938,\"discountAmount\":0,\"lon\":\"116.23189\",\"serveAddress\":\"北京市北京市昌平区北京市昌平区城北街道北京市昌平区政府信息公开办公室北京市昌平区人民政府\",\"contactsName\":\"苗先生\",\"serveItemId\":1685850705647194113,\"price\":17,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/71460cfd-0f49-467f-923d-1f9a02912b81.png\",\"realPayAmount\":17,\"serveStartTime\":1700733600000,\"id\":2311230000000000041,\"lat\":\"40.221\",\"serveTypeId\":1678654490336124929,\"updateTime\":1700712513000,\"userId\":1716346406098296832,\"totalAmount\":17,\"unit\":4,\"contactsPhone\":\"13333333333\",\"createTime\":1700712513000,\"payStatus\":2,\"purNum\":1,\"serveTypeName\":\"日常维修\"}', '2023-11-23 12:08:34', '2023-11-23 12:08:34');
INSERT INTO `biz_snapshot_0` VALUES ('1727539382929362944', 'order', '2311230000000000041', '1716346406098296832', 'DISPATCHING', '{\"tradingChannel\":\"WECHAT_PAY\",\"ordersStatus\":100,\"payTime\":1700712459653,\"cityCode\":\"010\",\"serveItemName\":\"空调维修\",\"serveId\":1715263395009191938,\"discountAmount\":0,\"lon\":\"116.23189\",\"serveAddress\":\"北京市北京市昌平区北京市昌平区城北街道北京市昌平区政府信息公开办公室北京市昌平区人民政府\",\"contactsName\":\"苗先生\",\"serveItemId\":1685850705647194113,\"price\":17,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/71460cfd-0f49-467f-923d-1f9a02912b81.png\",\"thirdOrderId\":\"1727539382803533825\",\"realPayAmount\":17,\"serveStartTime\":1700733600000,\"id\":2311230000000000041,\"lat\":\"40.221\",\"serveTypeId\":1678654490336124929,\"updateTime\":1700712513000,\"userId\":1716346406098296832,\"tradingOrderNo\":1727539382803533824,\"totalAmount\":17,\"unit\":4,\"contactsPhone\":\"13333333333\",\"createTime\":1700712513000,\"payStatus\":4,\"purNum\":1,\"serveTypeName\":\"日常维修\"}', '2023-11-23 12:08:34', '2023-11-23 12:08:34');
INSERT INTO `biz_snapshot_0` VALUES ('1727952000148062208', 'order', '2311240000000000042', '1716346406098296832', 'NO_PAY', '{\"ordersStatus\":0,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0,\"lon\":\"116.34351\",\"serveAddress\":\"北京市北京市昌平区北京市昌平区回龙观街道弘文恒瑞文化传播公司正泽商务中心\",\"contactsName\":\"苗先生\",\"serveItemId\":1685894105234755585,\"price\":1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"realPayAmount\":1,\"serveStartTime\":1700816400000,\"id\":2311240000000000042,\"lat\":\"40.06024\",\"serveTypeId\":1678649931106705409,\"updateTime\":1700810885000,\"userId\":1716346406098296832,\"totalAmount\":1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1700810885000,\"payStatus\":2,\"purNum\":1,\"evaluationStatus\":0,\"serveTypeName\":\"保洁清\"}', '2023-11-24 15:28:07', '2023-11-24 15:28:07');
INSERT INTO `biz_snapshot_0` VALUES ('1727952000877871104', 'order', '2311240000000000042', '1716346406098296832', 'DISPATCHING', '{\"tradingChannel\":\"WECHAT_PAY\",\"ordersStatus\":100,\"payTime\":1700810835363,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0,\"lon\":\"116.34351\",\"serveAddress\":\"北京市北京市昌平区北京市昌平区回龙观街道弘文恒瑞文化传播公司正泽商务中心\",\"contactsName\":\"苗先生\",\"serveItemId\":1685894105234755585,\"price\":1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"thirdOrderId\":\"1727952000416497665\",\"realPayAmount\":1,\"serveStartTime\":1700816400000,\"id\":2311240000000000042,\"lat\":\"40.06024\",\"serveTypeId\":1678649931106705409,\"updateTime\":1700810885000,\"userId\":1716346406098296832,\"tradingOrderNo\":1727952000416497664,\"totalAmount\":1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1700810885000,\"payStatus\":4,\"purNum\":1,\"evaluationStatus\":0,\"serveTypeName\":\"保洁清\"}', '2023-11-24 15:28:07', '2023-11-24 15:28:07');
INSERT INTO `biz_snapshot_0` VALUES ('1727959688638754816', 'order', '2311240000000000042', '1716346406098296832', 'NO_SERVE', '{\"tradingChannel\":\"WECHAT_PAY\",\"ordersStatus\":200,\"payTime\":1700810835363,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0,\"lon\":\"116.34351\",\"serveAddress\":\"北京市北京市昌平区北京市昌平区回龙观街道弘文恒瑞文化传播公司正泽商务中心\",\"contactsName\":\"苗先生\",\"serveItemId\":1685894105234755585,\"price\":1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"thirdOrderId\":\"1727952000416497665\",\"realPayAmount\":1,\"serveStartTime\":1700816400000,\"id\":2311240000000000042,\"lat\":\"40.06024\",\"serveTypeId\":1678649931106705409,\"updateTime\":1700810885000,\"userId\":1716346406098296832,\"tradingOrderNo\":1727952000416497664,\"totalAmount\":1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1700810885000,\"payStatus\":4,\"purNum\":1,\"evaluationStatus\":0,\"serveTypeName\":\"保洁清\"}', '2023-11-24 15:58:42', '2023-11-24 15:58:42');
INSERT INTO `biz_snapshot_0` VALUES ('1727963430050086912', 'order', '2311240000000000043', '1716346406098296832', 'NO_PAY', '{\"ordersStatus\":0,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0,\"lon\":\"116.34351\",\"serveAddress\":\"北京市北京市昌平区北京市昌平区回龙观街道弘文恒瑞文化传播公司正泽商务中心\",\"contactsName\":\"苗先生\",\"serveItemId\":1685894105234755585,\"price\":1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"realPayAmount\":1,\"serveStartTime\":1700820000000,\"id\":2311240000000000043,\"lat\":\"40.06024\",\"serveTypeId\":1678649931106705409,\"updateTime\":1700813614000,\"userId\":1716346406098296832,\"totalAmount\":1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1700813614000,\"payStatus\":2,\"purNum\":1,\"evaluationStatus\":0,\"serveTypeName\":\"保洁清\"}', '2023-11-24 16:13:34', '2023-11-24 16:13:34');
INSERT INTO `biz_snapshot_0` VALUES ('1727963430226247680', 'order', '2311240000000000043', '1716346406098296832', 'DISPATCHING', '{\"tradingChannel\":\"WECHAT_PAY\",\"ordersStatus\":100,\"payTime\":1700813560404,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0,\"lon\":\"116.34351\",\"serveAddress\":\"北京市北京市昌平区北京市昌平区回龙观街道弘文恒瑞文化传播公司正泽商务中心\",\"contactsName\":\"苗先生\",\"serveItemId\":1685894105234755585,\"price\":1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"thirdOrderId\":\"1727963430092029953\",\"realPayAmount\":1,\"serveStartTime\":1700820000000,\"id\":2311240000000000043,\"lat\":\"40.06024\",\"serveTypeId\":1678649931106705409,\"updateTime\":1700813614000,\"userId\":1716346406098296832,\"tradingOrderNo\":1727963430092029952,\"totalAmount\":1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1700813614000,\"payStatus\":4,\"purNum\":1,\"evaluationStatus\":0,\"serveTypeName\":\"保洁清\"}', '2023-11-24 16:13:34', '2023-11-24 16:13:34');
INSERT INTO `biz_snapshot_0` VALUES ('1727963494709587968', 'order', '2311240000000000043', '1716346406098296832', 'NO_SERVE', '{\"tradingChannel\":\"WECHAT_PAY\",\"ordersStatus\":200,\"payTime\":1700813560404,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0,\"lon\":\"116.34351\",\"serveAddress\":\"北京市北京市昌平区北京市昌平区回龙观街道弘文恒瑞文化传播公司正泽商务中心\",\"contactsName\":\"苗先生\",\"serveItemId\":1685894105234755585,\"price\":1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"thirdOrderId\":\"1727963430092029953\",\"realPayAmount\":1,\"serveStartTime\":1700820000000,\"id\":2311240000000000043,\"lat\":\"40.06024\",\"serveTypeId\":1678649931106705409,\"updateTime\":1700813614000,\"userId\":1716346406098296832,\"tradingOrderNo\":1727963430092029952,\"totalAmount\":1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1700813614000,\"payStatus\":4,\"purNum\":1,\"evaluationStatus\":0,\"serveTypeName\":\"保洁清\"}', '2023-11-24 16:13:50', '2023-11-24 16:13:50');
INSERT INTO `biz_snapshot_0` VALUES ('1825407010567630848', 'order', '2311230000000000040', '1716346406098296832', 'NO_SERVE', '{\"tradingChannel\":\"WECHAT_PAY\",\"ordersStatus\":200,\"payTime\":1700712035219,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0,\"lon\":\"116.34351\",\"serveAddress\":\"北京市北京市昌平区北京市昌平区回龙观街道弘文恒瑞文化传播公司正泽商务中心\",\"contactsName\":\"苗先生\",\"serveItemId\":1685894105234755585,\"price\":1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"thirdOrderId\":\"1727537602568949760\",\"realPayAmount\":1,\"serveStartTime\":1700730000000,\"id\":2311230000000000040,\"lat\":\"40.06024\",\"serveTypeId\":1678649931106705409,\"updateTime\":1700712086000,\"userId\":1716346406098296832,\"tradingOrderNo\":1727537602564755456,\"totalAmount\":1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1700712086000,\"payStatus\":4,\"purNum\":1,\"serveTypeName\":\"保洁清\"}', '2024-08-19 13:39:32', '2024-08-19 13:39:32');
INSERT INTO `biz_snapshot_0` VALUES ('1825419511413907456', 'order', '2311230000000000040', '1716346406098296832', 'SERVING', '{\"tradingChannel\":\"WECHAT_PAY\",\"ordersStatus\":300,\"payTime\":1700712035219,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0,\"lon\":\"116.34351\",\"serveAddress\":\"北京市北京市昌平区北京市昌平区回龙观街道弘文恒瑞文化传播公司正泽商务中心\",\"contactsName\":\"苗先生\",\"serveItemId\":1685894105234755585,\"price\":1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"thirdOrderId\":\"1727537602568949760\",\"realPayAmount\":1,\"serveStartTime\":1700730000000,\"id\":2311230000000000040,\"lat\":\"40.06024\",\"serveTypeId\":1678649931106705409,\"updateTime\":1700712086000,\"userId\":1716346406098296832,\"tradingOrderNo\":1727537602564755456,\"totalAmount\":1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1700712086000,\"payStatus\":4,\"purNum\":1,\"serveTypeName\":\"保洁清\"}', '2024-08-19 14:29:12', '2024-08-19 14:29:12');
INSERT INTO `biz_snapshot_0` VALUES ('1825423562935410688', 'order', '2311230000000000040', '1716346406098296832', 'FINISHED', '{\"tradingChannel\":\"WECHAT_PAY\",\"ordersStatus\":500,\"payTime\":1700712035219,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0,\"lon\":\"116.34351\",\"serveAddress\":\"北京市北京市昌平区北京市昌平区回龙观街道弘文恒瑞文化传播公司正泽商务中心\",\"contactsName\":\"苗先生\",\"serveItemId\":1685894105234755585,\"price\":1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"thirdOrderId\":\"1727537602568949760\",\"realPayAmount\":1,\"serveStartTime\":1700730000000,\"id\":2311230000000000040,\"realServeEndTime\":1724049866747,\"lat\":\"40.06024\",\"serveTypeId\":1678649931106705409,\"updateTime\":1700712086000,\"userId\":1716346406098296832,\"tradingOrderNo\":1727537602564755456,\"totalAmount\":1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1700712086000,\"payStatus\":4,\"purNum\":1,\"serveTypeName\":\"保洁清\"}', '2024-08-19 14:45:18', '2024-08-19 14:45:18');

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
INSERT INTO `history_orders_sync` VALUES ('2310170000000000001', '1701074772546342912', '1678649931106705409', '1696338624494202882', '2', '1685894105234755585', '1693815624114970626', '010', '保洁清', '日常保洁', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png', '1', '500', '4', null, '2023-11-20 16:30:38', 'WECHAT_PAY', null, '2023-10-17 13:01:10', '1.00', '1', '1.00', '1.00', null, null, '0.00', '北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼', '13333333333', '吕女士', '服务人员02', '15066699132', null, null, '2023-10-17 09:58:11', '2023-10-17 23:00:00', null, '2023-11-19 21:12:46', '2023-11-20 16:29:46', '[\"https://jzo2o-oss.oss-cn-hangzhou.aliyuncs.com/b9498f65-7621-4d4d-9edf-0fa93cebffe6.png\"]', '已按照客户要求完成服务', '[\"https://jzo2o-oss.oss-cn-hangzhou.aliyuncs.com/3ee3a2cb-0bb9-40ec-bbb3-d94f0b5172db.jpg\"]', '', null, '116.34395', '40.06115', '2023-10-17 17:57:24', null, null, '2023', '202311', '20231120', '2023112016', '2023-12-05 16:29:48', '2023-11-20 20:49:35', null);
INSERT INTO `history_orders_sync` VALUES ('2310170000000000003', '1701074772546342912', '1678649931106705409', '1696338624494202882', '2', '1685894105234755585', '1693815624114970626', '010', '保洁清', '日常保洁', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png', '1', '500', '4', null, '2023-11-20 16:49:01', 'WECHAT_PAY', null, '2023-10-17 12:58:10', '1.00', '1', '1.00', '1.00', null, null, '0.00', '北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼', '13333333333', '吕女士', '服务人员02', '15066699132', null, null, '2023-10-17 12:58:02', '2023-10-17 22:30:00', null, '2023-11-20 16:48:03', '2023-11-20 16:48:10', '[\"https://jzo2o-oss.oss-cn-hangzhou.aliyuncs.com/0ffaa79b-1063-495f-9252-34093b5f2d42.png\"]', '', '[\"https://jzo2o-oss.oss-cn-hangzhou.aliyuncs.com/03f8be26-3da3-49d2-aa0e-fcdd461f4fe0.png\"]', '', null, '116.34395', '40.06115', '2023-10-17 20:57:11', null, null, '2023', '202311', '20231120', '2023112016', '2023-12-05 16:48:10', '2023-11-20 20:49:35', null);
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
  `refund_status` int DEFAULT NULL,
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
  KEY `query_index_0` (`orders_status`,`user_id`,`display`,`sort_by` DESC)
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
  KEY `query_index_0` (`orders_status`,`user_id`,`display`,`sort_by` DESC) COMMENT '我的订单列表查询索引',
  KEY `query_index_1` (`user_id`,`display`,`sort_by` DESC)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='订单表';

-- ----------------------------
-- Records of orders_0
-- ----------------------------
INSERT INTO `orders_0` VALUES ('2310280000000000004', '1716346406098296832', '1678649931106705409', '保洁清', '1685894105234755585', '日常保洁', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png', '1', '1693815624114970626', '700', '4', '2', '1.00', '1', '1.00', '1.00', '0.00', '010', '河南省郑州市新郑市河南省郑州市新郑市郑港街道黑马程序员航投大厦', '13333333333', '苗先生', '2023-10-29 10:00:00', '113.83892', '34.57203', '2023-10-28 17:03:25', null, '0', '1718190563888783362', '4200001984202310284056772128', '1718200723722047490', '50310007642023102804403909410', 'WECHAT_PAY', '1', '1698544800004', null, '2023-10-28 08:52:01', '2023-10-28 09:40:35');
INSERT INTO `orders_0` VALUES ('2310280000000000005', '1716346406098296832', '1678649931106705409', '保洁清', '1685894105234755585', '日常保洁', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png', '1', '1693815624114970626', '700', '4', '2', '1.00', '1', '1.00', '1.00', '0.00', '010', '河南省郑州市新郑市河南省郑州市新郑市郑港街道黑马程序员航投大厦', '13333333333', '苗先生', '2023-10-29 13:30:00', '113.83892', '34.57203', '2023-10-28 21:52:17', null, '0', '1718264316280008706', '4200001978202310288067344599', '1718264509826166786', '50300007632023102815800615452', 'WECHAT_PAY', '1', '1698557400005', null, '2023-10-28 13:52:37', '2023-10-28 13:53:51');
INSERT INTO `orders_0` VALUES ('2311020000000000021', '1716346406098296832', '1678649931106705409', '保洁清', '1685894105234755585', '日常保洁', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png', '1', '1693815624114970626', '600', '2', null, '1.00', '1', '1.00', '1.00', '0.00', '010', '河南省郑州市新郑市河南省郑州市新郑市郑港街道黑马程序员航投大厦', '13333333333', '苗先生', '2023-11-02 19:00:00', '113.83892', '34.57203', null, null, '0', null, null, null, null, null, '1', '1698922800021', null, '2023-11-02 17:24:24', '2023-11-02 17:27:25');
INSERT INTO `orders_0` VALUES ('2311020000000000022', '1716346406098296832', '1678649931106705409', '保洁清', '1685894105234755585', '日常保洁', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png', '1', '1693815624114970626', '700', '4', '2', '1.00', '1', '1.00', '1.00', '0.00', '010', '河南省郑州市新郑市河南省郑州市新郑市郑港街道黑马程序员航投大厦', '13333333333', '苗先生', '2023-11-02 19:30:00', '113.83892', '34.57203', '2023-11-02 17:34:36', null, '0', '1720010020076392450', '4200001988202311029499853500', '1720011571457167361', '50310007422023110204710514938', 'WECHAT_PAY', '1', '1698924600022', null, '2023-11-02 17:29:31', '2023-11-02 17:36:05');
INSERT INTO `orders_0` VALUES ('2311020000000000023', '1716346406098296832', '1678649931106705409', '保洁清', '1685894105234755585', '日常保洁', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png', '1', '1693815624114970626', '700', '4', '2', '1.00', '1', '1.00', '1.00', '0.00', '010', '河南省郑州市新郑市河南省郑州市新郑市郑港街道黑马程序员航投大厦', '13333333333', '苗先生', '2023-11-02 22:00:00', '113.83892', '34.57203', '2023-11-02 18:22:56', null, '0', '1720023598087016449', '4200001974202311028474971242', '1720023788378394625', '50310207402023110203907454908', 'WECHAT_PAY', '1', '1698933600023', null, '2023-11-02 18:22:59', '2023-11-02 18:24:25');
INSERT INTO `orders_0` VALUES ('2311020000000000024', '1716346406098296832', '1678649931106705409', '保洁清', '1685894105234755585', '日常保洁', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png', '1', '1693815624114970626', '600', '2', null, '1.00', '1', '1.00', '1.00', '0.00', '010', '河南省郑州市新郑市河南省郑州市新郑市郑港街道黑马程序员航投大厦', '13333333333', '苗先生', '2023-11-02 21:00:00', '113.83892', '34.57203', null, null, '0', null, null, null, null, null, '1', '1698930000024', null, '2023-11-02 18:53:40', '2023-11-02 18:54:30');
INSERT INTO `orders_0` VALUES ('2311020000000000025', '1716346406098296832', '1678649931106705409', '保洁清', '1685894105234755585', '日常保洁', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png', '1', '1693815624114970626', '600', '2', null, '1.00', '1', '1.00', '1.00', '0.00', '010', '河南省郑州市新郑市河南省郑州市新郑市郑港街道黑马程序员航投大厦', '13333333333', '苗先生', '2023-11-02 21:00:00', '113.83892', '34.57203', null, null, '0', null, null, null, null, null, '1', '1698930000025', null, '2023-11-02 19:00:07', '2023-11-02 19:00:47');
INSERT INTO `orders_0` VALUES ('2311020000000000026', '1716346406098296832', '1678649931106705409', '保洁清', '1685894105234755585', '日常保洁', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png', '1', '1693815624114970626', '600', '2', null, '1.00', '1', '1.00', '1.00', '0.00', '010', '河南省郑州市新郑市河南省郑州市新郑市郑港街道黑马程序员航投大厦', '13333333333', '苗先生', '2023-11-02 22:30:00', '113.83892', '34.57203', null, null, '0', null, null, null, null, null, '1', '1698935400026', null, '2023-11-02 19:06:02', '2023-11-02 19:06:23');
INSERT INTO `orders_0` VALUES ('2311020000000000027', '1716346406098296832', '1678649931106705409', '保洁清', '1685894105234755585', '日常保洁', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png', '1', '1693815624114970626', '600', '2', null, '1.00', '1', '1.00', '1.00', '0.00', '010', '河南省郑州市新郑市河南省郑州市新郑市郑港街道黑马程序员航投大厦', '13333333333', '苗先生', '2023-11-02 23:00:00', '113.83892', '34.57203', null, null, '0', null, null, null, null, null, '1', '1698937200027', null, '2023-11-02 19:08:52', '2023-11-02 19:09:08');
INSERT INTO `orders_0` VALUES ('2311020000000000028', '1716346406098296832', '1678649931106705409', '保洁清', '1685894105234755585', '日常保洁', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png', '1', '1693815624114970626', '600', '2', null, '1.00', '1', '1.00', '1.00', '0.00', '010', '河南省郑州市新郑市河南省郑州市新郑市郑港街道黑马程序员航投大厦', '13333333333', '苗先生', '2023-11-02 23:00:00', '113.83892', '34.57203', null, null, '0', null, null, null, null, null, '1', '1698937200028', null, '2023-11-02 20:57:59', '2023-11-03 19:04:57');
INSERT INTO `orders_0` VALUES ('2311030000000000029', '1716346406098296832', '1678649931106705409', '保洁清', '1685894105234755585', '日常保洁', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png', '1', '1693815624114970626', '600', '2', null, '1.00', '1', '1.00', '1.00', '0.00', '010', '河南省郑州市新郑市河南省郑州市新郑市郑港街道黑马程序员航投大厦', '13333333333', '苗先生', '2023-11-03 20:00:00', '113.83892', '34.57203', null, null, '0', '1720326424222777345', null, null, null, 'WECHAT_PAY', '1', '1699012800029', null, '2023-11-03 14:25:24', '2023-11-03 14:27:51');
INSERT INTO `orders_0` VALUES ('2311030000000000030', '1716346406098296832', '1678649931106705409', '保洁清', '1685894105234755585', '日常保洁', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png', '1', '1693815624114970626', '600', '2', null, '1.00', '1', '1.00', '1.00', '0.00', '010', '河南省郑州市新郑市河南省郑州市新郑市郑港街道黑马程序员航投大厦', '13333333333', '苗先生', '2023-11-03 21:30:00', '113.83892', '34.57203', null, null, '0', null, null, null, null, null, '1', '1699018200030', null, '2023-11-03 18:27:50', '2023-11-03 19:11:14');
INSERT INTO `orders_0` VALUES ('2311030000000000031', '1716346406098296832', '1678649931106705409', '保洁清', '1685894105234755585', '日常保洁', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png', '1', '1693815624114970626', '600', '2', null, '1.00', '1', '1.00', '1.00', '0.00', '010', '河南省郑州市新郑市河南省郑州市新郑市郑港街道黑马程序员航投大厦', '13333333333', '苗先生', '2023-11-03 22:30:00', '113.83892', '34.57203', null, null, '0', null, null, null, null, null, '1', '1699021800031', null, '2023-11-02 19:19:14', '2023-11-03 19:23:34');
INSERT INTO `orders_0` VALUES ('2311090000000000032', '1716346406098296832', '1678654490336124929', '日常维修', '1685850705647194113', '空调维修', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/71460cfd-0f49-467f-923d-1f9a02912b81.png', '4', '1715263395009191938', '0', '2', null, '17.00', '1', '17.00', '17.00', '0.00', '010', '河南省郑州市新郑市河南省郑州市新郑市郑港街道黑马程序员航投大厦', '13333333333', '苗先生', '2023-11-10 08:00:00', '113.83892', '34.57203', null, null, '0', null, null, null, null, null, '1', '1699574400032', null, '2023-11-09 20:32:29', '2023-11-09 20:32:29');
INSERT INTO `orders_0` VALUES ('2311090000000000033', '1716346406098296832', '1678654490336124929', '日常维修', '1685850705647194113', '空调维修', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/71460cfd-0f49-467f-923d-1f9a02912b81.png', '4', '1715263395009191938', '0', '2', null, '17.00', '1', '17.00', '13.60', '3.40', '010', '河南省郑州市新郑市河南省郑州市新郑市郑港街道黑马程序员航投大厦', '13333333333', '苗先生', '2023-11-11 09:00:00', '113.83892', '34.57203', null, null, '0', null, null, null, null, null, '1', '1699664400033', null, '2023-11-09 20:35:19', '2023-11-09 20:35:19');
INSERT INTO `orders_0` VALUES ('2311090000000000037', '1716346406098296832', '1678654490336124929', '日常维修', '1685850705647194113', '空调维修', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/71460cfd-0f49-467f-923d-1f9a02912b81.png', '4', '1715263395009191938', '600', '2', null, '17.00', '1', '17.00', '13.60', '3.40', '010', '河南省郑州市新郑市河南省郑州市新郑市郑港街道黑马程序员航投大厦', '13333333333', '苗先生', '2023-11-10 09:30:00', '113.83892', '34.57203', null, null, '0', null, null, null, null, null, '1', '1699579800037', null, '2023-11-09 21:41:58', '2023-11-09 21:44:33');
INSERT INTO `orders_0` VALUES ('2311150000000000037', '1716346406098296832', '1678649931106705409', '保洁清', '1685894105234755585', '日常保洁', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png', '1', '1693815624114970626', '700', '4', '1', '1.00', '1', '1.00', '1.00', '0.00', '010', '河南省郑州市新郑市河南省郑州市新郑市郑港街道黑马程序员航投大厦', '13333333333', '苗先生', '2023-11-15 20:30:00', '113.83892', '34.57203', '2023-11-15 15:00:52', null, '0', '1724683868990189568', '1724683868990189569', null, null, 'WECHAT_PAY', '1', '1700051400037', null, '2023-11-15 15:00:49', '2023-11-15 15:08:15');
INSERT INTO `orders_0` VALUES ('2311150000000000038', '1716346406098296832', '1678649931106705409', '保洁清', '1685894105234755585', '日常保洁', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png', '1', '1693815624114970626', '200', '4', null, '1.00', '1', '1.00', '1.00', '0.00', '010', '北京市北京市昌平区北京市昌平区回龙观街道弘文恒瑞文化传播公司正泽商务中心', '13333333333', '苗先生', '2023-11-15 20:30:00', '116.34351', '40.06024', '2023-11-15 15:06:11', null, '0', '1724685206700535808', '1724685206700535809', null, null, 'WECHAT_PAY', '1', '1700051400038', null, '2023-11-15 15:06:10', '2023-11-15 17:01:20');
INSERT INTO `orders_0` VALUES ('2311150000000000039', '1716346406098296832', '1678649931106705409', '保洁清', '1685894105234755585', '日常保洁', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png', '1', '1693815624114970626', '200', '4', null, '1.00', '1', '1.00', '1.00', '0.00', '010', '北京市北京市昌平区北京市昌平区回龙观街道弘文恒瑞文化传播公司正泽商务中心', '13333333333', '苗先生', '2023-11-15 21:00:00', '116.34351', '40.06024', '2023-11-15 17:16:56', null, '0', '1724718110755307520', '1724718110755307521', null, null, 'WECHAT_PAY', '1', '1700053200039', null, '2023-11-15 17:16:53', '2023-11-15 17:17:58');
INSERT INTO `orders_0` VALUES ('2311230000000000040', '1716346406098296832', '1678649931106705409', '保洁清', '1685894105234755585', '日常保洁', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png', '1', '1693815624114970626', '500', '4', null, '1.00', '1', '1.00', '1.00', '0.00', '010', '北京市北京市昌平区北京市昌平区回龙观街道弘文恒瑞文化传播公司正泽商务中心', '13333333333', '苗先生', '2023-11-23 17:00:00', '116.34351', '40.06024', '2023-11-23 12:00:35', null, '0', '1727537602564755456', '1727537602568949760', null, null, 'WECHAT_PAY', '1', '1700730000040', '2024-08-19 14:44:27', '2023-11-23 12:01:26', '2024-08-19 14:45:18');
INSERT INTO `orders_0` VALUES ('2311230000000000041', '1716346406098296832', '1678654490336124929', '日常维修', '1685850705647194113', '空调维修', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/71460cfd-0f49-467f-923d-1f9a02912b81.png', '4', '1715263395009191938', '100', '4', null, '17.00', '1', '17.00', '17.00', '0.00', '010', '北京市北京市昌平区北京市昌平区城北街道北京市昌平区政府信息公开办公室北京市昌平区人民政府', '13333333333', '苗先生', '2023-11-23 18:00:00', '116.23189', '40.22100', '2023-11-23 12:07:40', null, '0', '1727539382803533824', '1727539382803533825', null, null, 'WECHAT_PAY', '1', '1700733600041', null, '2023-11-23 12:08:33', '2023-11-23 12:08:34');
INSERT INTO `orders_0` VALUES ('2311240000000000042', '1716346406098296832', '1678649931106705409', '保洁清', '1685894105234755585', '日常保洁', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png', '1', '1693815624114970626', '200', '4', null, '1.00', '1', '1.00', '1.00', '0.00', '010', '北京市北京市昌平区北京市昌平区回龙观街道弘文恒瑞文化传播公司正泽商务中心', '13333333333', '苗先生', '2023-11-24 17:00:00', '116.34351', '40.06024', '2023-11-24 15:27:15', null, '0', '1727952000416497664', '1727952000416497665', null, null, 'WECHAT_PAY', '1', '1700816400042', null, '2023-11-24 15:28:05', '2023-11-24 15:58:40');
INSERT INTO `orders_0` VALUES ('2311240000000000043', '1716346406098296832', '1678649931106705409', '保洁清', '1685894105234755585', '日常保洁', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png', '1', '1693815624114970626', '200', '4', null, '1.00', '1', '1.00', '1.00', '0.00', '010', '北京市北京市昌平区北京市昌平区回龙观街道弘文恒瑞文化传播公司正泽商务中心', '13333333333', '苗先生', '2023-11-24 18:00:00', '116.34351', '40.06024', '2023-11-24 16:12:40', null, '0', '1727963430092029952', '1727963430092029953', null, null, 'WECHAT_PAY', '1', '1700820000043', null, '2023-11-24 16:13:34', '2023-11-24 16:13:50');

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
  KEY `query_index_1` (`user_id`,`display`,`sort_by` DESC),
  KEY `query_index_0` (`orders_status`,`user_id`,`display`,`sort_by` DESC)
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
  KEY `query_index_1` (`user_id`,`display`,`sort_by` DESC),
  KEY `query_index_0` (`orders_status`,`user_id`,`display`,`sort_by` DESC)
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
  `biz_id` varchar(255) DEFAULT NULL COMMENT '业务id',
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
INSERT INTO `state_persister` VALUES ('1706149756021358593', 'order', '2309250000000000045', 'DISPATCHING', '2023-09-25 03:33:46', '2023-09-25 03:33:46');
INSERT INTO `state_persister` VALUES ('1706150321082187777', 'order', '2309250000000000046', 'DISPATCHING', '2023-09-25 03:36:01', '2023-09-25 03:36:01');
INSERT INTO `state_persister` VALUES ('1706150547121618945', 'order', '2309250000000000047', 'DISPATCHING', '2023-09-25 03:36:55', '2023-09-25 03:36:55');
INSERT INTO `state_persister` VALUES ('1706184714437795841', 'order', '2309250000000000051', 'DISPATCHING', '2023-09-25 05:52:41', '2023-09-25 05:52:41');
INSERT INTO `state_persister` VALUES ('1706189605004648449', 'order', '2309250000000000055', 'DISPATCHING', '2023-09-25 06:12:07', '2023-09-25 06:12:09');
INSERT INTO `state_persister` VALUES ('1706190087186030594', 'order', '2309250000000000056', 'DISPATCHING', '2023-09-25 06:14:02', '2023-09-25 06:14:02');
INSERT INTO `state_persister` VALUES ('1706190243935559681', 'order', '2309250000000000057', 'CLOSED', '2023-09-25 06:14:39', '2023-09-26 05:38:06');
INSERT INTO `state_persister` VALUES ('1706195187010920449', 'order', '2309250000000000060', 'CLOSED', '2023-09-25 06:34:18', '2023-09-26 05:37:52');
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
