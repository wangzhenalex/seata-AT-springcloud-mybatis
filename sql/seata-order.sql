/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50725
 Source Host           : localhost:3306
 Source Schema         : seata-order

 Target Server Type    : MySQL
 Target Server Version : 50725
 File Encoding         : 65001

 Date: 17/02/2020 23:32:05
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

CREATE DATABASE `seata-order` CHARACTER SET 'utf8';
USE `seata-order`;

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order`  (
  `order_id` int(255) NOT NULL AUTO_INCREMENT COMMENT '订单编号',
  `username` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `points` int(255) NOT NULL COMMENT '增加会员积分',
  `goodsCode` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品编码',
  `quantity` int(255) NOT NULL COMMENT '购买数量',
  `amount` float(255, 0) NOT NULL COMMENT '物品总价',
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 51 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES (31, 'zhangsan', 3, 'coke', 10, 30);
INSERT INTO `order` VALUES (33, 'zhangsan', 3, 'coke', 10, 30);
INSERT INTO `order` VALUES (34, '', 0, 'coke', 10, 30);
INSERT INTO `order` VALUES (35, '', 0, 'coke', 10, 30);
INSERT INTO `order` VALUES (36, '', 0, 'coke', 10, 30);
INSERT INTO `order` VALUES (37, '', 0, 'coke', 10, 30);
INSERT INTO `order` VALUES (38, '', 0, 'coke', 10, 30);
INSERT INTO `order` VALUES (39, '', 0, 'coke', 10, 30);
INSERT INTO `order` VALUES (40, '', 0, 'coke', 10, 30);
INSERT INTO `order` VALUES (41, '', 0, 'coke', 10, 30);
INSERT INTO `order` VALUES (42, '', 0, 'coke', 10, 30);
INSERT INTO `order` VALUES (43, '', 0, 'coke', 10, 30);
INSERT INTO `order` VALUES (44, '', 0, 'coke', 10, 30);
INSERT INTO `order` VALUES (45, '', 0, 'coke', 10, 30);
INSERT INTO `order` VALUES (46, '', 0, 'coke', 10, 30);
INSERT INTO `order` VALUES (47, '', 0, 'coke', 10, 30);
INSERT INTO `order` VALUES (50, '', 0, 'coke', 10, 30);

-- ----------------------------
-- Table structure for undo_log
-- ----------------------------
DROP TABLE IF EXISTS `undo_log`;
CREATE TABLE `undo_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `branch_id` bigint(20) NOT NULL,
  `xid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `context` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `rollback_info` longblob NOT NULL,
  `log_status` int(11) NOT NULL,
  `log_created` datetime(0) NOT NULL,
  `log_modified` datetime(0) NOT NULL,
  `ext` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `ux_undo_log`(`xid`, `branch_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
