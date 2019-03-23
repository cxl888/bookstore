/*
 Navicat MySQL Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : localhost:3306
 Source Schema         : bookstore

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

 Date: 13/03/2019 16:33:45
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book`  (
  `bid` int(10) NOT NULL AUTO_INCREMENT,
  `bname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `detail` varchar(20000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pirce` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `writer` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `printer` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `date` date NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `store` int(10) NULL DEFAULT NULL,
  `provider` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`bid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 52 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES (10, '外科风云', '正午阳光影业继《琅琊榜》《欢乐颂》后，又一热播医疗职场励志剧同名小说。直击中国医患矛盾的情感极致力作，温暖而明亮的职场励志小说。老干部靳东演绎的中国医疗精英。', '78', '朱朱', '浙江文艺出版社', '2017-05-01', '治愈', '16.jpg', 1, 'admin');
INSERT INTO `book` VALUES (11, '追风筝的人', '中文版，快乐大本营高圆圆感动推荐，奥巴马送给女儿的新年礼物。为你，千千万万遍！', '17', '[美]卡勒德·胡赛尼（Khaled Hosseini）', '上海人民出版社', '2006-05-01', '治愈', '12.jpg', 1, 'admin');
INSERT INTO `book` VALUES (12, '从你的全世界路过', '2015央视年度好书，近二十年华语小说销量奇迹，超40亿阅读，每个故事都在变成电影，每一分钟，都有人看到自己。张嘉佳献给你的心动故事！', '19', '张嘉佳', '湖南文艺出版社', '2013-07-01', '小说', '13.jpg', 1, '123');
INSERT INTO `book` VALUES (13, '解忧杂货店', '《白夜行》后东野圭吾备受欢迎作品：不是推理小说，却更扣人心弦', '27', '(日)东野圭吾', '南海出版公司', '2014-05-01', '小说', '14.jpg', 0, '123');
INSERT INTO `book` VALUES (14, '小王子', '梅子涵主编，国际水准手绘插画，独一无二创意栏目：揭秘大师长成记和名著诞生记，分享同名影视动画衍生剧作，打造有趣有料、有颜有品的特色大师精选童话。', '11', '(法) 圣-埃克苏佩里', '辽宁少年儿童出版社', '2017-04-01', '童话', '15.jpg', 1, '1234');
INSERT INTO `book` VALUES (16, '阳明心学的力量', '阳明心学在中国的当代商业实践,阳明教育研究院创始人白立新、奥康集团董事长王振滔、北京大学社会科学学部副主任文东茅教授等诸多企业家、教育家学习阳明心学、致良知的生动记录', '35', '北京知行合一阳明教育研究院', '机械工业出版社', '2017-04-01', '管理学', '17.jpg', 1, 'admin');
INSERT INTO `book` VALUES (18, '丝绸之路', '关心国家战略，一带一路必读书', '92', '彼得.弗兰科潘 (Peter Frankopan)', '浙江大学出版社', '2016-08-17', '历史', '18.jpg', 1, '123456');
INSERT INTO `book` VALUES (20, '史记', '(精装全三册)', '75', '司马迁', '岳麓书社', '2011-07-01', '历史', '20.jpg', 1, '123');
INSERT INTO `book` VALUES (21, '月亮和六便士', '(译文经典.精）', '30', '毛姆', '上海译文出版社', '2015-03-10', '小说', '21.jpg', 1, '1234');
INSERT INTO `book` VALUES (22, '苏菲的世界', '热售榜前50', '23', '乔斯坦.贾德', '作家出版社', '2007-07-07', '小说', '22.jpg', 1, '123456');
INSERT INTO `book` VALUES (23, '悲惨世界', '销量遥遥领先', '67', '[法]维克多·雨果', '作家出版社', '2016-06-14', '小说', '23.jpg', 1, 'admin');
INSERT INTO `book` VALUES (24, '海底两万里', '（中小学新课标必读名著）', '32', '儒勒.凡尔纳', '国际文化出版公司', '2017-01-17', '小说', '24.jpg', 0, '123456');
INSERT INTO `book` VALUES (25, '钢铁是怎样炼成的', '俄中直译全译本', '29', '奥斯特洛夫斯基', '西安交通大学出版社', '2016-11-11', '小说', '25.jpg', 1, '1234');
INSERT INTO `book` VALUES (26, '百年孤独', '加西亚马尔克斯代表作', '38', '加西亚·马尔克斯', '南海出版公司', '2011-06-27', '小说', '26.jpg', 1, 'admin');
INSERT INTO `book` VALUES (27, '了不起的盖茨比', '【作家榜推荐】', '26', '菲茨杰拉德', '浙江文艺出版社', '2017-03-15', '小说', '27.jpg', 1, '1234');
INSERT INTO `book` VALUES (28, '三毛：撒哈拉的故事', '满100减50', '17', '三毛', '北京十月文艺出版社', '2013-05-15', '文学', '28.jpg', 1, '123456');
INSERT INTO `book` VALUES (29, '鲁迅全集', '（全20卷，纪念鲁迅先生逝世80周年！）', '370', '鲁迅', '北京日报出版社（原同心出版社）', '2014-10-15', '文学', '29.jpg', 1, 'admin');
INSERT INTO `book` VALUES (30, '斯坦福极简经济学', '（当当全国独家精装升级版）', '37', '[美]泰勒', '湖南人民出版社', '2016-08-01', '经济', '30.jpg', 1, '123');
INSERT INTO `book` VALUES (31, '天才在左疯子在右', '（完整版）', '28', '高铭', '北京联合出版公司', '2016-01-20', '心理', '31.jpg', 1, '1234');
INSERT INTO `book` VALUES (32, '社会心理学', '（第11版）', '111', '（美） 戴维·迈尔斯', '人民邮电出版社', '2016-01-14', '心理', '32.jpg', 1, 'admin');
INSERT INTO `book` VALUES (33, '与孤独为友', '如何获得内心世界的轻松和愉悦', '29', '和田秀树', '北京联合出版公司', '2017-04-12', '治愈', '33.jpg', 1, '1234');
INSERT INTO `book` VALUES (34, '摄影入门', '拍出美照超简单', '38', '乔旭亮', '化学工业出版社', '2016-06-06', '艺术', '34.jpg', 1, '123456');
INSERT INTO `book` VALUES (35, '艺术的疗效', '治愈了赵薇的书！——赵薇在来往上推荐的治愈系图书。', '116', '（英）德波顿', '广西美术出版社', '2014-07-12', '艺术', '35.jpg', 1, '123');
INSERT INTO `book` VALUES (36, '胜者思维', '危机领导战略，思维制胜之道，决策核心思考。', '35', '金一南', '北京联合出版公司', '2017-05-10', '政治理论', '36.jpg', 1, '123456');
INSERT INTO `book` VALUES (37, '学习关键词', '社科值得看的好书', '38', '人民日报海外版“学习小组”', '人民出版社', '2016-11-21', '政治理论', '37.jpg', 1, 'admin');
INSERT INTO `book` VALUES (38, '必然', '尼古拉·尼葛洛庞帝互联网启蒙读物《数字化生存》20周年再版', '50', '凯文·凯利', '电子工业出版社', '2016-01-16', '社会科学', '38.jpg', 1, 'admin');
INSERT INTO `book` VALUES (39, '晚学盲言', '（全两册，第二版）', '87', '钱穆', '生活.读书.新知三联书店', '2014-03-11', '社会科学', '39.jpg', 1, 'admin');
INSERT INTO `book` VALUES (40, '江村经济', '销售榜前茅', '29', '费孝通', '北京大学出版社', '2016-07-08', '社会科学', '40.jpg', 1, 'admin');
INSERT INTO `book` VALUES (41, '精通Python网络爬虫', '资深专家，以实战为导向，讲透Python网络爬虫各项核心技术和主流框架，深度讲解网络爬虫的抓取技术与反爬攻关技巧', '61', '韦玮', '机械工业出版社', '2017-04-04', '计算机', '41.jpg', 1, '123456');
INSERT INTO `book` VALUES (42, 'Android高级进阶', '满50减10', '84', '顾浩鑫', '电子工业出版社', '2016-09-18', '计算机', '42.jpg', 1, '123456');
INSERT INTO `book` VALUES (43, 'Python大战机器学习', '数据科学家的第一个小目标', '61', '华校专，王正林', '电子工业出版社', '2017-02-16', '计算机', '43.jpg', 1, '1234');
INSERT INTO `book` VALUES (46, '过得刚好', '《过得刚好》是由北京联合出版公司于2013年出版的个人传记类图书，作者是郭德纲。本书有着极其鲜明的郭式风格，嬉笑怒骂皆成文章，妙语连珠，文字独特，语言幽默风趣，读之不禁令人捧腹，为读者营造了一份无与伦比的阅读快感，这份快感和他的相声作品一样过瘾。即使面对着台下无人的惨淡局面，郭德纲依然保持着他的幽默感。', '39.8', '郭德纲', '北京联合出版公司', '2013-05-01', '传记', '44.jpg', 1, 'admin');
INSERT INTO `book` VALUES (49, '玩儿', '“我就这么点儿梦想：玩儿”，郭德纲眼中的捧哏奇才，相声界公认的第一玩家于谦，36载干掉无趣，架子不倒的玩乐生活纪录。 于谦，人称谦儿哥，郭德纲眼中的捧哏奇才，相声界公认的第一玩主。大智若愚，脾气随和，三大爱好：抽烟、喝酒、烫头。 在相声段子里，他总是带着股逆来顺受的劲头，在现实生活中，他也没有“非要如此”的气质，但一讲到玩儿，他永远架子不倒，走到哪儿都带着一股“爷”的范儿，在他的人生态度里，干掉无趣，人无我有，人有我精，玩儿比天大。 水瓶座的人爱冲动，水瓶座的人做事没规划，所以，他才有了京郊60亩的动物园，养了大大小小数千只动物，才有了台上台下老北京式的各种“玩儿”。 他最大的希望是老了能找到一处山明水秀的地方，把马带过去养，马也舒服，人也舒服，此生足矣。', '39.8', '于谦', '中信出版社', '2013-09-15', '传记', '45.jpg', 1, '樊毅');

-- ----------------------------
-- Table structure for book_order
-- ----------------------------
DROP TABLE IF EXISTS `book_order`;
CREATE TABLE `book_order`  (
  `oid` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `oname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `adress` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `uid` int(11) NULL DEFAULT NULL,
  `ordernum` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`oid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 56 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of book_order
-- ----------------------------
INSERT INTO `book_order` VALUES (3, '2017-05-27 22:43:37', 'L', '我家超市', '借阅中', 7, 1);
INSERT INTO `book_order` VALUES (4, '2017-06-02 14:45:09', 'L', '广药生活区', '已归还', 7, 1);
INSERT INTO `book_order` VALUES (5, '2017-06-02 14:57:25', 'L', '王子家', '未取书', 7, 1);
INSERT INTO `book_order` VALUES (6, '2017-06-02 14:59:40', 'L', '家', '未取书', 7, 1);
INSERT INTO `book_order` VALUES (8, '2017-06-02 15:06:35', 'L', '???', '未取书', 7, 1);
INSERT INTO `book_order` VALUES (13, '2017-06-03 02:08:16', 'L', '我的家', '未取书', 7, 1);
INSERT INTO `book_order` VALUES (14, '2017-06-03 02:18:02', 'L', '你家', '未取书', 7, 1);
INSERT INTO `book_order` VALUES (15, '2017-06-05 14:30:41', 'L', 'WWWWW', '未取书', 7, 1);
INSERT INTO `book_order` VALUES (16, '2019-02-26 18:38:20', '123456', '444', '未取书', 16, 1);
INSERT INTO `book_order` VALUES (17, '2019-02-26 18:42:02', '123456', '444', '已归还', 16, 1);
INSERT INTO `book_order` VALUES (18, '2019-02-26 18:42:45', '123456', '4', '已归还', 16, 1);
INSERT INTO `book_order` VALUES (19, '2019-02-26 19:58:06', '123', '222', '未取书', 19, 1);
INSERT INTO `book_order` VALUES (20, '2019-02-26 20:38:42', 'admin', '嗯嗯嗯ee', '借阅中', 17, 1);
INSERT INTO `book_order` VALUES (21, '2019-02-27 19:59:03', 'admin', '二人若', '已归还', 17, 1);
INSERT INTO `book_order` VALUES (22, '2019-03-02 09:04:47', 'admin', 'ggg', '未取书', 17, 1);
INSERT INTO `book_order` VALUES (23, '2019-03-02 09:04:58', 'admin', 'dd', '未取书', 17, 1);
INSERT INTO `book_order` VALUES (24, '2019-03-02 09:33:59', 'admin', '666', '已归还', 17, 1);
INSERT INTO `book_order` VALUES (26, '2019-03-02 21:33:46', '123', '应用', '已归还', 19, 1);
INSERT INTO `book_order` VALUES (27, '2019-03-03 14:45:20', 'admin', '中被', '已归还', 17, 1);
INSERT INTO `book_order` VALUES (28, '2019-03-06 15:36:54', 'admin', '竹园110', '已归还', 17, 1);
INSERT INTO `book_order` VALUES (29, '2019-03-06 20:22:18', 'admin', '竹园110', '借阅中', 17, 1);
INSERT INTO `book_order` VALUES (44, '2019-03-11 21:45:42', 'admin', '竹园110', '借阅中', 17, 1);
INSERT INTO `book_order` VALUES (47, '2019-03-12 09:54:22', 'admin', '竹园110', '借阅中', 17, 1);
INSERT INTO `book_order` VALUES (48, '2019-03-12 18:57:31', '1234', '中北大学', '借阅中', 20, 1);
INSERT INTO `book_order` VALUES (49, '2019-03-13 09:43:46', '樊毅', '中北大学', '已归还', 21, 1);
INSERT INTO `book_order` VALUES (50, '2019-03-13 10:43:02', '1234', '中北大学', '已归还', 20, 1);
INSERT INTO `book_order` VALUES (51, '2019-03-13 11:10:06', '1234', '中北大学', '已归还', 20, 1);
INSERT INTO `book_order` VALUES (52, '2019-03-13 11:15:35', '1234', '中北大学', '已归还', 20, 1);
INSERT INTO `book_order` VALUES (53, '2019-03-13 12:04:44', 'admin', '竹园110', '已归还', 17, 1);
INSERT INTO `book_order` VALUES (54, '2019-03-13 12:09:49', 'admin', '竹园110', '借阅中', 17, 1);
INSERT INTO `book_order` VALUES (55, '2019-03-13 16:19:52', '卐', '东门大铁塔下', '未取书', 34, 1);

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `bid` int(11) NULL DEFAULT NULL,
  `uname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `date` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`cid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES (1, 10, 'L', '2017-06-01 02:03', '不错');
INSERT INTO `comment` VALUES (2, 12, 'L', '2017-06-01 02:10', '一般般');
INSERT INTO `comment` VALUES (3, 12, '123456', '2019-02-26 06:49', 'eee');
INSERT INTO `comment` VALUES (4, 39, '123456', '2019-02-26 06:49', 'dsfds');
INSERT INTO `comment` VALUES (5, 20, '', '2019-02-26 07:43', '');
INSERT INTO `comment` VALUES (6, 42, 'admin', '2019-02-27 08:17', '书很好吆');
INSERT INTO `comment` VALUES (7, 11, 'admin', '2019-03-02 09:51', 'rrr');
INSERT INTO `comment` VALUES (8, 22, 'admin', '2019-03-06 10:19', '很好');
INSERT INTO `comment` VALUES (9, 10, '123', '2019-03-13 09:48', '');
INSERT INTO `comment` VALUES (10, 10, '123', '2019-03-13 09:49', '风云外科，外科风云。');
INSERT INTO `comment` VALUES (11, 22, 'admin', '2019-03-13 12:11', '海中月是天上月，眼前人是心上人；\r\n向来心是看客心，奈何人是剧中人。');

-- ----------------------------
-- Table structure for donatebook
-- ----------------------------
DROP TABLE IF EXISTS `donatebook`;
CREATE TABLE `donatebook`  (
  `bid` int(10) NOT NULL AUTO_INCREMENT,
  `bname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `detail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `writer` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `printer` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `date` date NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `donater` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`bid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of donatebook
-- ----------------------------
INSERT INTO `donatebook` VALUES (1, '全球通史', '从史前史到21世纪', '87', '斯塔夫里阿诺斯', '北京大学出版社', '2006-10-01', '历史', '19.jpg', 'admin');
INSERT INTO `donatebook` VALUES (3, '米饭', '东北大米', '1', '东北', '中北', '2018-05-06', '治愈', '0.jpg', 'admin');
INSERT INTO `donatebook` VALUES (4, '美图', '精美图片', '1', 'admin', '私人出版社', '2019-03-11', '艺术', '00.jpg', 'admin');
INSERT INTO `donatebook` VALUES (5, '键盘', '键盘是用于操作设备运行的一种指令和数据输入装置。', '19', '阿依土鳖', '小作坊', '2019-03-11', '计算机', '7.jpg', '1234');
INSERT INTO `donatebook` VALUES (6, '图片1', '清单娴雅', '10', 'admin', 'admin', '2019-02-27', '治愈', '4.jpg', '1234');
INSERT INTO `donatebook` VALUES (7, '美图', '精美图片', '19', '阿依土鳖', '小作坊', '2019-03-11', '社会科学', '5.jpg', '樊毅');

-- ----------------------------
-- Table structure for order_detail
-- ----------------------------
DROP TABLE IF EXISTS `order_detail`;
CREATE TABLE `order_detail`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NULL DEFAULT NULL,
  `book_id` int(11) NULL DEFAULT NULL,
  `book_num` int(11) NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 103 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_detail
-- ----------------------------
INSERT INTO `order_detail` VALUES (17, 3, 10, 1, '已评价');
INSERT INTO `order_detail` VALUES (19, 3, 12, 1, '已评价');
INSERT INTO `order_detail` VALUES (26, 5, 14, 1, '待评价');
INSERT INTO `order_detail` VALUES (31, 8, 16, 1, '待评价');
INSERT INTO `order_detail` VALUES (33, 4, 22, 1, '待评价');
INSERT INTO `order_detail` VALUES (34, 6, 21, 1, '待评价');
INSERT INTO `order_detail` VALUES (59, 13, 10, 1, '待评价');
INSERT INTO `order_detail` VALUES (60, 14, 10, 1, '待评价');
INSERT INTO `order_detail` VALUES (61, 15, 14, 1, '待评价');
INSERT INTO `order_detail` VALUES (62, 16, 10, 1, '待评价');
INSERT INTO `order_detail` VALUES (63, 17, 39, 1, '已评价');
INSERT INTO `order_detail` VALUES (64, 18, 12, 1, '已评价');
INSERT INTO `order_detail` VALUES (65, 18, 20, 1, '已评价');
INSERT INTO `order_detail` VALUES (66, 19, 23, 1, '待评价');
INSERT INTO `order_detail` VALUES (67, 20, 10, 1, '待评价');
INSERT INTO `order_detail` VALUES (68, 21, 42, 1, '已评价');
INSERT INTO `order_detail` VALUES (69, 22, 10, 1, '待评价');
INSERT INTO `order_detail` VALUES (70, 23, 12, 1, '待评价');
INSERT INTO `order_detail` VALUES (71, 24, 11, 1, '已评价');
INSERT INTO `order_detail` VALUES (73, 26, 10, 1, '已评价');
INSERT INTO `order_detail` VALUES (74, 27, 22, 1, '已评价');
INSERT INTO `order_detail` VALUES (75, 28, 11, 1, '待评价');
INSERT INTO `order_detail` VALUES (76, 29, 14, 1, '待评价');
INSERT INTO `order_detail` VALUES (91, 44, 14, 1, '待评价');
INSERT INTO `order_detail` VALUES (94, 47, 33, 1, '待评价');
INSERT INTO `order_detail` VALUES (95, 48, 13, 1, '待评价');
INSERT INTO `order_detail` VALUES (96, 49, 20, 1, '待评价');
INSERT INTO `order_detail` VALUES (97, 50, 23, 1, '待评价');
INSERT INTO `order_detail` VALUES (98, 51, 24, 1, '待评价');
INSERT INTO `order_detail` VALUES (99, 52, 16, 1, '待评价');
INSERT INTO `order_detail` VALUES (100, 53, 22, 1, '已评价');
INSERT INTO `order_detail` VALUES (101, 54, 24, 1, '待评价');
INSERT INTO `order_detail` VALUES (102, 55, 13, 1, '待评价');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gender` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `adress` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `contribution` int(255) NULL DEFAULT NULL,
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (16, '123456', 'admin', '男', '18595115210', '1972803671@qq.com', '北门大铁塔下', 5);
INSERT INTO `user` VALUES (17, 'admin', 'admin', '男', '12345678901', '197@qq.com', '竹园110', 13);
INSERT INTO `user` VALUES (19, '123', 'admin', '女', '18595115210', '1972803671@qq.com', '中北大学', 5);
INSERT INTO `user` VALUES (20, '1234', 'admin', '男', '13655432211', '1972803671@qq.com', '中北大学', 25);
INSERT INTO `user` VALUES (21, '樊毅', 'admin', '男', '12345678901', '1234@qq.com', '中北大学', 10);
INSERT INTO `user` VALUES (23, '佩奇', 'admin', '男', '12345678901', '1777@qq.com', '竹园250', 0);
INSERT INTO `user` VALUES (33, '卍', 'admin', '女', '12345678901', '1777@qq.com', '南门大铁塔下', 0);
INSERT INTO `user` VALUES (36, '卐', 'admin', '男', '12345678901', '1777@qq.com', '南门大铁塔下', 0);

SET FOREIGN_KEY_CHECKS = 1;
