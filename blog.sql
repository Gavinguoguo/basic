/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : blog

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2019-04-30 12:17:51
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `cate_id` int(10) NOT NULL DEFAULT '0' COMMENT '类别id',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '文章标题',
  `num` int(12) NOT NULL DEFAULT '0' COMMENT '浏览次数',
  `auid` int(10) NOT NULL DEFAULT '1' COMMENT '作者id',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('1', '1', '儿不嫌母丑！狗不嫌家贫！我把咱爹娘接来了！', '10', '1');
INSERT INTO `article` VALUES ('2', '1', '简单与复杂', '15', '2');
INSERT INTO `article` VALUES ('3', '1', '·一张美图一个感悟', '150', '4');
INSERT INTO `article` VALUES ('4', '1', '幸福就是那么简单', '100', '3');
INSERT INTO `article` VALUES ('5', '1', '人到中年的生活感悟', '189', '6');
INSERT INTO `article` VALUES ('6', '1', '学会为人处世', '201', '8');
INSERT INTO `article` VALUES ('7', '1', '人生若只如初见', '189', '9');
INSERT INTO `article` VALUES ('8', '1', '终究有一天', '200', '10');
INSERT INTO `article` VALUES ('9', '2', '《故事里的人生》（25 小象的挣扎）', '120', '12');
INSERT INTO `article` VALUES ('10', '2', '来生，做一株高粱', '159', '11');
INSERT INTO `article` VALUES ('11', '2', '从故乡到故乡', '172', '3');
INSERT INTO `article` VALUES ('12', '2', '感江湖情梦', '1632', '4');
INSERT INTO `article` VALUES ('13', '2', '1997', '157', '5');
INSERT INTO `article` VALUES ('14', '2', '升高家的温度', '58', '6');
INSERT INTO `article` VALUES ('15', '2', '哭的两三事', '69', '7');
INSERT INTO `article` VALUES ('16', '2', '《爱就爱了》何必想太多？', '723', '8');
INSERT INTO `article` VALUES ('17', '3', '遗失的记忆', '162', '9');
INSERT INTO `article` VALUES ('18', '3', '敢问路在何方(原创)', '232', '11');
INSERT INTO `article` VALUES ('19', '3', '放下抱怨，你会生活得更好！', '462', '2');
INSERT INTO `article` VALUES ('20', '3', '一个人', '258', '4');
INSERT INTO `article` VALUES ('21', '3', '那个人，愿你余生安好', '147', '5');
INSERT INTO `article` VALUES ('22', '3', '父母安好', '369', '6');
INSERT INTO `article` VALUES ('23', '3', '心在哪，成就就在哪！', '632', '7');
INSERT INTO `article` VALUES ('24', '3', '父亲些许遗憾', '521', '8');
INSERT INTO `article` VALUES ('25', '4', '红颜', '354', '2');
INSERT INTO `article` VALUES ('26', '4', '我的路', '452', '12');
INSERT INTO `article` VALUES ('27', '4', '爱的世界', '159', '11');
INSERT INTO `article` VALUES ('28', '4', '浣溪沙.思父', '357', '1');
INSERT INTO `article` VALUES ('29', '4', '奇缘', '465', '4');
INSERT INTO `article` VALUES ('30', '4', '相思，是一种痛彻心扉的甜蜜', '421', '1');
INSERT INTO `article` VALUES ('31', '4', '红叶寄情', '124', '1');
INSERT INTO `article` VALUES ('32', '5', '千秋风雪', '630', '1');
INSERT INTO `article` VALUES ('33', '5', '兰渡', '342', '1');
INSERT INTO `article` VALUES ('34', '5', '123456梦家园', '231', '1');
INSERT INTO `article` VALUES ('35', '5', '轻盈0802', '325', '1');
INSERT INTO `article` VALUES ('36', '5', '江北乔木', '261', '1');
INSERT INTO `article` VALUES ('37', '5', '秋色', '316', '1');
INSERT INTO `article` VALUES ('38', '5', 'WZM', '425', '1');
INSERT INTO `article` VALUES ('39', '5', '伊人轻舞', '179', '1');

-- ----------------------------
-- Table structure for author
-- ----------------------------
DROP TABLE IF EXISTS `author`;
CREATE TABLE `author` (
  `auid` int(10) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `author` varchar(50) NOT NULL DEFAULT '' COMMENT '用户名',
  `sex` int(5) NOT NULL DEFAULT '1' COMMENT '性别 1|男 2|女',
  PRIMARY KEY (`auid`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of author
-- ----------------------------
INSERT INTO `author` VALUES ('1', '黄海zhq', '1');
INSERT INTO `author` VALUES ('2', '拾荒至尊宝 ', '1');
INSERT INTO `author` VALUES ('3', '小伙当自强', '1');
INSERT INTO `author` VALUES ('4', '太古河人家', '1');
INSERT INTO `author` VALUES ('5', '	张兴旺', '1');
INSERT INTO `author` VALUES ('6', '	落梅雪舞', '2');
INSERT INTO `author` VALUES ('7', '	春暖花开文', '2');
INSERT INTO `author` VALUES ('8', '	紫云烟', '2');
INSERT INTO `author` VALUES ('9', '	亦珺', '2');
INSERT INTO `author` VALUES ('10', '	文思儿', '2');
INSERT INTO `author` VALUES ('11', '	金松', '1');
INSERT INTO `author` VALUES ('12', '	心若雨汐', '2');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(50) NOT NULL DEFAULT '' COMMENT '类型名称',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', '精品美文');
INSERT INTO `category` VALUES ('2', '原创文章');
INSERT INTO `category` VALUES ('3', '心情日记');
INSERT INTO `category` VALUES ('4', '原创诗歌');
INSERT INTO `category` VALUES ('5', '作者推荐');
