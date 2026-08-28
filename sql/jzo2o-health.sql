/*
Navicat MySQL Data Transfer

Source Server         : 192.168.101.68
Source Server Version : 80026
Source Host           : 192.168.101.68:3306
Source Database       : jzo2o-health

Target Server Type    : MYSQL
Target Server Version : 80026
File Encoding         : 65001

Date: 2024-08-24 21:15:48
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for checkgroup
-- ----------------------------
DROP TABLE IF EXISTS `checkgroup`;
CREATE TABLE `checkgroup` (
  `id` bigint NOT NULL DEFAULT '0' COMMENT '主键',
  `code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '检查组编码',
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '检查组名称',
  `help_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '检查组助记码',
  `sex` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '性别，0：不限，1：男，2：女',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '检查组说明',
  `attention` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '检查组注意事项',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='检查组表';

-- ----------------------------
-- Records of checkgroup
-- ----------------------------
INSERT INTO `checkgroup` VALUES ('5', '0001', '一般检查', 'YBJC', '1', '一般检查', '');
INSERT INTO `checkgroup` VALUES ('6', '0002', '视力色觉', 'SLSJ', '0', '视力色觉', null);
INSERT INTO `checkgroup` VALUES ('7', '0003', '血常规', 'XCG', '0', '血常规', '');
INSERT INTO `checkgroup` VALUES ('8', '0004', '尿常规', 'NCG', '0', '尿常规', null);
INSERT INTO `checkgroup` VALUES ('9', '0005', '肝功三项', 'GGSX', '0', '肝功三项', null);
INSERT INTO `checkgroup` VALUES ('10', '0006', '肾功三项', 'NGSX', '0', '肾功三项', null);
INSERT INTO `checkgroup` VALUES ('11', '0007', '血脂四项', 'XZSX', '0', '血脂四项', null);
INSERT INTO `checkgroup` VALUES ('12', '0008', '心肌酶三项', 'XJMSX', '0', '心肌酶三项', null);
INSERT INTO `checkgroup` VALUES ('13', '0009', '甲功三项', 'JGSX', '0', '甲功三项', null);
INSERT INTO `checkgroup` VALUES ('14', '0010', '子宫附件彩超', 'ZGFJCC', '2', '子宫附件彩超', null);
INSERT INTO `checkgroup` VALUES ('15', '0022', '胆红素三项', 'DHSSX', '0', '胆红素三项', null);
INSERT INTO `checkgroup` VALUES ('16', '00110', '视力检查全套', 'SLJCQT', '0', '视力检查', '无');
INSERT INTO `checkgroup` VALUES ('17', '00113', '视力检查', 'sljc', '0', '视力检查', '无');

-- ----------------------------
-- Table structure for checkgroup_checkitem
-- ----------------------------
DROP TABLE IF EXISTS `checkgroup_checkitem`;
CREATE TABLE `checkgroup_checkitem` (
  `checkgroup_id` bigint NOT NULL DEFAULT '0' COMMENT '检查组id',
  `checkitem_id` bigint NOT NULL DEFAULT '0' COMMENT '检查项id',
  PRIMARY KEY (`checkgroup_id`,`checkitem_id`) USING BTREE,
  KEY `item_id` (`checkitem_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='检查组与检查项关联表';

-- ----------------------------
-- Records of checkgroup_checkitem
-- ----------------------------
INSERT INTO `checkgroup_checkitem` VALUES ('5', '28');
INSERT INTO `checkgroup_checkitem` VALUES ('5', '29');
INSERT INTO `checkgroup_checkitem` VALUES ('5', '30');
INSERT INTO `checkgroup_checkitem` VALUES ('5', '31');
INSERT INTO `checkgroup_checkitem` VALUES ('5', '32');
INSERT INTO `checkgroup_checkitem` VALUES ('6', '33');
INSERT INTO `checkgroup_checkitem` VALUES ('6', '34');
INSERT INTO `checkgroup_checkitem` VALUES ('6', '35');
INSERT INTO `checkgroup_checkitem` VALUES ('6', '36');
INSERT INTO `checkgroup_checkitem` VALUES ('6', '37');
INSERT INTO `checkgroup_checkitem` VALUES ('7', '38');
INSERT INTO `checkgroup_checkitem` VALUES ('7', '39');
INSERT INTO `checkgroup_checkitem` VALUES ('7', '40');
INSERT INTO `checkgroup_checkitem` VALUES ('7', '41');
INSERT INTO `checkgroup_checkitem` VALUES ('7', '42');
INSERT INTO `checkgroup_checkitem` VALUES ('7', '43');
INSERT INTO `checkgroup_checkitem` VALUES ('7', '44');
INSERT INTO `checkgroup_checkitem` VALUES ('7', '45');
INSERT INTO `checkgroup_checkitem` VALUES ('7', '46');
INSERT INTO `checkgroup_checkitem` VALUES ('7', '47');
INSERT INTO `checkgroup_checkitem` VALUES ('7', '48');
INSERT INTO `checkgroup_checkitem` VALUES ('7', '49');
INSERT INTO `checkgroup_checkitem` VALUES ('7', '50');
INSERT INTO `checkgroup_checkitem` VALUES ('7', '51');
INSERT INTO `checkgroup_checkitem` VALUES ('7', '52');
INSERT INTO `checkgroup_checkitem` VALUES ('7', '53');
INSERT INTO `checkgroup_checkitem` VALUES ('7', '54');
INSERT INTO `checkgroup_checkitem` VALUES ('7', '55');
INSERT INTO `checkgroup_checkitem` VALUES ('7', '56');
INSERT INTO `checkgroup_checkitem` VALUES ('8', '57');
INSERT INTO `checkgroup_checkitem` VALUES ('8', '58');
INSERT INTO `checkgroup_checkitem` VALUES ('8', '59');
INSERT INTO `checkgroup_checkitem` VALUES ('8', '60');
INSERT INTO `checkgroup_checkitem` VALUES ('8', '61');
INSERT INTO `checkgroup_checkitem` VALUES ('8', '62');
INSERT INTO `checkgroup_checkitem` VALUES ('8', '63');
INSERT INTO `checkgroup_checkitem` VALUES ('8', '64');
INSERT INTO `checkgroup_checkitem` VALUES ('8', '65');
INSERT INTO `checkgroup_checkitem` VALUES ('8', '66');
INSERT INTO `checkgroup_checkitem` VALUES ('8', '67');
INSERT INTO `checkgroup_checkitem` VALUES ('8', '68');
INSERT INTO `checkgroup_checkitem` VALUES ('8', '69');
INSERT INTO `checkgroup_checkitem` VALUES ('8', '70');
INSERT INTO `checkgroup_checkitem` VALUES ('8', '71');
INSERT INTO `checkgroup_checkitem` VALUES ('9', '72');
INSERT INTO `checkgroup_checkitem` VALUES ('9', '73');
INSERT INTO `checkgroup_checkitem` VALUES ('9', '74');
INSERT INTO `checkgroup_checkitem` VALUES ('10', '75');
INSERT INTO `checkgroup_checkitem` VALUES ('10', '76');
INSERT INTO `checkgroup_checkitem` VALUES ('10', '77');
INSERT INTO `checkgroup_checkitem` VALUES ('11', '78');
INSERT INTO `checkgroup_checkitem` VALUES ('11', '79');
INSERT INTO `checkgroup_checkitem` VALUES ('11', '80');
INSERT INTO `checkgroup_checkitem` VALUES ('11', '81');
INSERT INTO `checkgroup_checkitem` VALUES ('12', '82');
INSERT INTO `checkgroup_checkitem` VALUES ('12', '83');
INSERT INTO `checkgroup_checkitem` VALUES ('12', '84');
INSERT INTO `checkgroup_checkitem` VALUES ('13', '85');
INSERT INTO `checkgroup_checkitem` VALUES ('13', '86');
INSERT INTO `checkgroup_checkitem` VALUES ('13', '87');
INSERT INTO `checkgroup_checkitem` VALUES ('14', '88');
INSERT INTO `checkgroup_checkitem` VALUES ('14', '89');
INSERT INTO `checkgroup_checkitem` VALUES ('15', '90');
INSERT INTO `checkgroup_checkitem` VALUES ('15', '91');
INSERT INTO `checkgroup_checkitem` VALUES ('15', '92');
INSERT INTO `checkgroup_checkitem` VALUES ('16', '93');

-- ----------------------------
-- Table structure for checkitem
-- ----------------------------
DROP TABLE IF EXISTS `checkitem`;
CREATE TABLE `checkitem` (
  `id` bigint NOT NULL DEFAULT '0' COMMENT '主键',
  `code` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '检查项编码',
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '检查项名称',
  `sex` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '性别，0：不限，1：男，2：女',
  `age` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '检查项适用年龄',
  `price` float(10,2) DEFAULT NULL COMMENT '检查项单价',
  `type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '查检项类型,分为检查和检验两种',
  `attention` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '检查项注意事项',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '检查项说明',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='检查项表';

-- ----------------------------
-- Records of checkitem
-- ----------------------------
INSERT INTO `checkitem` VALUES ('28', '0001', '身高', '2', '0-100', '34.00', '2', '无', '身高');
INSERT INTO `checkitem` VALUES ('29', '0002', '体重', '0', '0-100', '5.00', '1', '无', '体重');
INSERT INTO `checkitem` VALUES ('30', '0003', '体重指数', '0', '0-100', '5.00', '1', '无', '体重指数');
INSERT INTO `checkitem` VALUES ('31', '0004', '收缩压', '0', '0-100', '5.00', '1', '无', '收缩压');
INSERT INTO `checkitem` VALUES ('32', '0005', '舒张压', '0', '0-100', '5.00', '1', '无', '舒张压');
INSERT INTO `checkitem` VALUES ('33', '0006', '裸视力（右）', '0', '0-100', '5.00', '1', '无', '裸视力（右）');
INSERT INTO `checkitem` VALUES ('34', '0007', '裸视力（左）', '0', '0-100', '5.00', '1', '无', '裸视力（左）');
INSERT INTO `checkitem` VALUES ('35', '0008', '矫正视力（右）', '0', '0-100', '5.00', '1', '无', '矫正视力（右）');
INSERT INTO `checkitem` VALUES ('36', '00099', '矫正视力（左）', '0', '0-100', '5.00', '1', '无', '矫正视力（左）');
INSERT INTO `checkitem` VALUES ('37', '0010', '色觉', '0', '0-100', '5.00', '1', '无', '色觉');
INSERT INTO `checkitem` VALUES ('38', '0011', '白细胞计数', '0', '0-100', '10.00', '2', '无', '白细胞计数');
INSERT INTO `checkitem` VALUES ('39', '0012', '红细胞计数', '0', '0-100', '10.00', '2', null, '红细胞计数');
INSERT INTO `checkitem` VALUES ('40', '0013', '血红蛋白', '0', '0-100', '10.00', '2', null, '血红蛋白');
INSERT INTO `checkitem` VALUES ('41', '0014', '红细胞压积', '0', '0-100', '10.00', '2', null, '红细胞压积');
INSERT INTO `checkitem` VALUES ('42', '0015', '平均红细胞体积', '0', '0-100', '10.00', '2', null, '平均红细胞体积');
INSERT INTO `checkitem` VALUES ('43', '0016', '平均红细胞血红蛋白含量', '0', '0-100', '10.00', '2', null, '平均红细胞血红蛋白含量');
INSERT INTO `checkitem` VALUES ('44', '0017', '平均红细胞血红蛋白浓度', '0', '0-100', '10.00', '2', null, '平均红细胞血红蛋白浓度');
INSERT INTO `checkitem` VALUES ('45', '0018', '红细胞分布宽度-变异系数', '0', '0-100', '10.00', '2', null, '红细胞分布宽度-变异系数');
INSERT INTO `checkitem` VALUES ('46', '0019', '血小板计数', '0', '0-100', '10.00', '2', null, '血小板计数');
INSERT INTO `checkitem` VALUES ('47', '0020', '平均血小板体积', '0', '0-100', '10.00', '2', null, '平均血小板体积');
INSERT INTO `checkitem` VALUES ('48', '0021', '血小板分布宽度', '0', '0-100', '10.00', '2', null, '血小板分布宽度');
INSERT INTO `checkitem` VALUES ('49', '0022', '淋巴细胞百分比', '0', '0-100', '10.00', '2', null, '淋巴细胞百分比');
INSERT INTO `checkitem` VALUES ('50', '0023', '中间细胞百分比', '0', '0-100', '10.00', '2', null, '中间细胞百分比');
INSERT INTO `checkitem` VALUES ('51', '0024', '中性粒细胞百分比', '0', '0-100', '10.00', '2', null, '中性粒细胞百分比');
INSERT INTO `checkitem` VALUES ('52', '0025', '淋巴细胞绝对值', '0', '0-100', '10.00', '2', null, '淋巴细胞绝对值');
INSERT INTO `checkitem` VALUES ('53', '0026', '中间细胞绝对值', '0', '0-100', '10.00', '2', null, '中间细胞绝对值');
INSERT INTO `checkitem` VALUES ('54', '0027', '中性粒细胞绝对值', '0', '0-100', '10.00', '2', null, '中性粒细胞绝对值');
INSERT INTO `checkitem` VALUES ('55', '0028', '红细胞分布宽度-标准差', '0', '0-100', '10.00', '2', null, '红细胞分布宽度-标准差');
INSERT INTO `checkitem` VALUES ('56', '0029', '血小板压积', '0', '0-100', '10.00', '2', null, '血小板压积');
INSERT INTO `checkitem` VALUES ('57', '0030', '尿比重', '0', '0-100', '10.00', '2', null, '尿比重');
INSERT INTO `checkitem` VALUES ('58', '0031', '尿酸碱度', '0', '0-100', '10.00', '2', null, '尿酸碱度');
INSERT INTO `checkitem` VALUES ('59', '0032', '尿白细胞', '0', '0-100', '10.00', '2', null, '尿白细胞');
INSERT INTO `checkitem` VALUES ('60', '0033', '尿亚硝酸盐', '0', '0-100', '10.00', '2', null, '尿亚硝酸盐');
INSERT INTO `checkitem` VALUES ('61', '0034', '尿蛋白质', '0', '0-100', '10.00', '2', null, '尿蛋白质');
INSERT INTO `checkitem` VALUES ('62', '0035', '尿糖', '0', '0-100', '10.00', '2', null, '尿糖');
INSERT INTO `checkitem` VALUES ('63', '0036', '尿酮体', '0', '0-100', '10.00', '2', null, '尿酮体');
INSERT INTO `checkitem` VALUES ('64', '0037', '尿胆原', '0', '0-100', '10.00', '2', null, '尿胆原');
INSERT INTO `checkitem` VALUES ('65', '0038', '尿胆红素', '0', '0-100', '10.00', '2', null, '尿胆红素');
INSERT INTO `checkitem` VALUES ('66', '0039', '尿隐血', '0', '0-100', '10.00', '2', null, '尿隐血');
INSERT INTO `checkitem` VALUES ('67', '0040', '尿镜检红细胞', '0', '0-100', '10.00', '2', null, '尿镜检红细胞');
INSERT INTO `checkitem` VALUES ('68', '0041', '尿镜检白细胞', '0', '0-100', '10.00', '2', null, '尿镜检白细胞');
INSERT INTO `checkitem` VALUES ('69', '0042', '上皮细胞', '0', '0-100', '10.00', '2', null, '上皮细胞');
INSERT INTO `checkitem` VALUES ('70', '0043', '无机盐类', '0', '0-100', '10.00', '2', null, '无机盐类');
INSERT INTO `checkitem` VALUES ('71', '0044', '尿镜检蛋白定性', '0', '0-100', '10.00', '2', null, '尿镜检蛋白定性');
INSERT INTO `checkitem` VALUES ('72', '0045', '丙氨酸氨基转移酶', '0', '0-100', '10.00', '2', null, '丙氨酸氨基转移酶');
INSERT INTO `checkitem` VALUES ('73', '0046', '天门冬氨酸氨基转移酶', '0', '0-100', '10.00', '2', null, '天门冬氨酸氨基转移酶');
INSERT INTO `checkitem` VALUES ('74', '0047', 'Y-谷氨酰转移酶', '0', '0-100', '10.00', '2', null, 'Y-谷氨酰转移酶');
INSERT INTO `checkitem` VALUES ('75', '0048', '尿素', '0', '0-100', '10.00', '2', null, '尿素');
INSERT INTO `checkitem` VALUES ('76', '0049', '肌酐', '0', '0-100', '10.00', '2', null, '肌酐');
INSERT INTO `checkitem` VALUES ('77', '0050', '尿酸', '0', '0-100', '10.00', '2', null, '尿酸');
INSERT INTO `checkitem` VALUES ('78', '0051', '总胆固醇', '0', '0-100', '10.00', '2', null, '总胆固醇');
INSERT INTO `checkitem` VALUES ('79', '0052', '甘油三酯', '0', '0-100', '10.00', '2', null, '甘油三酯');
INSERT INTO `checkitem` VALUES ('80', '0053', '高密度脂蛋白胆固醇', '0', '0-100', '10.00', '2', null, '高密度脂蛋白胆固醇');
INSERT INTO `checkitem` VALUES ('81', '0054', '低密度脂蛋白胆固醇', '0', '0-100', '10.00', '2', null, '低密度脂蛋白胆固醇');
INSERT INTO `checkitem` VALUES ('82', '0055', '磷酸肌酸激酶', '0', '0-100', '10.00', '2', null, '磷酸肌酸激酶');
INSERT INTO `checkitem` VALUES ('83', '0056', '磷酸肌酸激酶同工酶', '0', '0-100', '10.00', '2', null, '磷酸肌酸激酶同工酶');
INSERT INTO `checkitem` VALUES ('84', '0057', '乳酸脱氢酶', '0', '0-100', '10.00', '2', null, '乳酸脱氢酶');
INSERT INTO `checkitem` VALUES ('85', '0058', '三碘甲状腺原氨酸', '0', '0-100', '10.00', '2', null, '三碘甲状腺原氨酸');
INSERT INTO `checkitem` VALUES ('86', '0059', '甲状腺素', '0', '0-100', '10.00', '2', null, '甲状腺素');
INSERT INTO `checkitem` VALUES ('87', '0060', '促甲状腺激素', '0', '0-100', '10.00', '2', null, '促甲状腺激素');
INSERT INTO `checkitem` VALUES ('88', '0061', '子宫', '2', '0-100', '10.00', '2', null, '子宫');
INSERT INTO `checkitem` VALUES ('89', '0062', '附件', '2', '0-100', '10.00', '2', null, '附件');
INSERT INTO `checkitem` VALUES ('90', '0063', '总胆红素', '0', '0-100', '10.00', '2', null, '总胆红素');
INSERT INTO `checkitem` VALUES ('91', '0064', '直接胆红素', '0', '0-100', '10.00', '2', null, '直接胆红素');
INSERT INTO `checkitem` VALUES ('92', '0065', '间接胆红素', '0', '0-100', '10.00', '2', null, '间接胆红素');
INSERT INTO `checkitem` VALUES ('93', '00110', '视力检查', '0', '0-100', '10.00', '1', '无', '视力检查');

-- ----------------------------
-- Table structure for member
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member` (
  `id` bigint NOT NULL COMMENT '主键',
  `nickname` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '昵称',
  `phone` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '电话',
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '头像',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` int NOT NULL DEFAULT '0' COMMENT '是否已删除，0：未删除，1：已删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='普通用户';

-- ----------------------------
-- Records of member
-- ----------------------------
INSERT INTO `member` VALUES ('1719998606804688897', '普通用户', '18812345678', 'https://yjy-oss-videos.oss-accelerate.aliyuncs.com/tx.png', '2023-11-02 16:43:18', '2023-11-02 16:43:18', '0');
INSERT INTO `member` VALUES ('1721364979103543297', '普通用户', '15066699132', 'https://yjy-oss-videos.oss-accelerate.aliyuncs.com/tx.png', '2023-11-06 11:12:47', '2023-11-06 11:12:47', '0');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` bigint NOT NULL COMMENT '订单id',
  `order_status` int NOT NULL COMMENT '订单状态，0：未支付，100：待体检，200：已体检，300：已关闭，400：已取消',
  `pay_status` int NOT NULL COMMENT '支付状态，0：未支付，1：已支付，2：退款中，3：退款成功，4：退款失败',
  `setmeal_id` bigint NOT NULL DEFAULT '0' COMMENT '套餐id',
  `setmeal_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '套餐名称',
  `setmeal_sex` int NOT NULL COMMENT '套餐适用性别，0：不限，1：男，2：女',
  `setmeal_age` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '套餐适用年龄',
  `setmeal_img` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '套餐图片',
  `setmeal_remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '套餐说明',
  `setmeal_price` decimal(10,2) NOT NULL COMMENT '套餐价格',
  `reservation_date` date NOT NULL COMMENT '预约日期，格式：yyyy-MM',
  `checkup_person_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '体检人姓名',
  `checkup_person_sex` int NOT NULL COMMENT '体检人性别，0：不限，1：男，2女',
  `checkup_person_phone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '体检人电话',
  `checkup_person_idcard` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '体检人身份证号',
  `member_id` bigint NOT NULL COMMENT '用户id',
  `member_phone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户电话',
  `pay_time` datetime DEFAULT NULL COMMENT '支付时间',
  `trading_channel` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '支付渠道',
  `trading_order_no` bigint DEFAULT NULL COMMENT '支付服务交易单号',
  `transaction_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '第三方支付的交易号',
  `refund_no` bigint DEFAULT NULL COMMENT '支付服务退款单号',
  `refund_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '第三方支付的退款单号',
  `sort_by` bigint DEFAULT NULL COMMENT '排序字段（取创建时间的时间戳）',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `order_status_member_id_sort_by` (`order_status`,`member_id`,`sort_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='订单表';

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('1728961337336836098', '300', '3', '16', '入职体检套餐-含彩超', '0', '18岁以上', 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/fd158fa7-0927-4e10-987e-bbff1c86ff09.png', '本套餐适用于入职体检，包括彩超检查、一般检查、血液检测等检查项目。通过这些检查项目，可以帮助员工全面了解自身健康状况，为入职提供重要依据。', '0.01', '2023-11-28', '苗先生', '1', '13333333333', '410183198703051510', '1721364979103543297', '15066699132', '2023-11-27 10:21:45', 'WECHAT_PAY', '1728962152038494209', '4200001973202311273981614609', '1728965832208904193', '50310207882023112704645344038', '1701051480013', '2023-11-27 10:18:51', '2023-11-27 10:37:00');

-- ----------------------------
-- Table structure for orders_cancelled
-- ----------------------------
DROP TABLE IF EXISTS `orders_cancelled`;
CREATE TABLE `orders_cancelled` (
  `id` bigint NOT NULL COMMENT '订单id',
  `canceller_id` bigint DEFAULT NULL COMMENT '取消人',
  `canceller_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '取消人名称',
  `canceller_type` int DEFAULT NULL COMMENT '取消人类型，1：普通用户，4管理员',
  `cancel_reason` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '取消原因',
  `cancel_time` datetime DEFAULT NULL COMMENT '取消时间',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='订单取消表';

-- ----------------------------
-- Records of orders_cancelled
-- ----------------------------
INSERT INTO `orders_cancelled` VALUES ('1728961337336836098', '1721364979103543297', null, '1', '不想体检了', '2023-11-27 10:22:04', '2023-11-27 10:22:55', '2023-11-27 10:22:55');

-- ----------------------------
-- Table structure for orders_refund
-- ----------------------------
DROP TABLE IF EXISTS `orders_refund`;
CREATE TABLE `orders_refund` (
  `id` bigint NOT NULL COMMENT '订单id',
  `trading_order_no` bigint DEFAULT NULL COMMENT '支付服务交易单号',
  `real_pay_amount` decimal(10,2) DEFAULT NULL COMMENT '实付金额',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='订单退款表';

-- ----------------------------
-- Records of orders_refund
-- ----------------------------

-- ----------------------------
-- Table structure for reservation_setting
-- ----------------------------
DROP TABLE IF EXISTS `reservation_setting`;
CREATE TABLE `reservation_setting` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `order_date` date NOT NULL COMMENT '预约日期',
  `number` int NOT NULL COMMENT '可预约人数',
  `reservations` int NOT NULL DEFAULT '0' COMMENT '已预约人数',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `order_date` (`order_date`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='预约设置';

-- ----------------------------
-- Records of reservation_setting
-- ----------------------------
INSERT INTO `reservation_setting` VALUES ('1', '2023-11-28', '1', '1');

-- ----------------------------
-- Table structure for setmeal
-- ----------------------------
DROP TABLE IF EXISTS `setmeal`;
CREATE TABLE `setmeal` (
  `id` bigint NOT NULL DEFAULT '0' COMMENT '套餐id',
  `name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '套餐名称',
  `code` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '套餐编码',
  `help_code` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '套餐助记码',
  `sex` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '性别，0：不限，1：男，2：女',
  `age` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '套餐适用年龄',
  `price` float(10,2) DEFAULT NULL COMMENT '套餐价格',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '套餐说明',
  `attention` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '套餐注意事项',
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '套餐图片',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='套餐表';

-- ----------------------------
-- Records of setmeal
-- ----------------------------
INSERT INTO `setmeal` VALUES ('16', '入职体检套餐-含彩超', '0005', 'RZTJ', '0', '18岁以上', '0.01', '本套餐适用于入职体检，包括彩超检查、一般检查、血液检测等检查项目。通过这些检查项目，可以帮助员工全面了解自身健康状况，为入职提供重要依据。', null, 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/fd158fa7-0927-4e10-987e-bbff1c86ff09.png');
INSERT INTO `setmeal` VALUES ('17', '公务员标准入职体检套餐', '0006', 'GWYTJ', '0', '20-35', '0.01', '本套餐适用于公务员标准入职体检，包括常规体检和相关检查项目，如内外科、五官科、心电图、胸透、血常规、尿常规、肝功、肾功等。通过这些检查项目，可以帮助受检者了解自己的身体状况，判断是否符合公务员入职标准。', null, 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/7dd50e9d-a611-4dba-b93f-f26f6a1a6e78.png');
INSERT INTO `setmeal` VALUES ('18', '体检套餐1男（含肿瘤两项（AFP、CEA）+幽门杆菌检查）', '0007', 'TJNAN', '1', '30岁以上', '499.99', '本套餐适用于30岁以上的男性，包括肿瘤两项（AFP、CEA）和幽门杆菌检查。AFP（甲胎蛋白）是诊断原发性肝癌的特异性标志物，CEA（癌胚抗原）是广谱性肿瘤标志物，幽门杆菌检查则是用来检测肠道菌群的健康状况。通过这些检查项目，可以帮助您及早发现并预防相关疾病。', null, 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/ccb68db8-5f55-4086-a5b1-44b6e0670c71.png');
INSERT INTO `setmeal` VALUES ('19', '体检套餐1女（含肿瘤两项（AFP、CEA）+幽门杆菌检查）  ', '0008', 'TJNV', '2', '30岁以上', '499.99', '本套餐适用于30岁以上的女性，包括肿瘤两项（AFP、CEA）和幽门杆菌检查。AFP（甲胎蛋白）是诊断原发性肝癌的特异性标志物，CEA（癌胚抗原）是广谱性肿瘤标志物，幽门杆菌检查则是用来检测胃部幽门螺杆菌感染的情况。通过这些检查项目，可以帮助您及早发现并预防相关疾病。', null, 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/8469c70b-15f2-44af-8157-f8ba8e6cb935.png');
INSERT INTO `setmeal` VALUES ('20', '全面升级套餐（女已婚，含头部CT+胸部CT+女性肿瘤全套）', '0009', 'QMSJNV', '2', '18岁以上', '4751.00', '本套餐适用于已婚女性，包括头部CT、胸部CT和女性肿瘤全套等检查项目。通过这些检查项目，可以帮助女性及早发现并预防相关疾病，如脑血管疾病、肺部疾病和女性特定癌症等。', null, 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/1dcdcc88-cdf7-4a1e-8148-05ce48818469.png');
INSERT INTO `setmeal` VALUES ('21', '全面升级套餐（男，含头部CT+胸部CT+男性肿瘤全套+心脏彩超）', '0010', 'QMSJNAN', '1', '18岁以上', '5559.00', '本套餐适用于男性，包括头部CT、胸部CT、男性肿瘤全套和心脏彩超等检查项目。通过这些检查项目，可以帮助男性及早发现并预防相关疾病，如脑血管疾病、肺部疾病和男性特定癌症以及心脏疾病等。', null, 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/c09e8fda-8b0c-4974-ac91-6656f9b0cf7a.png');
INSERT INTO `setmeal` VALUES ('22', '中西医结合精选套餐A-男（含颈动脉+椎动脉彩超+脑梗+肿瘤3项）', '0011', 'ZXJHNAN', '1', '18岁以上', '1742.99', '本套餐适用于男性，包括颈动脉、椎动脉彩超，脑梗和肿瘤3项等检查项目。通过这些检查项目，可以帮助男性及早发现并预防相关疾病，如脑血管疾病、肺部疾病和男性特定癌症以及心脏疾病等。', null, 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/fa1c7fbc-b49f-4dde-ba17-07310a4395e8.png');
INSERT INTO `setmeal` VALUES ('23', '中西医结合精选套餐A-女已婚（含宫颈癌TCT+宫颈癌HPV）', '0012', 'ZXJHNV', '2', '18岁以上', '2587.00', '本套餐适用于已婚女性，包括宫颈癌TCT检查和宫颈癌HPV检查等检查项目。通过这些检查项目，可以帮助女性及早发现并预防宫颈癌等异常情况。', null, 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/20c7c32c-30d1-4d32-a197-6c34ea2ccada.png');
INSERT INTO `setmeal` VALUES ('24', '心脑血管强化体检套餐（男）', '0013', 'XNXG', '1', '45-65岁', '2860.09', '本套餐适用于男性，重点检查心脑血管疾病，包括心脏彩超、动态心电图、血脂分析、血压测量等检查项目。通过这些检查项目，可以帮助男性及早发现心脑血管疾病，预防意外发生。', null, 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/63ac2113-3920-4bba-beba-997a679d0f10.png');
INSERT INTO `setmeal` VALUES ('25', '家有老人健康体检套餐（女）', '0014', 'JYLR', '2', '60岁以上', '3490.01', '本套餐适用于60岁以上的女性，重点检查心血管疾病、糖尿病等老年常见疾病，包括心电图、血压测量、血糖检测、血脂分析等检查项目。通过这些检查项目，可以帮助老年女性及早发现潜在的健康问题，及时进行干预和治疗。', null, 'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/ea46c97d-35a5-4756-90e3-17335cff03f9.png');

-- ----------------------------
-- Table structure for setmeal_checkgroup
-- ----------------------------
DROP TABLE IF EXISTS `setmeal_checkgroup`;
CREATE TABLE `setmeal_checkgroup` (
  `setmeal_id` bigint NOT NULL DEFAULT '0' COMMENT '套餐id',
  `checkgroup_id` bigint NOT NULL DEFAULT '0' COMMENT '检查组id',
  PRIMARY KEY (`setmeal_id`,`checkgroup_id`) USING BTREE,
  KEY `checkgroup_key` (`checkgroup_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='套餐与检查组关联表';

-- ----------------------------
-- Records of setmeal_checkgroup
-- ----------------------------
INSERT INTO `setmeal_checkgroup` VALUES ('16', '5');
INSERT INTO `setmeal_checkgroup` VALUES ('17', '5');
INSERT INTO `setmeal_checkgroup` VALUES ('18', '5');
INSERT INTO `setmeal_checkgroup` VALUES ('19', '5');
INSERT INTO `setmeal_checkgroup` VALUES ('20', '5');
INSERT INTO `setmeal_checkgroup` VALUES ('21', '5');
INSERT INTO `setmeal_checkgroup` VALUES ('22', '5');
INSERT INTO `setmeal_checkgroup` VALUES ('23', '5');
INSERT INTO `setmeal_checkgroup` VALUES ('24', '5');
INSERT INTO `setmeal_checkgroup` VALUES ('25', '5');
INSERT INTO `setmeal_checkgroup` VALUES ('16', '6');
INSERT INTO `setmeal_checkgroup` VALUES ('17', '6');
INSERT INTO `setmeal_checkgroup` VALUES ('18', '6');
INSERT INTO `setmeal_checkgroup` VALUES ('19', '6');
INSERT INTO `setmeal_checkgroup` VALUES ('20', '6');
INSERT INTO `setmeal_checkgroup` VALUES ('21', '6');
INSERT INTO `setmeal_checkgroup` VALUES ('22', '6');
INSERT INTO `setmeal_checkgroup` VALUES ('23', '6');
INSERT INTO `setmeal_checkgroup` VALUES ('24', '6');
INSERT INTO `setmeal_checkgroup` VALUES ('25', '6');
INSERT INTO `setmeal_checkgroup` VALUES ('16', '7');
INSERT INTO `setmeal_checkgroup` VALUES ('17', '7');
INSERT INTO `setmeal_checkgroup` VALUES ('18', '7');
INSERT INTO `setmeal_checkgroup` VALUES ('19', '7');
INSERT INTO `setmeal_checkgroup` VALUES ('20', '7');
INSERT INTO `setmeal_checkgroup` VALUES ('21', '7');
INSERT INTO `setmeal_checkgroup` VALUES ('22', '7');
INSERT INTO `setmeal_checkgroup` VALUES ('23', '7');
INSERT INTO `setmeal_checkgroup` VALUES ('24', '7');
INSERT INTO `setmeal_checkgroup` VALUES ('25', '7');
INSERT INTO `setmeal_checkgroup` VALUES ('16', '8');
INSERT INTO `setmeal_checkgroup` VALUES ('17', '8');
INSERT INTO `setmeal_checkgroup` VALUES ('18', '8');
INSERT INTO `setmeal_checkgroup` VALUES ('19', '8');
INSERT INTO `setmeal_checkgroup` VALUES ('20', '8');
INSERT INTO `setmeal_checkgroup` VALUES ('21', '8');
INSERT INTO `setmeal_checkgroup` VALUES ('22', '8');
INSERT INTO `setmeal_checkgroup` VALUES ('23', '8');
INSERT INTO `setmeal_checkgroup` VALUES ('24', '8');
INSERT INTO `setmeal_checkgroup` VALUES ('25', '8');
INSERT INTO `setmeal_checkgroup` VALUES ('16', '9');
INSERT INTO `setmeal_checkgroup` VALUES ('17', '9');
INSERT INTO `setmeal_checkgroup` VALUES ('18', '9');
INSERT INTO `setmeal_checkgroup` VALUES ('19', '9');
INSERT INTO `setmeal_checkgroup` VALUES ('20', '9');
INSERT INTO `setmeal_checkgroup` VALUES ('21', '9');
INSERT INTO `setmeal_checkgroup` VALUES ('22', '9');
INSERT INTO `setmeal_checkgroup` VALUES ('23', '9');
INSERT INTO `setmeal_checkgroup` VALUES ('24', '9');
INSERT INTO `setmeal_checkgroup` VALUES ('25', '9');
INSERT INTO `setmeal_checkgroup` VALUES ('16', '10');
INSERT INTO `setmeal_checkgroup` VALUES ('17', '10');
INSERT INTO `setmeal_checkgroup` VALUES ('18', '10');
INSERT INTO `setmeal_checkgroup` VALUES ('19', '10');
INSERT INTO `setmeal_checkgroup` VALUES ('20', '10');
INSERT INTO `setmeal_checkgroup` VALUES ('21', '10');
INSERT INTO `setmeal_checkgroup` VALUES ('22', '10');
INSERT INTO `setmeal_checkgroup` VALUES ('23', '10');
INSERT INTO `setmeal_checkgroup` VALUES ('24', '10');
INSERT INTO `setmeal_checkgroup` VALUES ('25', '10');
INSERT INTO `setmeal_checkgroup` VALUES ('16', '11');
INSERT INTO `setmeal_checkgroup` VALUES ('17', '11');
INSERT INTO `setmeal_checkgroup` VALUES ('18', '11');
INSERT INTO `setmeal_checkgroup` VALUES ('19', '11');
INSERT INTO `setmeal_checkgroup` VALUES ('20', '11');
INSERT INTO `setmeal_checkgroup` VALUES ('21', '11');
INSERT INTO `setmeal_checkgroup` VALUES ('22', '11');
INSERT INTO `setmeal_checkgroup` VALUES ('23', '11');
INSERT INTO `setmeal_checkgroup` VALUES ('24', '11');
INSERT INTO `setmeal_checkgroup` VALUES ('25', '11');
INSERT INTO `setmeal_checkgroup` VALUES ('16', '12');
INSERT INTO `setmeal_checkgroup` VALUES ('17', '12');
INSERT INTO `setmeal_checkgroup` VALUES ('18', '12');
INSERT INTO `setmeal_checkgroup` VALUES ('19', '12');
INSERT INTO `setmeal_checkgroup` VALUES ('20', '12');
INSERT INTO `setmeal_checkgroup` VALUES ('21', '12');
INSERT INTO `setmeal_checkgroup` VALUES ('22', '12');
INSERT INTO `setmeal_checkgroup` VALUES ('23', '12');
INSERT INTO `setmeal_checkgroup` VALUES ('24', '12');
INSERT INTO `setmeal_checkgroup` VALUES ('25', '12');
INSERT INTO `setmeal_checkgroup` VALUES ('16', '13');
INSERT INTO `setmeal_checkgroup` VALUES ('17', '13');
INSERT INTO `setmeal_checkgroup` VALUES ('18', '13');
INSERT INTO `setmeal_checkgroup` VALUES ('19', '13');
INSERT INTO `setmeal_checkgroup` VALUES ('20', '13');
INSERT INTO `setmeal_checkgroup` VALUES ('21', '13');
INSERT INTO `setmeal_checkgroup` VALUES ('22', '13');
INSERT INTO `setmeal_checkgroup` VALUES ('23', '13');
INSERT INTO `setmeal_checkgroup` VALUES ('24', '13');
INSERT INTO `setmeal_checkgroup` VALUES ('25', '13');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` bigint NOT NULL COMMENT '主键',
  `username` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户名',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '头像',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '管理员姓名',
  `phone` varchar(14) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '手机号',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '密码',
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '账户状态：0-禁用 1-正常',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_by` bigint DEFAULT NULL COMMENT '创建者id',
  `update_by` bigint DEFAULT '0' COMMENT '更新者id',
  `is_deleted` tinyint NOT NULL DEFAULT '0' COMMENT '逻辑删除，默认0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='管理员';

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1674350264389750786', 'demo', null, '管理员', null, '$2a$10$v633CoJ.eIMA8sTuZxN5fOkmls5K8JmyVa6LEOptHl80bs/JA4JxO', '1', '2023-06-29 09:33:04', '2023-07-19 21:31:26', null, null, '0');
