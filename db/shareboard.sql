/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50626
Source Host           : localhost:3306
Source Database       : shareboard

Target Server Type    : MYSQL
Target Server Version : 50626
File Encoding         : 65001

Date: 2016-07-06 16:16:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `category`
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL COMMENT '父级id',
  `name` varchar(100) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL COMMENT '排序字段',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', '0', 'Drupal', null);
INSERT INTO `category` VALUES ('2', '0', 'Symfony2', null);
INSERT INTO `category` VALUES ('3', '0', 'Vue.js', null);
INSERT INTO `category` VALUES ('4', '0', 'Ionic', null);
INSERT INTO `category` VALUES ('5', '0', 'Laravel', null);

-- ----------------------------
-- Table structure for `shares`
-- ----------------------------
DROP TABLE IF EXISTS `shares`;
CREATE TABLE `shares` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `link` varchar(255) NOT NULL,
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shares
-- ----------------------------
INSERT INTO `shares` VALUES ('1', '1', '1', 'test1', 'Nullam sagittis. Pellentesque dapibus hendrerit tortor. Donec id justo. Curabitur a felis in nunc fringilla tristique.Suspendisse faucibus, nunc et pellentesque egestas, lacus ante convallis tellus, vitae iaculis lacus elit id tortor. Nam ipsum risus, rutrum vitae, vestibulum eu, molestie vel, lacus. Vivamus consectetuer hendrerit lacus. Donec interdum, metus et hendrerit aliquet, dolor diam sagittis ligula, eget egestas libero turpis vel mi.', 'https://www.baidu.com/', '2016-07-04 10:20:45');
INSERT INTO `shares` VALUES ('2', '1', '1', '·ÖÏíÃÀºÃÉú»î', 'Donec elit libero, sodales nec, volutpat a, suscipit non, turpis. Etiam ultricies nisi vel augue. In hac habitasse platea dictumst. Aenean imperdiet. Nam adipiscing.\r\n\r\nEtiam ultricies nisi vel augue. Pellentesque egestas, neque sit amet convallis pulvinar, justo nulla eleifend augue, ac auctor orci leo non est. Vestibulum facilisis, purus nec pulvinar iaculis, ligula mi congue nunc, vitae euismod ligula urna in dolor. Nullam sagittis. Phasellus leo dolor, tempus non, auctor et, hendrerit quis, nisi.', 'http://jingyan.baidu.com/article/cbf0e500ecb6632eaa28930c.html', '2016-07-04 11:35:56');
INSERT INTO `shares` VALUES ('3', '2', '1', 'Curabitur at lacus ac', 'Phasellus a est. Curabitur turpis. Duis vel nibh at velit scelerisque suscipit. In auctor lobortis lacus.\r\n\r\nVestibulum volutpat pretium libero. Maecenas egestas arcu quis ligula mattis placerat. Curabitur blandit mollis lacus. Fusce convallis metus id felis luctus adipiscing.', 'https://themeforest.net', '2016-07-06 16:05:59');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `register_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'town.chen', '120935692@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '2016-07-04 10:06:43');
INSERT INTO `users` VALUES ('2', 'test', 'test@test.com', 'e10adc3949ba59abbe56e057f20f883e', '2016-07-04 10:35:31');
INSERT INTO `users` VALUES ('3', 'ÍÐ¶ûË¹Ì©', 'test2@qq.com', 'e10adc3949ba59abbe56e057f20f883e', '2016-07-04 11:34:47');
