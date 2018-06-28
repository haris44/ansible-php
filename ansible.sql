/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 50542
 Source Host           : localhost:8899
 Source Schema         : ansible

 Target Server Type    : MySQL
 Target Server Version : 50542
 File Encoding         : 65001

 Date: 22/06/2018 16:21:07
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for hosts
-- ----------------------------
DROP TABLE IF EXISTS `hosts`;
CREATE TABLE `hosts` (
  `idHost` int(20) NOT NULL AUTO_INCREMENT,
  `name` text,
  `ip` text,
  PRIMARY KEY (`idHost`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of hosts
-- ----------------------------
BEGIN;
INSERT INTO `hosts` VALUES (1, 'web', '51.15.122.26');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
