/*
Navicat MySQL Data Transfer

Source Server         : 192.168.101.68
Source Server Version : 80026
Source Host           : 192.168.101.68:3306
Source Database       : jzo2o-customer

Target Server Type    : MYSQL
Target Server Version : 80026
File Encoding         : 65001

Date: 2024-08-24 21:15:28
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for address_book
-- ----------------------------
DROP TABLE IF EXISTS `address_book`;
CREATE TABLE `address_book` (
  `id` bigint NOT NULL COMMENT '主键',
  `user_id` bigint NOT NULL COMMENT '用户id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '名称',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '电话',
  `province` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '省份',
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '市级',
  `county` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '区/县',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '详细地址',
  `lon` double(10,5) DEFAULT NULL COMMENT '经度',
  `lat` double(10,5) DEFAULT NULL COMMENT '纬度',
  `is_default` int NOT NULL DEFAULT '0' COMMENT '是否为默认地址，0：否，1：是',
  `is_deleted` int NOT NULL DEFAULT '0' COMMENT '是否已删除，0：未删除，1：已删除',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `create_by` bigint DEFAULT NULL COMMENT '创建者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `update_by` bigint DEFAULT NULL COMMENT '更新者',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='地址薄';

-- ----------------------------
-- Records of address_book
-- ----------------------------
INSERT INTO `address_book` VALUES ('1694341433495945217', '1694325482809589760', '老王', '13551231121', '北京', '北京市', '东城区', '3333333333', null, null, '1', '0', '2023-08-23 21:30:51', '1694325482809589760', '2023-08-23 21:30:51', '1694325482809589760');
INSERT INTO `address_book` VALUES ('1694341433495945218', '1', '老王', '13551231121', '北京', '北京市', '东城区', '3333333333', null, null, '1', '0', '2023-08-23 21:30:51', '1694325482809589760', '2023-08-23 21:30:51', '1694325482809589760');
INSERT INTO `address_book` VALUES ('1695254148737626114', '1694250327664218112', '张三', '18620577287', '北京市', '北京市', '昌平区', '三旗百汇市场', '116.34446', '40.06300', '0', '0', '2023-08-26 09:57:38', '1694250327664218112', '2023-08-26 10:00:11', '1694250327664218112');
INSERT INTO `address_book` VALUES ('1695254933185720322', '1694250327664218112', '李四', '18620577287', '北京市', '北京市', '昌平区', '建材城西路金燕龙办公楼', '116.34351', '40.06024', '1', '0', '2023-08-26 10:00:45', '1694250327664218112', '2023-09-04 06:28:59', null);
INSERT INTO `address_book` VALUES ('1695262575308075010', '1695071168260947968', '老王八', '13512121111', '北京', '北京市', '东城区', '金燕龙科研楼', '116.34394', '40.06110', '0', '0', '2023-08-26 10:31:09', '1695071168260947968', '2023-08-29 18:30:12', null);
INSERT INTO `address_book` VALUES ('1695262878241681410', '1695071168260947968', '孙悟饭', '13512121121', '北京', '北京市', '东城区', '收拾收拾', '116.41636', '39.92835', '0', '1', '2023-08-26 10:32:21', '1695071168260947968', '2023-08-26 10:33:37', '1695071168260947968');
INSERT INTO `address_book` VALUES ('1695262970289876994', '1695071168260947968', '孙悟天', '18512121211', '北京', '北京市', '东城区', '说是啥是啥是所所所所所', '116.41636', '39.92835', '1', '1', '2023-08-26 10:32:43', '1695071168260947968', '2023-08-26 10:33:37', '1695071168260947968');
INSERT INTO `address_book` VALUES ('1695353353577459714', '1695339358949949440', '武松松', '18810966207', '北京', '北京市', '昌平区', '金燕龙传智播客', '116.34344', '40.06029', '1', '0', '2023-08-26 16:31:52', '1695339358949949440', '2023-08-26 16:31:52', '1695339358949949440');
INSERT INTO `address_book` VALUES ('1696349420666253314', '1696348358902497280', '吴彦祖', '18888888888', '北京', '北京市', '昌平区', '金燕龙', '116.34326', '40.06137', '1', '0', '2023-08-29 10:29:53', '1696348358902497280', '2023-08-29 10:29:53', '1696348358902497280');
INSERT INTO `address_book` VALUES ('1696470297961590785', '1695071168260947968', '吴彦祖', '18888888888', '北京', '北京市', '昌平区', '田园风光雅园', '116.35202', '40.08859', '0', '0', '2023-08-29 18:30:12', '1695071168260947968', '2023-08-30 18:58:54', '1695071168260947968');
INSERT INTO `address_book` VALUES ('1696839911014952962', '1695071168260947968', '搜索', '13512121221', '北京市', '北京市', '昌平区', '北京市昌平区城北街道中共北京市昌平区委员会北京市昌平区人民政府', '116.23244', '40.21801', '1', '0', '2023-08-30 18:58:55', '1695071168260947968', '2023-09-11 11:09:08', null);
INSERT INTO `address_book` VALUES ('1696849760507424770', '1694250327664218112', '张三', '14512345678', '重庆市', '重庆市', '渝北区', '重庆市渝北区两路街道地道重庆小吃重庆江北国际机场T3A航站楼', '106.65476', '29.71591', '0', '0', '2023-08-30 19:38:03', '1694250327664218112', '2023-09-04 06:28:59', '1694250327664218112');
INSERT INTO `address_book` VALUES ('1701076314360180738', '1701074772546342912', '吕女士', '13333333333', '北京市', '北京市', '昌平区', '北京市昌平区回龙观街道金燕龙科研楼', '116.34395', '40.06115', '1', '0', '2023-09-11 03:33:44', '1701074772546342912', '2023-09-11 03:34:11', null);
INSERT INTO `address_book` VALUES ('1716368429008928770', '1716346406098296832', '苗先生', '18888888888', '河南省', '郑州市', '新郑市', '河南省郑州市新郑市郑港街道黑马程序员航投大厦', '113.83892', '34.57203', '1', '1', '2023-10-23 08:19:08', '1716346406098296832', '2023-10-23 11:49:01', null);
INSERT INTO `address_book` VALUES ('1716420348645588994', '1716346406098296832', '苗先生', '13333333333', '河南省', '郑州市', '新郑市', '河南省郑州市新郑市郑港街道黑马程序员航投大厦', '113.83892', '34.57203', '0', '1', '2023-10-23 11:45:27', '1716346406098296832', '2023-10-23 11:49:01', '1716346406098296832');
INSERT INTO `address_book` VALUES ('1716421318502891521', '1716346406098296832', '苗先生', '13333333333', '北京市', '北京市', '昌平区', '北京市昌平区回龙观街道弘文恒瑞文化传播公司正泽商务中心', '116.34351', '40.06024', '0', '0', '2023-10-23 11:49:18', '1716346406098296832', '2023-11-15 15:05:24', null);
INSERT INTO `address_book` VALUES ('1718186270158749698', '1716346406098296832', '苗先生', '13333333333', '北京市', '北京市', '昌平区', '北京市昌平区回龙观街道黑马程序员(昌平校区)正泽商务中心', '116.34337', '40.06022', '1', '1', '2023-10-28 08:42:35', '1716346406098296832', '2023-10-28 08:42:44', '1716346406098296832');
INSERT INTO `address_book` VALUES ('1727539234670714882', '1716346406098296832', '苗先生', '13333333333', '北京市', '北京市', '昌平区', '北京市昌平区城北街道北京市昌平区政府信息公开办公室北京市昌平区人民政府', '116.23189', '40.22100', '1', '0', '2023-11-23 12:07:58', '1716346406098296832', '2023-11-23 12:07:58', '1716346406098296832');
INSERT INTO `address_book` VALUES ('1825425229974134785', '1825424943884853248', 'demo', '17786454632', '北京', '北京市', '东城区', 'z张珊珊', '116.41633', '39.92836', '1', '0', '2024-08-19 14:51:55', '1825424943884853248', '2024-08-19 14:51:55', '1825424943884853248');

-- ----------------------------
-- Table structure for agency_certification
-- ----------------------------
DROP TABLE IF EXISTS `agency_certification`;
CREATE TABLE `agency_certification` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '机构id',
  `name` varchar(50) DEFAULT NULL COMMENT '企业名称',
  `id_number` varchar(50) DEFAULT NULL COMMENT '统一社会信用代码',
  `legal_person_name` varchar(50) DEFAULT NULL COMMENT '法人姓名',
  `legal_person_id_card_no` varchar(50) DEFAULT NULL COMMENT '法人身份证号',
  `business_license` varchar(100) DEFAULT NULL COMMENT '营业执照',
  `certification_status` int NOT NULL DEFAULT '0' COMMENT '认证状态，0：初始态，1：认证中，2：认证成功，3认证失败',
  `certification_time` datetime DEFAULT NULL COMMENT '认证时间',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1716434046437146627 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='机构认证信息表';

-- ----------------------------
-- Records of agency_certification
-- ----------------------------
INSERT INTO `agency_certification` VALUES ('1694955099182362626', '机构00', '110101199307282600', '法人00', '110101199307282600', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/e5ce7b4f-81a6-481c-b475-d35996188344.png', '2', '2023-09-06 20:31:13', '2023-09-06 20:31:12', '2023-09-06 20:31:12');
INSERT INTO `agency_certification` VALUES ('1695628302246506498', '机构01', '110101199307282601', '法人01', '110101199307282601', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/e5ce7b4f-81a6-481c-b475-d35996188344.png', '2', '2023-09-06 20:31:13', '2023-09-06 20:31:12', '2023-09-06 20:31:12');
INSERT INTO `agency_certification` VALUES ('1696363919163170818', '机构02', '110101199307282602', '法人02', '110101199307282602', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/e5ce7b4f-81a6-481c-b475-d35996188344.png', '2', '2023-09-06 20:31:13', '2023-09-06 20:31:13', '2023-09-06 20:31:13');
INSERT INTO `agency_certification` VALUES ('1696706462195150849', '机构03', '110101199307282603', '法人03', '110101199307282603', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/e5ce7b4f-81a6-481c-b475-d35996188344.png', '2', '2023-09-06 20:31:14', '2023-09-06 20:31:13', '2023-09-06 20:31:13');
INSERT INTO `agency_certification` VALUES ('1697864361936187393', '机构04', '110101199307282604', '法人04', '110101199307282604', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/e5ce7b4f-81a6-481c-b475-d35996188344.png', '3', '2023-09-08 16:14:55', '2023-09-06 20:31:13', '2023-09-08 16:23:25');
INSERT INTO `agency_certification` VALUES ('1700056628117663746', null, null, null, null, null, '0', null, '2023-09-08 16:01:00', '2023-09-08 16:01:00');
INSERT INTO `agency_certification` VALUES ('1700056806312669186', null, null, null, null, null, '0', null, '2023-09-08 16:01:42', '2023-09-08 16:01:42');
INSERT INTO `agency_certification` VALUES ('1716434046437146626', 'Demo程序员', '11111111111111', 'Demo程序员', '101223143453222', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/16269f8b-b8b3-4088-9fec-cd4e4d4dc618.png', '3', '2023-10-23 20:50:59', '2023-10-23 12:41:26', '2024-08-19 14:36:26');

-- ----------------------------
-- Table structure for common_user
-- ----------------------------
DROP TABLE IF EXISTS `common_user`;
CREATE TABLE `common_user` (
  `id` bigint NOT NULL COMMENT '用户id',
  `status` int NOT NULL DEFAULT '0' COMMENT '状态，0：正常，1：冻结',
  `nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '昵称',
  `phone` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '电话',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '头像',
  `open_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `account_lock_reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '账号冻结原因',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of common_user
-- ----------------------------
INSERT INTO `common_user` VALUES ('1694250327664218112', '0', '微信用户', '18860355196', 'https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132', 'o-X3a4upfdyC_MH5OkzEKbhViNTU', '2000000000', '2023-08-23 15:28:50', '2023-08-26 09:16:26', '0');
INSERT INTO `common_user` VALUES ('1695052533074100224', '0', '微信用户', null, 'https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132', null, null, '2023-08-25 20:36:30', '2023-08-25 20:36:30', '0');
INSERT INTO `common_user` VALUES ('1695052599264411648', '0', '何刚', null, 'http://dummyimage.com/100x100', null, null, '2023-08-25 20:36:46', '2023-08-25 20:36:46', '0');
INSERT INTO `common_user` VALUES ('1695054371269771264', '0', '微信用户', null, 'https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132', null, null, '2023-08-25 20:43:48', '2023-08-25 20:43:48', '0');
INSERT INTO `common_user` VALUES ('1695055440972480512', '0', 'abc', null, 'abc', null, null, '2023-08-25 20:48:03', '2023-08-25 20:48:03', '0');
INSERT INTO `common_user` VALUES ('1695063742786781184', '0', 'abc', null, 'abc', null, null, '2023-08-25 21:21:03', '2023-08-25 21:21:03', '0');
INSERT INTO `common_user` VALUES ('1695064056785940480', '0', 'abc', null, 'abc', null, null, '2023-08-25 21:22:17', '2023-08-25 21:22:17', '0');
INSERT INTO `common_user` VALUES ('1695070649215827968', '0', '微信用户', null, '11', null, null, '2023-08-25 21:48:30', '2023-08-25 21:48:30', '0');
INSERT INTO `common_user` VALUES ('1695071158647603200', '0', '微信', null, '11', null, null, '2023-08-25 21:50:31', '2023-08-25 21:50:31', '0');
INSERT INTO `common_user` VALUES ('1695071168260947968', '0', '微信用户', '15538396657', 'https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132', 'o-X3a4nI1UnfERxi9MSJ2_9Jzu00', null, '2023-08-25 21:50:34', '2023-08-26 10:10:36', '0');
INSERT INTO `common_user` VALUES ('1695071290109673472', '0', '微11', null, '11', null, null, '2023-08-25 21:51:03', '2023-08-25 21:51:03', '0');
INSERT INTO `common_user` VALUES ('1695071373085589504', '0', '信11', null, '11', null, null, '2023-08-25 21:51:22', '2023-08-25 21:51:22', '0');
INSERT INTO `common_user` VALUES ('1695071498423975936', '0', '服务', null, '11', null, null, '2023-08-25 21:51:52', '2023-08-25 21:51:52', '0');
INSERT INTO `common_user` VALUES ('1695071705995886592', '0', '繁', null, '11', null, null, '2023-08-25 21:52:42', '2023-08-25 21:52:42', '0');
INSERT INTO `common_user` VALUES ('1695071846819643392', '0', '功嘉赐', null, '11', null, null, '2023-08-25 21:53:15', '2023-08-25 21:53:15', '0');
INSERT INTO `common_user` VALUES ('1695072571297579008', '0', '云岚到家001', null, '11', null, null, '2023-08-25 21:56:08', '2023-08-25 21:56:08', '0');
INSERT INTO `common_user` VALUES ('1695073029575622656', '0', '诸葛平文', null, '11', null, null, '2023-08-25 21:57:57', '2023-08-25 21:57:57', '0');
INSERT INTO `common_user` VALUES ('1695339358949949440', '0', '微信用户', '18810966207', 'https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132', 'o-X3a4g4yRTtMnw8iqkw6RI4pJKg', null, '2023-08-26 15:36:15', '2023-08-26 15:36:16', '0');
INSERT INTO `common_user` VALUES ('1695967381785100288', '0', '诸葛平文', null, '11', null, null, '2023-08-28 09:11:48', '2023-08-28 09:11:48', '0');
INSERT INTO `common_user` VALUES ('1696348358902497280', '0', '微信用户', '18539220118', 'https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132', 'o-X3a4nhtTsP0E_YUVrO6sFEwezA', null, '2023-08-29 10:25:40', '2023-08-29 10:25:41', '0');
INSERT INTO `common_user` VALUES ('1701074772546342912', '0', '微信用户', '18703810075', 'https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132', 'o5CqM6KHYi6o0mX5M23vFx9SBhiQ', null, '2023-09-11 03:27:37', '2023-09-11 03:27:37', '0');
INSERT INTO `common_user` VALUES ('1716346406098296832', '0', '普通用户72135', null, 'https://yjy-oss-videos.oss-accelerate.aliyuncs.com/tx.png', 'oyzCx6wPZJENUA4gSgLgvq_trtVs', null, '2023-10-23 06:51:38', '2023-10-23 06:51:38', '0');
INSERT INTO `common_user` VALUES ('1825424943884853248', '0', '普通用户40251', null, 'https://yjy-oss-videos.oss-accelerate.aliyuncs.com/tx.png', 'o2LR77alvhL7qxn8RtR4izE0Puwk', null, '2024-08-19 14:50:47', '2024-08-19 14:50:47', '0');

-- ----------------------------
-- Table structure for fail_msg
-- ----------------------------
DROP TABLE IF EXISTS `fail_msg`;
CREATE TABLE `fail_msg` (
  `id` bigint NOT NULL COMMENT '消息id',
  `exchange` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '交换机',
  `routing_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '路由key',
  `msg` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci COMMENT '消息',
  `reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '原因',
  `delay_msg_execute_time` int NOT NULL COMMENT '延迟消息执行时间',
  `next_fetch_time` int DEFAULT NULL COMMENT '下次拉取时间',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='rabbitm发送失败消息';

-- ----------------------------
-- Records of fail_msg
-- ----------------------------

-- ----------------------------
-- Table structure for institution_staff
-- ----------------------------
DROP TABLE IF EXISTS `institution_staff`;
CREATE TABLE `institution_staff` (
  `id` bigint NOT NULL COMMENT '主键',
  `institution_id` bigint DEFAULT NULL COMMENT '服务机构id',
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '编号',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '名称',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '电话',
  `id_card_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '身份证号',
  `certification_imgs` json DEFAULT NULL COMMENT '证明资料列表',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` int NOT NULL DEFAULT '0' COMMENT '是否已删除，0：未删除，1：已删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='机构下属服务人员';

-- ----------------------------
-- Records of institution_staff
-- ----------------------------
INSERT INTO `institution_staff` VALUES ('1694976080089214977', '1694955099182362626', '1694976080063184896', '3', '13515551111', '144122121212121212', '[\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/533dda9f-67f3-4f0d-99ec-d3681474df87.png\"]', '2023-08-25 15:32:43', '2023-08-25 15:33:35', '1');
INSERT INTO `institution_staff` VALUES ('1694978252793212929', '1694955099182362626', '1694978252792348672', '测试', '13584451121', '441212121215121212', '[\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/2da97cee-c9a1-4aaa-b41e-80e4c30c6d0d.png\"]', '2023-08-25 15:41:21', '2023-08-25 15:41:21', '0');
INSERT INTO `institution_staff` VALUES ('1695002536508944385', '1694955099182362626', '1695002536508080128', '123', '13551212122', '252312212222222222', '[\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/51fb378c-b818-448e-bbc4-fb04a46f31fa.png\"]', '2023-08-25 17:17:50', '2023-08-25 17:17:50', '0');
INSERT INTO `institution_staff` VALUES ('1695630550498308098', '1695628302246506498', '1695630550501638144', '张三', '18888888888', '360921199901014581', '[\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/00a4b3ee-49fa-4c3c-a151-6357bb587a59.png\"]', '2023-08-27 10:53:21', '2023-08-27 10:53:21', '0');
INSERT INTO `institution_staff` VALUES ('1696442084803973122', '1696363919163170818', '1696442084745252864', '张三', '16712345678', '412867123412341234', '[\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/4866ee52-2289-48e2-b466-f77feffc8070.jpeg\"]', '2023-08-29 16:38:06', '2023-08-29 16:38:06', '0');
INSERT INTO `institution_staff` VALUES ('1701055493029523457', '1696706462195150849', '1701055493020778496', '测', '13851212111', '145512121212122121', '[\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/4866ee52-2289-48e2-b466-f77feffc8070.jpeg\"]', '2023-09-11 10:10:08', '2024-08-19 14:58:15', '0');
INSERT INTO `institution_staff` VALUES ('1825424176796983297', '1696706462195150849', '1825424176683737088', '张三', '17677889944', '421223199912123211', '[\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/4866ee52-2289-48e2-b466-f77feffc8070.jpeg\"]', '2024-08-19 14:47:44', '2024-08-19 14:58:17', '0');

-- ----------------------------
-- Table structure for serve_provider
-- ----------------------------
DROP TABLE IF EXISTS `serve_provider`;
CREATE TABLE `serve_provider` (
  `id` bigint NOT NULL COMMENT '主键',
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '编号',
  `type` int NOT NULL COMMENT '类型，2：服务人员，3：服务机构',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '姓名',
  `phone` varchar(255) NOT NULL COMMENT '电话',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '头像',
  `status` int NOT NULL COMMENT '状态，0：正常，1：冻结',
  `settings_status` int DEFAULT '0' COMMENT '首次设置状态，0：未完成设置，1：已完成设置',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '机构登录密码',
  `account_lock_reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '账号冻结原因',
  `score` double DEFAULT NULL COMMENT '综合评分',
  `good_level_rate` varchar(50) DEFAULT NULL COMMENT '好评率',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` int NOT NULL DEFAULT '0' COMMENT '是否已删除，0：未删除，1：已删除',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `serve_provider_phone_type_uindex` (`phone`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='服务人员/机构表';

-- ----------------------------
-- Records of serve_provider
-- ----------------------------
INSERT INTO `serve_provider` VALUES ('1694955099182362626', '1694955099160526848', '3', '机构00', '18810966207', null, '0', '1', '$2a$10$QiglPrZ/6xxCBnaJXHojz.DGdp4O/KF3qcCecWnyXo6lLTalYFTrG', '额度的多多多多多多多多多多多多多', null, null, '2023-08-25 14:09:21', '2023-09-06 20:31:53', '0');
INSERT INTO `serve_provider` VALUES ('1695006954969133057', '1695006954951491584', '2', '服务人员00', '18912345678', null, '1', '0', null, '哒哒哒哒哒哒多多多', null, null, '2023-08-25 17:35:24', '2023-09-08 11:31:32', '0');
INSERT INTO `serve_provider` VALUES ('1695007144950132737', '1695007144953462784', '2', '服务人员01', '18212345678', null, '0', '0', null, '2333333333', null, null, '2023-08-25 17:36:09', '2023-09-06 20:21:34', '0');
INSERT INTO `serve_provider` VALUES ('1695628302246506498', '1695628302237253632', '3', '机构01', '18810966904', null, '0', '1', '$2a$10$v633CoJ.eIMA8sTuZxN5fOkmls5K8JmyVa6LEOptHl80bs/JA4JxO', null, null, null, '2023-08-27 10:44:25', '2023-09-06 20:32:07', '0');
INSERT INTO `serve_provider` VALUES ('1696338624494202882', '1696338624497532928', '2', '服务人员02', '15066699132', null, '0', '1', null, '测试测试测试', null, null, '2023-08-29 09:46:59', '2023-10-17 12:31:29', '0');
INSERT INTO `serve_provider` VALUES ('1696363919163170818', '1696363919112839168', '3', '机构02', '18812345678', null, '0', '1', '$2a$10$KstuMypos1IimZlVpNAB7OwluzyPQ0jqfaYRfwNp8Lfkes6WTZnUO', null, null, null, '2023-08-29 11:27:27', '2023-09-06 20:32:20', '0');
INSERT INTO `serve_provider` VALUES ('1696462691331239937', '1696462691326181376', '2', '服务人员03', '15066699131', null, '0', '1', null, null, null, null, '2023-08-29 17:59:59', '2023-09-08 16:16:25', '0');
INSERT INTO `serve_provider` VALUES ('1696706462195150849', '1696706462194286592', '3', '机构03', '15896123123', null, '0', '1', '$2a$10$H9ryMxCmbD9e4QdfKUrt3u6b42WrZN/b/YS7gpK8YWwW0wLyidL8G', null, null, null, '2023-08-30 10:08:38', '2023-09-06 20:32:29', '0');
INSERT INTO `serve_provider` VALUES ('1697864361936187393', '1697864361683664896', '3', '机构04', '18888888888', null, '0', '0', '$2a$10$22OsfxUUuG8gUYzooPh4v.qRtj2z3kXGY/lPs/d.U5MDguDG0lpwK', null, null, null, '2023-09-02 06:49:43', '2023-09-06 20:32:33', '0');
INSERT INTO `serve_provider` VALUES ('1700056628117663746', '1700056628100530176', '3', null, '15631121121', null, '0', '0', '$2a$10$8q8augvySdRmDwUlkUGKYeM8cXbWR3PcyPHwffDq5q7u3sb3EWHhW', null, null, null, '2023-09-08 16:01:00', '2023-09-08 16:01:00', '0');
INSERT INTO `serve_provider` VALUES ('1700056806312669186', '1700056806316507136', '3', null, '15812112112', null, '0', '0', '$2a$10$BdPkd.6V4fSjgJH7RPiNm.tWVSb8J6vZy9dLPaSsB/chIYas4Jji6', null, null, null, '2023-09-08 16:01:42', '2023-09-08 16:01:42', '0');
INSERT INTO `serve_provider` VALUES ('1715901715099959297', '1715901715061956608', '3', null, '18703810075', null, '0', '0', '$2a$10$ggjdKdj8vc5ucGPg54pSe.0w3.Zq26nxvletz0bZ9Fyo9.3/Xk.u.', null, null, null, '2023-10-22 01:24:35', '2023-10-22 01:24:35', '0');
INSERT INTO `serve_provider` VALUES ('1716431678555406338', '1716431678550958080', '2', '小明', '13333333333', null, '0', '1', null, null, null, null, '2023-10-23 12:30:28', '2023-11-15 11:30:38', '0');
INSERT INTO `serve_provider` VALUES ('1716434046437146626', '1716434046436892672', '3', 'Demo程序员', '13333338888', null, '0', '1', '$2a$10$dPlYrzIBiv4EZrYtvQ9q7uTMVfHSpiIyf9H6NRVwg7dBgyzIaEV2m', null, null, null, '2023-10-23 12:39:53', '2024-08-19 14:34:50', '0');

-- ----------------------------
-- Table structure for serve_provider_settings
-- ----------------------------
DROP TABLE IF EXISTS `serve_provider_settings`;
CREATE TABLE `serve_provider_settings` (
  `id` bigint NOT NULL COMMENT '服务人员/机构id',
  `city_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '' COMMENT '城市码',
  `city_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '城市名称',
  `lon` double(10,5) DEFAULT NULL COMMENT '经度',
  `lat` double(10,5) DEFAULT NULL COMMENT '纬度',
  `intention_scope` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '意向单范围',
  `have_skill` int DEFAULT '0' COMMENT '是否有技能',
  `can_pick_up` int DEFAULT '-1' COMMENT '是否可以接单，-0：关闭接单，1：开启接单',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` int DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='服务人员/机构附属信息';

-- ----------------------------
-- Records of serve_provider_settings
-- ----------------------------
INSERT INTO `serve_provider_settings` VALUES ('1694955099182362626', '010', '', '116.34381', '40.06071', '金燕龙科研楼', '1', '1', '2023-08-25 14:09:21', '2023-08-29 10:35:46', '0');
INSERT INTO `serve_provider_settings` VALUES ('1695006954969133057', '', '', null, null, null, '1', '-1', '2023-08-25 17:35:24', '2023-08-26 15:53:42', '0');
INSERT INTO `serve_provider_settings` VALUES ('1695007144950132737', '', '', null, null, null, '1', '-1', '2023-08-25 17:36:09', '2023-08-26 15:53:42', '0');
INSERT INTO `serve_provider_settings` VALUES ('1695628302246506498', '010', '', '116.46226', '39.97419', '北京金燕龙联合企业总公司', '1', '1', '2023-08-27 10:44:25', '2023-09-07 15:40:38', '0');
INSERT INTO `serve_provider_settings` VALUES ('1696338624494202882', '武汉市', '010', '116.43430', '40.00800', 'Demo程序员', '1', '1', '2023-08-29 09:46:59', '2024-08-19 14:53:57', '0');
INSERT INTO `serve_provider_settings` VALUES ('1696363919163170818', '010', null, '116.34928', '40.05997', '育新地铁站', '1', '1', '2023-08-29 11:27:28', '2023-08-29 11:28:23', '0');
INSERT INTO `serve_provider_settings` VALUES ('1696462691331239937', '010', '北京市', '116.39801', '39.90930', '天安门服务部', '1', '1', '2023-08-29 17:59:59', '2023-08-29 18:01:08', '0');
INSERT INTO `serve_provider_settings` VALUES ('1696706462195150849', '010', null, '116.33504', '40.06092', '金燕龙', '1', '1', '2023-08-30 10:08:38', '2023-08-31 16:18:12', '0');
INSERT INTO `serve_provider_settings` VALUES ('1697864361936187393', '', null, null, null, null, '1', '-1', '2023-09-02 06:49:43', '2023-09-06 19:28:06', '0');
INSERT INTO `serve_provider_settings` VALUES ('1700056628117663746', '', null, null, null, null, '1', '-1', '2023-09-08 16:01:00', '2023-10-24 02:38:16', '0');
INSERT INTO `serve_provider_settings` VALUES ('1700056806312669186', '', null, null, null, null, '1', '-1', '2023-09-08 16:01:42', '2023-10-24 02:38:16', '0');
INSERT INTO `serve_provider_settings` VALUES ('1715901715099959297', '', null, null, null, null, '1', '-1', '2023-10-22 01:24:35', '2023-10-24 02:38:16', '0');
INSERT INTO `serve_provider_settings` VALUES ('1716431678555406338', '010', '北京市', '116.43430', '40.00800', 'Demo程序员', '1', '1', '2023-10-23 12:30:28', '2024-08-19 14:57:44', '0');
INSERT INTO `serve_provider_settings` VALUES ('1716434046437146626', '010', '北京市', '116.43430', '40.00800', 'Demo程序员', '1', '1', '2023-10-23 12:39:53', '2024-08-19 14:57:41', '0');

-- ----------------------------
-- Table structure for serve_provider_sync
-- ----------------------------
DROP TABLE IF EXISTS `serve_provider_sync`;
CREATE TABLE `serve_provider_sync` (
  `id` bigint NOT NULL COMMENT '服务人员或机构同步表',
  `serve_item_ids` json DEFAULT NULL COMMENT '技能列表',
  `serve_provider_type` int DEFAULT NULL COMMENT '服务者类型，2：服务人员，3：机构人员',
  `lon` double(10,5) DEFAULT NULL COMMENT '经度',
  `lat` double(10,5) DEFAULT NULL COMMENT '纬度',
  `city_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '城市编码',
  `pick_up` int DEFAULT NULL COMMENT '接单开关1，：接单开启，0：接单关闭',
  `evaluation_score` double DEFAULT '50' COMMENT '评分,默认50分',
  `setting_status` int DEFAULT NULL COMMENT '首次设置状态，0：未完成，1：已完成设置',
  `status` int NOT NULL COMMENT '状态，0：正常，1：冻结',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='服务提供者同步表';

-- ----------------------------
-- Records of serve_provider_sync
-- ----------------------------
INSERT INTO `serve_provider_sync` VALUES ('1694955099182362626', '[1685894105234755585, 1683432288440897537, 1685850705647194113, 1678727478181957634, 1692475107114487809]', '3', '116.34381', '40.06071', '010', '1', '3', '1', '0');
INSERT INTO `serve_provider_sync` VALUES ('1695006954969133057', null, '2', null, null, null, '0', '3', null, '1');
INSERT INTO `serve_provider_sync` VALUES ('1695007144950132737', null, '2', null, null, null, '0', '3', null, '0');
INSERT INTO `serve_provider_sync` VALUES ('1695628302246506498', '[1685894105234755585, 1694549334674739202, 1683432288440897537, 1698885001328300033]', '3', '116.46226', '39.97419', '010', '1', '3', '1', '0');
INSERT INTO `serve_provider_sync` VALUES ('1696338624494202882', '[1685894105234755585, 1683432288440897537, 1685850705647194113, 1678727478181957634, 1692475107114487809]', '2', '116.43430', '40.00800', '武汉市', '1', '3', '1', '0');
INSERT INTO `serve_provider_sync` VALUES ('1696363919163170818', '[1685894105234755585, 1683432288440897537, 1685850705647194113, 1678727478181957634, 1692475107114487809]', '3', '116.34928', '40.05997', '010', '1', '3', '1', '0');
INSERT INTO `serve_provider_sync` VALUES ('1696462691331239937', '[1685894105234755585]', '2', '116.39801', '39.90930', '010', '1', '3', '1', '0');
INSERT INTO `serve_provider_sync` VALUES ('1696706462195150849', '[1685894105234755585, 1685850705647194113, 1692475107114487809]', '3', '116.33504', '40.06092', '010', '1', '3', '1', '0');
INSERT INTO `serve_provider_sync` VALUES ('1697864361936187393', null, '3', null, null, null, null, '3', null, '0');
INSERT INTO `serve_provider_sync` VALUES ('1700056628117663746', null, '3', null, null, null, null, '55', null, '0');
INSERT INTO `serve_provider_sync` VALUES ('1700056806312669186', null, '3', null, null, null, null, '55', null, '0');
INSERT INTO `serve_provider_sync` VALUES ('1715901715099959297', null, '3', null, null, null, null, '50', null, '0');
INSERT INTO `serve_provider_sync` VALUES ('1716431678555406338', '[1685894105234755585, 1683432288440897537, 1678727478181957634, 1692475107114487809]', '2', '116.43430', '40.00800', '010', '1', '50', '1', '0');
INSERT INTO `serve_provider_sync` VALUES ('1716434046437146626', '[1685894105234755585, 1683432288440897537]', '3', '116.43430', '40.00800', '010', '1', '50', '1', '0');

-- ----------------------------
-- Table structure for serve_skill
-- ----------------------------
DROP TABLE IF EXISTS `serve_skill`;
CREATE TABLE `serve_skill` (
  `id` bigint NOT NULL COMMENT '主键',
  `serve_provider_id` bigint DEFAULT NULL COMMENT '服务人员/机构id',
  `serve_provider_type` int DEFAULT NULL COMMENT '类型，2：服务人员，3：服务机构',
  `serve_type_id` bigint DEFAULT NULL COMMENT '服务类型id',
  `serve_type_name` varchar(50) DEFAULT NULL COMMENT '服务类型名称',
  `serve_item_id` bigint DEFAULT NULL COMMENT '服务项id',
  `serve_item_name` varchar(50) DEFAULT NULL COMMENT '服务项名称',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_delete` int NOT NULL DEFAULT '0' COMMENT '是否已删除，0：未删除，1：已删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='服务技能表';

-- ----------------------------
-- Records of serve_skill
-- ----------------------------
INSERT INTO `serve_skill` VALUES ('1695372800631533569', '1694955099182362626', '3', '1678649931106705409', '保洁清', '1685894105234755585', '日常保洁', '2023-08-26 17:49:08', '2023-09-07 11:30:43', '0');
INSERT INTO `serve_skill` VALUES ('1695372800635727873', '1694955099182362626', '3', '1678649931106705409', '保洁清', '1683432288440897537', '厨卫维修', '2023-08-26 17:49:08', '2023-09-07 11:31:41', '0');
INSERT INTO `serve_skill` VALUES ('1695372800639922178', '1694955099182362626', '3', '1678654490336124929', '日常维修', '1685850705647194113', '空调维修', '2023-08-26 17:49:08', '2023-09-07 11:32:31', '0');
INSERT INTO `serve_skill` VALUES ('1695372800639922179', '1694955099182362626', '3', '1678654490336124929', '日常维修', '1678727478181957634', '日常维修', '2023-08-26 17:49:08', '2023-09-07 11:33:13', '0');
INSERT INTO `serve_skill` VALUES ('1695372800644116481', '1694955099182362626', '3', '1692473174681194497', '家居服务', '1692475107114487809', '安装窗帘', '2023-08-26 17:49:08', '2023-09-07 11:33:44', '0');
INSERT INTO `serve_skill` VALUES ('1696364146360229889', '1696363919163170818', '3', '1678649931106705409', '保洁清', '1685894105234755585', '日常保洁', '2023-08-29 11:28:22', '2023-09-07 11:30:43', '0');
INSERT INTO `serve_skill` VALUES ('1696364146360229890', '1696363919163170818', '3', '1678649931106705409', '保洁清', '1683432288440897537', '厨卫维修', '2023-08-29 11:28:22', '2023-09-07 11:31:41', '0');
INSERT INTO `serve_skill` VALUES ('1696364146368618498', '1696363919163170818', '3', '1678654490336124929', '日常维修', '1685850705647194113', '空调维修', '2023-08-29 11:28:22', '2023-09-07 11:32:31', '0');
INSERT INTO `serve_skill` VALUES ('1696364146368618499', '1696363919163170818', '3', '1678654490336124929', '日常维修', '1678727478181957634', '日常维修', '2023-08-29 11:28:22', '2023-09-07 11:33:13', '0');
INSERT INTO `serve_skill` VALUES ('1696364146377007106', '1696363919163170818', '3', '1692473174681194497', '家居服务', '1692475107114487809', '安装窗帘', '2023-08-29 11:28:22', '2023-09-07 11:33:44', '0');
INSERT INTO `serve_skill` VALUES ('1696462990024404993', '1696462691331239937', '2', '1678649931106705409', '保洁清', '1685894105234755585', '日常保洁', '2023-08-29 18:01:10', '2023-09-07 11:30:43', '0');
INSERT INTO `serve_skill` VALUES ('1699384062218629122', '1695628302246506498', '3', '1678649931106705409', '保洁清', '1685894105234755585', '日常保洁', '2023-09-06 19:28:28', '2023-09-07 11:30:43', '0');
INSERT INTO `serve_skill` VALUES ('1699384062218629123', '1695628302246506498', '3', '1678649931106705409', '保洁清', '1694549334674739202', '测试', '2023-09-06 19:28:28', '2023-09-07 11:34:29', '0');
INSERT INTO `serve_skill` VALUES ('1699384062227017729', '1695628302246506498', '3', '1678649931106705409', '保洁清', '1683432288440897537', '厨卫维修', '2023-09-06 19:28:28', '2023-09-07 11:31:41', '0');
INSERT INTO `serve_skill` VALUES ('1699384062227017730', '1695628302246506498', '3', '1678649931106705409', '保洁清', '1698885001328300033', null, '2023-09-06 19:28:28', '2023-09-07 11:26:58', '0');
INSERT INTO `serve_skill` VALUES ('1699695762876690434', '1696706462195150849', '3', '1678649931106705409', '保洁清', '1685894105234755585', '日常保洁', '2023-09-07 16:07:03', '2023-09-07 16:07:03', '0');
INSERT INTO `serve_skill` VALUES ('1699695762880884737', '1696706462195150849', '3', '1678654490336124929', '日常维修', '1685850705647194113', '空调维修', '2023-09-07 16:07:03', '2023-09-07 16:07:03', '0');
INSERT INTO `serve_skill` VALUES ('1699695762880884738', '1696706462195150849', '3', '1692473174681194497', '家居服务', '1692475107114487809', '安装窗帘', '2023-09-07 16:07:03', '2023-09-07 16:07:03', '0');
INSERT INTO `serve_skill` VALUES ('1716740634284662785', '1716434046437146626', '3', '1678649931106705409', '保洁清', '1685894105234755585', '日常保洁', '2023-10-24 08:58:10', '2023-10-24 08:58:10', '0');
INSERT INTO `serve_skill` VALUES ('1716740634284662786', '1716434046437146626', '3', '1678649931106705409', '保洁清', '1683432288440897537', '厨卫维修', '2023-10-24 08:58:10', '2023-10-24 08:58:10', '0');
INSERT INTO `serve_skill` VALUES ('1724702004851863554', '1716431678555406338', '2', '1678649931106705409', '保洁清', '1685894105234755585', '日常保洁', '2023-11-15 16:12:56', '2023-11-15 16:12:56', '0');
INSERT INTO `serve_skill` VALUES ('1724702004856057858', '1716431678555406338', '2', '1678649931106705409', '保洁清', '1683432288440897537', '厨卫维修', '2023-11-15 16:12:56', '2023-11-15 16:12:56', '0');
INSERT INTO `serve_skill` VALUES ('1724702004856057859', '1716431678555406338', '2', '1678654490336124929', '日常维修', '1678727478181957634', '日常维修', '2023-11-15 16:12:56', '2023-11-15 16:12:56', '0');
INSERT INTO `serve_skill` VALUES ('1724702004856057860', '1716431678555406338', '2', '1692473174681194497', '家居服务', '1692475107114487809', '安装窗帘', '2023-11-15 16:12:56', '2023-11-15 16:12:56', '0');
INSERT INTO `serve_skill` VALUES ('1825430843752251393', '1696338624494202882', '2', '1678649931106705409', '保洁清', '1685894105234755585', '日常保洁', '2024-08-19 15:14:14', '2024-08-19 15:14:14', '0');
INSERT INTO `serve_skill` VALUES ('1825430843752251394', '1696338624494202882', '2', '1678649931106705409', '保洁清', '1683432288440897537', '厨卫维修', '2024-08-19 15:14:14', '2024-08-19 15:14:14', '0');
INSERT INTO `serve_skill` VALUES ('1825430843752251395', '1696338624494202882', '2', '1678654490336124929', '日常维修', '1685850705647194113', '空调维修', '2024-08-19 15:14:14', '2024-08-19 15:14:14', '0');
INSERT INTO `serve_skill` VALUES ('1825430843752251396', '1696338624494202882', '2', '1678654490336124929', '日常维修', '1678727478181957634', '日常维修', '2024-08-19 15:14:14', '2024-08-19 15:14:14', '0');
INSERT INTO `serve_skill` VALUES ('1825430843752251397', '1696338624494202882', '2', '1692473174681194497', '家居服务', '1692475107114487809', '安装窗帘', '2024-08-19 15:14:14', '2024-08-19 15:14:14', '0');

-- ----------------------------
-- Table structure for worker_certification
-- ----------------------------
DROP TABLE IF EXISTS `worker_certification`;
CREATE TABLE `worker_certification` (
  `id` bigint NOT NULL DEFAULT '0' COMMENT '服务人员id',
  `name` varchar(50) DEFAULT NULL COMMENT '姓名',
  `id_card_no` varchar(50) DEFAULT NULL COMMENT '身份证号',
  `front_img` varchar(100) DEFAULT NULL COMMENT '身份证正面',
  `back_img` varchar(100) DEFAULT NULL COMMENT '身份证反面',
  `certification_material` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '证明资料',
  `certification_status` int NOT NULL DEFAULT '0' COMMENT '认证状态，0：初始态，1：认证中，2：认证成功，3认证失败',
  `certification_time` datetime DEFAULT NULL COMMENT '认证时间',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='服务人员认证信息表';

-- ----------------------------
-- Records of worker_certification
-- ----------------------------
INSERT INTO `worker_certification` VALUES ('1695006954969133057', '服务人员00', '110101199307282600', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/e5ce7b4f-81a6-481c-b475-d35996188344.png', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/e5ce7b4f-81a6-481c-b475-d35996188344.png', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/e5ce7b4f-81a6-481c-b475-d35996188344.png', '2', '2023-09-06 20:18:50', '2023-09-06 20:18:49', '2023-09-06 20:18:49');
INSERT INTO `worker_certification` VALUES ('1695007144950132737', '服务人员01', '110101199307282601', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/e5ce7b4f-81a6-481c-b475-d35996188344.png', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/e5ce7b4f-81a6-481c-b475-d35996188344.png', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/e5ce7b4f-81a6-481c-b475-d35996188344.png', '2', '2023-09-06 20:18:50', '2023-09-06 20:18:49', '2023-09-06 20:18:49');
INSERT INTO `worker_certification` VALUES ('1696338624494202882', '服务人员02', '110101199307282602', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/e5ce7b4f-81a6-481c-b475-d35996188344.png', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/e5ce7b4f-81a6-481c-b475-d35996188344.png', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/e5ce7b4f-81a6-481c-b475-d35996188344.png', '2', '2023-09-06 20:18:50', '2023-09-06 20:18:49', '2023-09-06 20:18:49');
INSERT INTO `worker_certification` VALUES ('1696462691331239937', '服务人员03', '110101199307282603', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/e5ce7b4f-81a6-481c-b475-d35996188344.png', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/e5ce7b4f-81a6-481c-b475-d35996188344.png', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/e5ce7b4f-81a6-481c-b475-d35996188344.png', '2', '2023-09-06 20:18:50', '2023-09-06 20:18:49', '2023-09-08 16:21:28');
INSERT INTO `worker_certification` VALUES ('1716431678555406338', '小明', '101132323232233', 'https://jzo2o-oss.oss-cn-hangzhou.aliyuncs.com/87463fcc-fcf7-4280-b8d7-6864b0fb4923.png', 'https://jzo2o-oss.oss-cn-hangzhou.aliyuncs.com/488b6b41-5327-44f4-90b1-35b171b7a4a9.png', 'https://jzo2o-oss.oss-cn-hangzhou.aliyuncs.com/b4fff08c-366f-458c-8e6e-d74f33f40002.png', '2', '2023-10-24 10:35:58', '2023-10-23 12:33:16', '2023-10-24 02:36:51');
