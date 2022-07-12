
SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(12) DEFAULT NULL,
  `password` int(12) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2018006141 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('123', '123', '123');
INSERT INTO `admin` VALUES ('2018006140', '2018006140', '123');

-- ----------------------------
-- Table structure for book_info
-- ----------------------------
DROP TABLE IF EXISTS `book_info`;
CREATE TABLE `book_info` (
  `book_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `author` varchar(20) DEFAULT NULL,
  `publish` varchar(20) DEFAULT NULL,
  `ISBN` varchar(30) DEFAULT NULL,
  `introduction` varchar(255) DEFAULT NULL,
  `language` varchar(5) DEFAULT NULL,
  `price` double(10,2) DEFAULT NULL,
  `pubdate` varchar(20) DEFAULT NULL,
  `cid` int(10) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  PRIMARY KEY (`book_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of book_info
-- ----------------------------
INSERT INTO `book_info` VALUES ('1', '计算机程序设计艺术', '高德纳', '国防工业出版社', '	9787118027990', '计算机与互联网', '英语', '30.00', '2002年', '18', '19');
INSERT INTO `book_info` VALUES ('2', '计算机安全', '威廉·斯托林斯', '	机械工业出版社', '7111190483', '计算机与互联网', '英语', '25.00', '	2010年', '18', '55');
INSERT INTO `book_info` VALUES ('3', '计算机结构体系', '亨尼西', '机械工业出版社', '154894785', '计算机与互联网', '英语', '40.00', '2006年', '18', '30');
INSERT INTO `book_info` VALUES ('4', '计算机网络安全技术', '石淑华、池瑞楠', '	机械工业出版社', '4567891564', '计算机与互联网', '英语', '65.00', '2005年', '18', '22');
INSERT INTO `book_info` VALUES ('5', '计算机组成原理', '白中英、戴志涛', '国防工业出版社', '7895146324', '计算机与互联网', '英语', '48.00', '2014年', '18', '44');
INSERT INTO `book_info` VALUES ('6', '深度学习与计算机视觉', '叶韵', '	机械工业出版社', '4561782367', '计算机与互联网', '英语', '55.00', '2013年', '18', '4');
INSERT INTO `book_info` VALUES ('7', '计算机应用基础', '宋晏、刘勇、杨国兴', '国防工业出版社', '2563489756', '计算机与互联网', '英语', '32.00', '2006年', '18', '63');
INSERT INTO `book_info` VALUES ('8', '计算机网络', '谢希仁', '	机械工业出版社', '4587612389', '计算机与互联网', '英语', '89.00', '2003年', '18', '54');
INSERT INTO `book_info` VALUES ('9', '计算机算法设计与分析', '王晓东', '国防工业出版社', '65123457856', '计算机与互联网', '英语', '105.00', '2006年', '18', '78');
INSERT INTO `book_info` VALUES ('10', '深入理解计算机网络', '王达', '	机械工业出版社', '4521789635', '计算机与互联网', '英语', '45.00', '2007年', '18', '88');

-- ----------------------------
-- Table structure for class_info
-- ----------------------------
DROP TABLE IF EXISTS `class_info`;
CREATE TABLE `class_info` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of class_info
-- ----------------------------
INSERT INTO `class_info` VALUES ('18', '计算机与互联网');
INSERT INTO `class_info` VALUES ('19', '编程');
INSERT INTO `class_info` VALUES ('20', '教育');
INSERT INTO `class_info` VALUES ('21', '语言');
INSERT INTO `class_info` VALUES ('22', '文学');
INSERT INTO `class_info` VALUES ('23', '数学');
INSERT INTO `class_info` VALUES ('24', '思政');

-- ----------------------------
-- Table structure for lend_list
-- ----------------------------
DROP TABLE IF EXISTS `lend_list`;
CREATE TABLE `lend_list` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `reader_id` int(12) DEFAULT NULL,
  `book_id` int(12) DEFAULT NULL,
  `lend_date` varchar(20) DEFAULT NULL,
  `back_date` varchar(20) DEFAULT NULL,
  `fine` double(10,2) DEFAULT NULL,
  `state` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lend_list
-- ----------------------------
INSERT INTO `lend_list` VALUES ('1', '123456', '1', '2022-03-27', '2022-04-24', '0.00', '2');
INSERT INTO `lend_list` VALUES ('2', '123456', '4', '2022-03-27', '2022-04-24', '0.00', '2');
INSERT INTO `lend_list` VALUES ('3', '2', '2', '2022-03-27', '2022-04-24', '0.00', '1');
INSERT INTO `lend_list` VALUES ('4', '2', '6', '2022-03-27', '2022-04-24', '0.00', '2');
INSERT INTO `lend_list` VALUES ('5', '1', '2', '2022-03-28', '2022-04-25', '0.00', '1');
INSERT INTO `lend_list` VALUES ('6', '1', '5', '2022-03-28', '2022-04-25', '0.00', '2');

-- ----------------------------
-- Table structure for reader_info
-- ----------------------------
DROP TABLE IF EXISTS `reader_info`;
CREATE TABLE `reader_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reader_id` int(11) NOT NULL,
  `name` varchar(12) DEFAULT NULL,
  `password` int(12) NOT NULL,
  `sex` varchar(5) DEFAULT NULL,
  `birthday` varchar(20) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `telephone` varchar(11) DEFAULT NULL,
  `card_state` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of reader_info
-- ----------------------------
INSERT INTO `reader_info` VALUES ('6', '1', '鲍星博', '123', '男', '2000-04-26', '上海市嘉定区', '12345678911', '123456789');
INSERT INTO `reader_info` VALUES ('7', '2', '小白', '123', '女', '2022-03-14', '上海市浦东新区', '14265789451', '123456789');
INSERT INTO `reader_info` VALUES ('8', '3', '小张', '123', '男', '2022-03-07', '上海市闵行区', '12453695145', '123456789');
INSERT INTO `reader_info` VALUES ('9', '4', '小熊猫', '123', '男', '2022-03-10', '成都市锦江区', '14587563214', '123456789');
INSERT INTO `reader_info` VALUES ('10', '5', '大熊猫', '123', '男', '2022-03-07', '成都市郫都区', '14578962574', '123456789');
INSERT INTO `reader_info` VALUES ('11', '6', '北极熊', '123', '女', '2022-03-10', '成都市武侯区', '12563987412', '123456789');
INSERT INTO `reader_info` VALUES ('12', '7', '袋鼠', '123', '男', '2022-03-04', '成都市青羊区', '12549632587', '123456789');
INSERT INTO `reader_info` VALUES ('13', '8', '海豚', '123', '男', '2022-03-08', '成都市高新区', '14523698514', '123456789');
INSERT INTO `reader_info` VALUES ('14', '9', '企鹅', '123', '男', '2022-03-06', '上海市宝山区', '12639548756', '123456789');
INSERT INTO `reader_info` VALUES ('15', '10', '乌龟', '123', '女', '2022-03-01', '北京市朝阳区', '14536952866', '123456789');
INSERT INTO `reader_info` VALUES ('16', '22', '小孟', '123', '女', '2022-03-18', '北京市海淀区', '15614523685', null);
