/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 100417
 Source Host           : localhost:3306
 Source Schema         : yii2advanced

 Target Server Type    : MySQL
 Target Server Version : 100417
 File Encoding         : 65001

 Date: 19/11/2021 17:39:13
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for country
-- ----------------------------
DROP TABLE IF EXISTS `country`;
CREATE TABLE `country`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of country
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `number_phone` int NULL DEFAULT NULL,
  `sex` char(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `avatar_url` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `date_create` datetime(0) NULL DEFAULT NULL,
  `date_update` datetime(0) NULL DEFAULT NULL,
  `last_login` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (2, 'Nam3 ', NULL, '', '', '', '', NULL, NULL, NULL);
INSERT INTO `user` VALUES (3, 'Hoa ssss', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES (4, 'Loan', 123, 'nam', 'ádfasdasd', 'dfdsfsdf', '', NULL, NULL, NULL);
INSERT INTO `user` VALUES (5, 'Ngoc', 123, 'nam', 'ádfasdasd', 'dfdsfsdf', '', NULL, NULL, NULL);
INSERT INTO `user` VALUES (6, 'mai', 123, 'nam', 'ádfasdasd', 'dfdsfsdf', '', NULL, NULL, NULL);
INSERT INTO `user` VALUES (7, 'Nam', 123, 'nam', 'ádfasdasd', 'dfdsfsdf', '', NULL, NULL, NULL);
INSERT INTO `user` VALUES (8, 'Son', 123, 'nam', 'ádfasdasd', 'dfdsfsdf', '', NULL, NULL, NULL);
INSERT INTO `user` VALUES (9, 'Khanh', 123, 'nam', 'ádfasdasd', 'dfdsfsdf', '', NULL, NULL, NULL);
INSERT INTO `user` VALUES (10, 'Vu', 123, 'nam', 'ádfasdasd', 'dfdsfsdf', '', NULL, NULL, NULL);
INSERT INTO `user` VALUES (11, 'Binh', 123, 'nam', 'ádfasdasd', 'dfdsfsdf', '', NULL, NULL, NULL);
INSERT INTO `user` VALUES (12, 'Son', 123, 'nam', 'ádfasdasd', 'dfdsfsdf', '', NULL, NULL, NULL);
INSERT INTO `user` VALUES (13, 'Kao', 123, 'nam', 'ádfasdasd', 'dfdsfsdf', '', NULL, NULL, NULL);
INSERT INTO `user` VALUES (14, 'Hip', 123, 'nam', 'ádfasdasd', 'dfdsfsdf', '', NULL, NULL, NULL);
INSERT INTO `user` VALUES (15, 'Loi sơn', 123, 'nam', 'ádfasdasd', 'dfdsfsdf', '', NULL, NULL, NULL);
INSERT INTO `user` VALUES (16, 'Hoa mai', 123, 'nam', 'ádfasdasd', 'dfdsfsdf', '', NULL, NULL, NULL);
INSERT INTO `user` VALUES (17, 'Vu Thanh', 123, 'nam', 'ádfasdasd', 'dfdsfsdf', '', NULL, NULL, NULL);
INSERT INTO `user` VALUES (18, 'Quỳnh Giao', 123, 'nam', 'ádfasdasd', 'dfdsfsdf', '', NULL, NULL, NULL);
INSERT INTO `user` VALUES (19, 'Mai Sơn', 123, 'nam', 'ádfasdasd', 'dfdsfsdf', '', NULL, NULL, NULL);
INSERT INTO `user` VALUES (20, 'Hoa Lệ', 123, 'nam', 'ádfasdasd', 'dfdsfsdf', '', NULL, NULL, NULL);
INSERT INTO `user` VALUES (21, 'Nhân viên', 123, 'nam', 'ádfasdasd', 'dfdsfsdf', '', NULL, NULL, NULL);
INSERT INTO `user` VALUES (22, 'Vega', 123, 'nam', 'ádfasdasd', 'dfdsfsdf', '', NULL, NULL, NULL);
INSERT INTO `user` VALUES (23, 'Dien thoai', 123, 'nam', 'ádfasdasd', 'dfdsfsdf', '', NULL, NULL, NULL);
INSERT INTO `user` VALUES (24, 'May Tinh', 123, 'nam', 'ádfasdasd', 'dfdsfsdf', '', NULL, NULL, NULL);
INSERT INTO `user` VALUES (25, 'Tai nghe', 123, 'nam', 'ádfasdasd', 'dfdsfsdf', '', NULL, NULL, NULL);
INSERT INTO `user` VALUES (26, 'sam sung', 123, 'nam', 'ádfasdasd', 'dfdsfsdf', '', NULL, NULL, NULL);
INSERT INTO `user` VALUES (27, 'Iphone', 123, 'nam', 'ádfasdasd', 'dfdsfsdf', '', NULL, NULL, NULL);
INSERT INTO `user` VALUES (28, 'Vũ Trọng Phụng', 123, 'nam', 'ádfasdasd', 'dfdsfsdf', '', NULL, NULL, NULL);
INSERT INTO `user` VALUES (29, 'Trương Hoài Nam', 123, 'nam', 'ádfasdasd', 'dfdsfsdf', '', NULL, NULL, NULL);
INSERT INTO `user` VALUES (30, 'Nguyễn Thị Tùng Khánh', 123, 'nam', 'ádfasdasd', 'dfdsfsdf', '', NULL, NULL, NULL);
INSERT INTO `user` VALUES (31, 'hoanv12', 111, NULL, '', '', NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES (32, 'qqqqq', 1111, NULL, 'qqqq', 'Untitled.png', NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES (33, 'eeee', 222, NULL, 'aaaaa', 'Untitled.png', NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES (34, 'xxxxx', 121212, NULL, 'vvvvvvvvv', '80821381412189341_508683105955311_8469949506941842481_o.jpg', NULL, NULL, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
