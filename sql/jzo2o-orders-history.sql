/*
Navicat MySQL Data Transfer

Source Server         : 192.168.101.68
Source Server Version : 80026
Source Host           : 192.168.101.68:3306
Source Database       : jzo2o-orders-history

Target Server Type    : MYSQL
Target Server Version : 80026
File Encoding         : 65001

Date: 2024-08-24 21:21:54
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for history_orders
-- ----------------------------
DROP TABLE IF EXISTS `history_orders`;
CREATE TABLE `history_orders` (
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
  `trading_channel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '支付渠道',
  `third_order_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '三方支付渠道',
  `dispatch_time` datetime DEFAULT NULL COMMENT '派单时间',
  `price` decimal(10,2) NOT NULL COMMENT '单价',
  `pur_num` int NOT NULL DEFAULT '1' COMMENT '购买数量',
  `total_amount` decimal(10,2) NOT NULL COMMENT '订单总金额',
  `real_pay_amount` decimal(10,2) NOT NULL COMMENT '实际支付金额',
  `third_refund_order_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '三方退款流水',
  `discount_amount` decimal(10,2) NOT NULL COMMENT '优惠金额',
  `serve_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '服务详细地址',
  `contacts_phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '联系人手机号',
  `contacts_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '联系人姓名',
  `canceler_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '取消人',
  `serve_provider_staff_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '服务人姓名',
  `serve_provider_staff_phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '服务人手机号',
  `institution_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '机构名称',
  `institution_phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '机构电话',
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
  `year` int DEFAULT NULL COMMENT '完结年份，格式yyyy',
  `month` int DEFAULT NULL COMMENT '完结月份，格式yyyyMM',
  `day` int DEFAULT NULL COMMENT '完结日，格式yyyyMMdd',
  `hour` int DEFAULT NULL COMMENT '完结小时，格式yyyyMMddHH',
  `evaluation_time` datetime DEFAULT NULL COMMENT '评价时间',
  `evaluation_score` double(10,2) DEFAULT NULL COMMENT '评分',
  `display` int DEFAULT '1' COMMENT '用户端是否展示，1：展示，0：隐藏',
  `sort_time` datetime NOT NULL COMMENT '排序时间字段',
  PRIMARY KEY (`id`),
  KEY `user_id_index` (`user_id`),
  KEY `serve_provider_id_index` (`serve_provider_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='订单表';

-- ----------------------------
-- Records of history_orders
-- ----------------------------
INSERT INTO `history_orders` VALUES ('2310170000000000001', '1701074772546342912', '1678649931106705409', '1696338624494202882', '2', '1685894105234755585', '1693815624114970626', '010', '保洁清', '日常保洁', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png', '1', '500', '4', null, '2023-11-20 16:30:38', 'WECHAT_PAY', null, '2023-10-17 13:01:10', '1.00', '1', '1.00', '1.00', null, '0.00', '北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼 ', '13333333333', '吕女士', null, '服务人员02', '15066699132', null, null, '2023-10-17 09:58:11', '2023-10-17 23:00:00', null, '2023-11-19 21:12:46', '2023-11-20 16:29:46', '[\"\\\"https://jzo2o-oss.oss-cn-hangzhou.aliyuncs.com/b9498f65-7621-4d4d-9edf-0fa93cebffe6.png\\\"\"]', '已按照客户要求完成服务', '[\"\\\"https://jzo2o-oss.oss-cn-hangzhou.aliyuncs.com/3ee3a2cb-0bb9-40ec-bbb3-d94f0b5172db.jpg\\\"\"]', '', null, '116.34395', '40.06115', '2023-10-17 17:57:24', null, null, '2023', '202311', '20231120', '2023112016', null, null, '1', '2023-11-19 16:29:48');
INSERT INTO `history_orders` VALUES ('2310170000000000003', '1701074772546342912', '1678649931106705409', '1696338624494202882', '2', '1685894105234755585', '1693815624114970626', '010', '保洁清', '日常保洁', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png', '1', '500', '4', null, '2023-11-20 16:49:01', 'WECHAT_PAY', null, '2023-10-17 12:58:10', '1.00', '1', '1.00', '1.00', null, '0.00', '北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼 ', '13333333333', '吕女士', null, '服务人员02', '15066699132', null, null, '2023-10-17 12:58:02', '2023-10-17 22:30:00', null, '2023-11-20 16:48:03', '2023-11-20 16:48:10', '[\"\\\"https://jzo2o-oss.oss-cn-hangzhou.aliyuncs.com/0ffaa79b-1063-495f-9252-34093b5f2d42.png\\\"\"]', '', '[\"\\\"https://jzo2o-oss.oss-cn-hangzhou.aliyuncs.com/03f8be26-3da3-49d2-aa0e-fcdd461f4fe0.png\\\"\"]', '', null, '116.34395', '40.06115', '2023-10-17 20:57:11', null, null, '2023', '202311', '20231120', '2023112016', null, null, '1', '2023-11-19 16:48:10');

-- ----------------------------
-- Table structure for history_orders_serve
-- ----------------------------
DROP TABLE IF EXISTS `history_orders_serve`;
CREATE TABLE `history_orders_serve` (
  `id` bigint NOT NULL COMMENT '服务单id，和',
  `serve_provider_id` bigint DEFAULT NULL COMMENT '服务人员或服务机构id',
  `serve_provider_type` int DEFAULT NULL COMMENT '服务者类型，2：服务端服务，3：机构端服务',
  `institution_staff_id` bigint DEFAULT NULL COMMENT '机构服务人员id',
  `institution_staff_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '机构服务人员名称',
  `institution_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '机构名称',
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
  `canceler_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '取消人姓名',
  `cancel_time` datetime DEFAULT NULL COMMENT '退款时间',
  `cancel_reason` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '退款原因',
  `real_serve_start_time` datetime DEFAULT NULL COMMENT '实际服务开始时间',
  `real_serve_end_time` datetime DEFAULT NULL COMMENT '实际服务完结时间',
  `serve_before_imgs` json DEFAULT NULL COMMENT '服务前照片',
  `serve_after_imgs` json DEFAULT NULL COMMENT '服务后照片',
  `serve_before_illustrate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '服务前说明',
  `serve_after_illustrate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '服务后说明',
  `refund_time` datetime DEFAULT NULL COMMENT '退款时间',
  `refund_reason` varchar(200) DEFAULT NULL COMMENT '退款原因',
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
-- Records of history_orders_serve
-- ----------------------------
INSERT INTO `history_orders_serve` VALUES ('2310170000000000001', '1696338624494202882', '2', null, null, null, '2', '吕女士', '13333333333', '北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼 ', '010', '1678649931106705409', '保洁清', '2023-10-17 23:00:00', '日常保洁', '1685894105234755585', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png', '3', '服务人员02', '15066699132', null, null, null, '2023-11-19 21:12:46', '2023-11-20 16:29:46', '[\"https://jzo2o-oss.oss-cn-hangzhou.aliyuncs.com/b9498f65-7621-4d4d-9edf-0fa93cebffe6.png\"]', '[\"https://jzo2o-oss.oss-cn-hangzhou.aliyuncs.com/3ee3a2cb-0bb9-40ec-bbb3-d94f0b5172db.jpg\"]', '已按照客户要求完成服务', '', null, null, '1.00', null, '1', '1', '1', '0', '1696338624494202882', '2023-11-19 16:29:49', null);
INSERT INTO `history_orders_serve` VALUES ('2310170000000000003', '1696338624494202882', '2', null, null, null, '2', '吕女士', '13333333333', '北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼 ', '010', '1678649931106705409', '保洁清', '2023-10-17 22:30:00', '日常保洁', '1685894105234755585', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png', '3', '服务人员02', '15066699132', null, null, null, '2023-11-20 16:48:03', '2023-11-20 16:48:10', '[\"https://jzo2o-oss.oss-cn-hangzhou.aliyuncs.com/0ffaa79b-1063-495f-9252-34093b5f2d42.png\"]', '[\"https://jzo2o-oss.oss-cn-hangzhou.aliyuncs.com/03f8be26-3da3-49d2-aa0e-fcdd461f4fe0.png\"]', '', '', null, null, '1.00', null, '1', '1', '1', '0', '1696338624494202882', '2023-11-19 16:29:49', null);

-- ----------------------------
-- Table structure for history_orders_serve_sync
-- ----------------------------
DROP TABLE IF EXISTS `history_orders_serve_sync`;
CREATE TABLE `history_orders_serve_sync` (
  `id` bigint NOT NULL COMMENT '服务单id，和',
  `serve_provider_id` bigint DEFAULT NULL COMMENT '服务人员或服务机构id',
  `serve_provider_type` int DEFAULT NULL COMMENT '服务者类型，2：服务端服务，3：机构端服务',
  `institution_staff_id` bigint DEFAULT NULL COMMENT '机构服务人员id',
  `institution_staff_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '机构服务人员名称',
  `institution_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '机构名称',
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
  `canceler_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '取消人姓名',
  `cancel_time` datetime DEFAULT NULL COMMENT '退款时间',
  `cancel_reason` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '退款原因',
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
  `refund_status` int DEFAULT NULL,
  `trade_finish_time` datetime DEFAULT NULL COMMENT '订单完成时间',
  `trading_channel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '支付渠道，ALI_PAY：支付宝，WECHAT_PAY：微信',
  `third_order_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '支付流水',
  `dispatch_time` datetime DEFAULT NULL COMMENT '派单时间',
  `price` decimal(10,2) NOT NULL COMMENT '单价',
  `pur_num` int NOT NULL DEFAULT '1' COMMENT '购买数量',
  `total_amount` decimal(10,2) NOT NULL COMMENT '订单总金额',
  `real_pay_amount` decimal(10,2) NOT NULL COMMENT '实际支付金额',
  `third_refund_order_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '退款流水',
  `canceler_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '取消人姓名',
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='历史订单完成15天后同步到历史订单同步表中，通过canal同步到历史订单库中；1天后删除（删除条件当天数据和历史订单库中的订单数据数量一致）';

-- ----------------------------
-- Records of history_orders_sync
-- ----------------------------
INSERT INTO `history_orders_sync` VALUES ('2310170000000000001', '1701074772546342912', '1678649931106705409', '1696338624494202882', '2', '1685894105234755585', '1693815624114970626', '010', '保洁清', '日常保洁', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png', '1', '500', '4', null, '2023-11-20 16:30:38', 'WECHAT_PAY', null, '2023-10-17 13:01:10', '1.00', '1', '1.00', '1.00', null, null, '0.00', '北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼', '13333333333', '吕女士', '服务人员02', '15066699132', null, null, '2023-10-17 09:58:11', '2023-10-17 23:00:00', null, '2023-11-19 21:12:46', '2023-11-20 16:29:46', '[\"\\\"https://jzo2o-oss.oss-cn-hangzhou.aliyuncs.com/b9498f65-7621-4d4d-9edf-0fa93cebffe6.png\\\"\"]', '已按照客户要求完成服务', '[\"\\\"https://jzo2o-oss.oss-cn-hangzhou.aliyuncs.com/3ee3a2cb-0bb9-40ec-bbb3-d94f0b5172db.jpg\\\"\"]', '', null, '116.34395', '40.06115', '2023-10-17 17:57:24', null, null, '2023', '202311', '20231120', '2023112016', '2023-12-05 16:29:48', '2023-11-20 20:49:35');
INSERT INTO `history_orders_sync` VALUES ('2310170000000000003', '1701074772546342912', '1678649931106705409', '1696338624494202882', '2', '1685894105234755585', '1693815624114970626', '010', '保洁清', '日常保洁', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png', '1', '500', '4', null, '2023-11-20 16:49:01', 'WECHAT_PAY', null, '2023-10-17 12:58:10', '1.00', '1', '1.00', '1.00', null, null, '0.00', '北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼', '13333333333', '吕女士', '服务人员02', '15066699132', null, null, '2023-10-17 12:58:02', '2023-10-17 22:30:00', null, '2023-11-20 16:48:03', '2023-11-20 16:48:10', '[\"\\\"https://jzo2o-oss.oss-cn-hangzhou.aliyuncs.com/0ffaa79b-1063-495f-9252-34093b5f2d42.png\\\"\"]', '', '[\"\\\"https://jzo2o-oss.oss-cn-hangzhou.aliyuncs.com/03f8be26-3da3-49d2-aa0e-fcdd461f4fe0.png\\\"\"]', '', null, '116.34395', '40.06115', '2023-10-17 20:57:11', null, null, '2023', '202311', '20231120', '2023112016', '2023-12-05 16:48:10', '2023-11-20 20:49:35');

-- ----------------------------
-- Table structure for stat_day
-- ----------------------------
DROP TABLE IF EXISTS `stat_day`;
CREATE TABLE `stat_day` (
  `id` bigint NOT NULL,
  `stat_time` int NOT NULL COMMENT '统计日期，格式：yyyyMMdd',
  `effective_order_num` int NOT NULL DEFAULT '0' COMMENT '有效订单数',
  `cancel_order_num` int NOT NULL DEFAULT '0' COMMENT '取消订单数',
  `close_order_num` int NOT NULL DEFAULT '0' COMMENT '关闭订单数',
  `effective_order_total_amount` decimal(10,2) NOT NULL COMMENT '有效总金额',
  `real_pay_average_price` decimal(10,2) NOT NULL COMMENT '实付订单均价',
  `total_order_num` int NOT NULL DEFAULT '0' COMMENT '订单总数',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='日统计表';

-- ----------------------------
-- Records of stat_day
-- ----------------------------
INSERT INTO `stat_day` VALUES ('20231120', '20231120', '2', '0', '0', '2.00', '1.00', '2', '2023-11-21 19:35:00', '2023-11-21 19:35:00');

-- ----------------------------
-- Table structure for stat_hour
-- ----------------------------
DROP TABLE IF EXISTS `stat_hour`;
CREATE TABLE `stat_hour` (
  `id` bigint NOT NULL,
  `stat_time` int NOT NULL COMMENT '统计日期，格式：yyyyMMdd',
  `effective_order_num` int NOT NULL DEFAULT '0' COMMENT '有效订单数',
  `cancel_order_num` int NOT NULL DEFAULT '0' COMMENT '取消订单数',
  `close_order_num` int NOT NULL DEFAULT '0' COMMENT '关闭订单数',
  `effective_order_total_amount` decimal(10,2) NOT NULL COMMENT '有效总金额',
  `real_pay_average_price` decimal(10,2) NOT NULL COMMENT '实付订单均价',
  `total_order_num` int NOT NULL DEFAULT '0' COMMENT '订单总数',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='小时统计表';

-- ----------------------------
-- Records of stat_hour
-- ----------------------------
INSERT INTO `stat_hour` VALUES ('2023112016', '2023112016', '2', '0', '0', '2.00', '1.00', '2', '2023-11-21 19:35:00', '2023-11-21 19:35:00');
