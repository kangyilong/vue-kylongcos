/*
Navicat MySQL Data Transfer

Source Server         : sec
Source Server Version : 50560
Source Host           : localhost:3306
Source Database       : sec

Target Server Type    : MYSQL
Target Server Version : 50560
File Encoding         : 65001

Date: 2018-08-02 17:07:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sec2
-- ----------------------------
DROP TABLE IF EXISTS `sec2`;
CREATE TABLE `sec2` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `hide_p2` char(200) NOT NULL,
  `hide_p3` char(200) NOT NULL,
  `show_p2` char(200) NOT NULL,
  `icon` char(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sec2
-- ----------------------------
INSERT INTO `sec2` VALUES ('1', '企业高端定制网站设计', '彰显品牌形象', '高端定制网站', 'icon-html5');
INSERT INTO `sec2` VALUES ('2', '定制手机网站 / 微网站制作', '布局移动互联网', '移动网站建设', 'icon-shouji-copy');
INSERT INTO `sec2` VALUES ('3', '微信公众平台地址开发，为企业提供便捷的推广渠道', '', '微信平台开发', 'icon-weixin');
INSERT INTO `sec2` VALUES ('4', 'IIS等网站运行环境安全维护', '业务的稳定来源', 'UI 美工设计', 'icon-shield');
INSERT INTO `sec2` VALUES ('5', '基于 iOS / Android 应用开发', '掌控智能终端时代', 'APP应用程序', 'icon-iphone');
INSERT INTO `sec2` VALUES ('6', '基于 B/S 架构的系统研发', '让业务办公轻松自如', '业务系统研发', 'icon-sitemap');
INSERT INTO `sec2` VALUES ('7', '我们不只提供云硬件和网络', '更加注重技术运维', '服务器运维', 'icon-dropbox');

-- ----------------------------
-- Table structure for sec3
-- ----------------------------
DROP TABLE IF EXISTS `sec3`;
CREATE TABLE `sec3` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `li_class` char(50) NOT NULL,
  `txt` char(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sec3
-- ----------------------------
INSERT INTO `sec3` VALUES ('1', 'sec3_li01', '浙江众成包装材料股份有限公司');
INSERT INTO `sec3` VALUES ('2', 'sec3_li02', '嘉兴市华益股份有限公司');
INSERT INTO `sec3` VALUES ('3', 'sec3_li03', '浙江联洋新材料股份有限公司');
INSERT INTO `sec3` VALUES ('4', 'sec3_li04', '浙江新嘉联电子股份有限公司');
INSERT INTO `sec3` VALUES ('5', 'sec3_li05', '新都实业');
INSERT INTO `sec3` VALUES ('6', 'sec3_li06', '加西贝拉压缩股份有限公司');
INSERT INTO `sec3` VALUES ('7', 'sec3_li07', '浙江晨丰科技股份有限公司');
INSERT INTO `sec3` VALUES ('8', 'sec3_li08', '嘉兴市大明实业有限公司');
INSERT INTO `sec3` VALUES ('9', 'sec3_li09', '海盐县百合美家庭农场');

-- ----------------------------
-- Table structure for sec4
-- ----------------------------
DROP TABLE IF EXISTS `sec4`;
CREATE TABLE `sec4` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `img_url` char(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sec4
-- ----------------------------
INSERT INTO `sec4` VALUES ('1', '../../static/images/1491385339.png');
INSERT INTO `sec4` VALUES ('2', '../../static/images/1491385771.png');
INSERT INTO `sec4` VALUES ('3', '../../static/images/1491387405.png');
INSERT INTO `sec4` VALUES ('4', '../../static/images/1491385866.png');
INSERT INTO `sec4` VALUES ('5', '../../static/images/1491385867.png');
INSERT INTO `sec4` VALUES ('6', '../../static/images/1491386076.png');
INSERT INTO `sec4` VALUES ('7', '../../static/images/1491386315.png');
INSERT INTO `sec4` VALUES ('8', '../../static/images/1491386700.png');
INSERT INTO `sec4` VALUES ('9', '../../static/images/1491386747.png');
INSERT INTO `sec4` VALUES ('10', '../../static/images/1491386954.png');
INSERT INTO `sec4` VALUES ('11', '../../static/images/1491387091.png');
INSERT INTO `sec4` VALUES ('12', '../../static/images/1491387192.png');
INSERT INTO `sec4` VALUES ('13', '../../static/images/1491387273.png');
INSERT INTO `sec4` VALUES ('14', '../../static/images/1491388142.png');
INSERT INTO `sec4` VALUES ('15', '../../static/images/1491442593.png');
INSERT INTO `sec4` VALUES ('16', '../../static/images/1491443435.png');

-- ----------------------------
-- Table structure for sec5
-- ----------------------------
DROP TABLE IF EXISTS `sec5`;
CREATE TABLE `sec5` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `cla_i01` char(50) NOT NULL,
  `cla_i02` char(50) NOT NULL,
  `cla_i03` char(50) NOT NULL,
  `con_p01` char(200) NOT NULL,
  `con_p02` char(200) NOT NULL,
  `con_p03` char(200) NOT NULL,
  `con_p04` char(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sec5
-- ----------------------------
INSERT INTO `sec5` VALUES ('1', 'icon-shouji-copy', 'icon-ipad', 'icon-computer_icon', '触及视觉灵魂的设计趋势', '精心布局的用户体验', '毫无顾忌地通过任何终端', '呈现在客户的眼前');
INSERT INTO `sec5` VALUES ('2', 'icon-html5', 'icon-css3', 'icon-rss', 'Html5 + CSS3 响应式布局', '卓越的浏览器兼容性', '因为高端，所以出众', '');
INSERT INTO `sec5` VALUES ('3', 'icon-windows', 'icon-iphone', 'icon-iconfontandroid', '基于 B/S 架构的网站建设', '无障碍的跨平台应用', '无须用户下载安装即可使用', '云端管理，轻松维护');
INSERT INTO `sec5` VALUES ('4', 'icon-money', 'icon-rmb', 'icon-usd', '在线购物商城应用安装', '支持各种货币结算', '各种支付接口应有尽有', '');
INSERT INTO `sec5` VALUES ('5', 'icon-shouji-copy', 'icon-ipad', 'icon-computer_icon', '触及视觉灵魂的设计趋势', '精心布局的用户体验', '毫无顾忌地通过任何终端', '呈现在客户的眼前');
INSERT INTO `sec5` VALUES ('6', 'icon-html5', 'icon-css3', 'icon-rss', 'Html5 + CSS3 响应式布局', '卓越的浏览器兼容性', '因为高端，所以出众', '');
INSERT INTO `sec5` VALUES ('7', 'icon-windows', 'icon-iphone', 'icon-iconfontandroid', '基于 B/S 架构的网站建设', '无障碍的跨平台应用', '无须用户下载安装即可使用', '云端管理，轻松维护');
INSERT INTO `sec5` VALUES ('8', 'icon-money', 'icon-rmb', 'icon-usd', '在线购物商城应用安装', '支持各种货币结算', '各种支付接口应有尽有', '');

-- ----------------------------
-- Table structure for sec6
-- ----------------------------
DROP TABLE IF EXISTS `sec6`;
CREATE TABLE `sec6` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `r_con` varchar(1000) DEFAULT NULL,
  `btm_con` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sec6
-- ----------------------------
INSERT INTO `sec6` VALUES ('1', '[{\"tit\":\"我们是谁\",\"txt\":\"谷美科技成立于2011年，谷美科技是一家集创意创新、视觉设计、技术研发、内容托管、营销推广为一体的综合型数字化创新服务企业，其利用公司持续积累的核心技术和互联网思维，提供以互联网、移动互联网为核心的网络技术服务和互动整合营销服务，为传统企业实现“互联网+”升级提供整套解决方案。一直以来，谷美科技紧贴网络时代的发展潮流，对中国网络应用的现状和趋势有很深的认识；因此不论您是需要简洁实用的小型展示性网站，还是大型品牌、商城网站,我们都会提供相应的解决方案。\"},{\"tit\":\"我们的理念\",\"txt\":\"公司秉承实现全网价值营销的理念，通过实现互联网与移动互联网的精准数字营销和用户数据分析，日益深入到客户互联网技术建设及运维营销的方方面面，在帮助客户形成自身互联网运作体系的同时，有效对接BAT(百度，阿里，腾讯)等平台即百度搜索、阿里电商、腾讯微信，通过平台的推广来推进互联网综合服务，实现企业、用户、平台三者完美对接，并形成高效互动的枢纽，在帮助客户获取互联网高附加价值的同时获得自身的不断成长和壮大。\"},{\"tit\":\"创新驱动未来\",\"txt\":\"公司作为一家互联网数字服务综合商，其主营业务包括移动互联网应用开发服务、数字互动整合营销服务、互联网网站建设综合服务和电子商务综合服务。\\n 一直以来我们为不同行业的知名企业进行了网络品牌重塑，一路的学习、探索、创新，让我们更为自信和充满活力。我们相信，一个优秀的互联网作品有其独特的商业寓意，有其文化和审美的价值，也是先进技术及人机交互学科知识的载体。\"}]', '[{\"btm_tit\":\"9\",\"btm_txt\":\"年专注·互联网+\"},{\"btm_tit\":\"2000\",\"btm_txt\":\"位企业客户信赖之选+\"},{\"btm_tit\":\"500\",\"btm_txt\":\"家大型企业设计作品+\"},{\"btm_tit\":\"96%\",\"btm_txt\":\"以上客户续费率+\"},{\"btm_tit\":\"9\",\"btm_txt\":\"年专注·互联网+\"},{\"btm_tit\":\"2000\",\"btm_txt\":\"位企业客户信赖之选+\"},{\"btm_tit\":\"500\",\"btm_txt\":\"家大型企业设计作品+\"},{\"btm_tit\":\"96%\",\"btm_txt\":\"以上客户续费率+\"},{\"btm_tit\":\"9\",\"btm_txt\":\"年专注·互联网+\"},{\"btm_tit\":\"2000\",\"btm_txt\":\"位企业客户信赖之选+\"},{\"btm_tit\":\"500\",\"btm_txt\":\"家大型企业设计作品+\"},{\"btm_tit\":\"96%\",\"btm_txt\":\"以上客户续费率+\"},{\"btm_tit\":\"9\",\"btm_txt\":\"年专注·互联网+\"},{\"btm_tit\":\"2000\",\"btm_txt\":\"位企业客户信赖之选+\"},{\"btm_tit\":\"500\",\"btm_txt\":\"家大型企业设计作品+\"}]');
