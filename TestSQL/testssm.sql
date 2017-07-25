/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50718
Source Host           : localhost:3306
Source Database       : testssm

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2017-07-25 15:43:51
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for company
-- ----------------------------
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company` (
  `id` int(20) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_phone` varchar(10) NOT NULL,
  `user_fax` varchar(10) NOT NULL,
  `user_d` varchar(50) NOT NULL,
  `user_p` varchar(10) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `company_id` varchar(50) NOT NULL,
  `company_aname` varchar(50) NOT NULL,
  `company_cname` varchar(50) NOT NULL,
  `company_ename` varchar(50) NOT NULL,
  `company_rname` varchar(10) NOT NULL,
  `company_date` date NOT NULL,
  `company_e` int(20) NOT NULL,
  `company_c` decimal(20,0) NOT NULL,
  `company_txt` text NOT NULL,
  `company_stxt` text NOT NULL,
  `company_ladd` text NOT NULL,
  `company_add` text NOT NULL,
  `company_phone` int(10) NOT NULL,
  `company_fax` int(10) NOT NULL,
  `company_area` text NOT NULL,
  `company_type` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company
-- ----------------------------
INSERT INTO `company` VALUES ('1', 'admin', 'admin', '000', '000', '部門名稱', '職稱', 'admin@admin.com', '123456', '公司簡稱', '公司中文名稱', '公司英文名稱', 'admin', '2017-07-25', '100', '1000000', 'admin company', 'admin company', 'admin', 'admin', '123456789', '123456789', 'admin', 'admin');

-- ----------------------------
-- Table structure for user_login
-- ----------------------------
DROP TABLE IF EXISTS `user_login`;
CREATE TABLE `user_login` (
  `id` int(11) NOT NULL,
  `user_name` varchar(40) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_login
-- ----------------------------
INSERT INTO `user_login` VALUES ('1', 'admin', '123');
SET FOREIGN_KEY_CHECKS=1;
