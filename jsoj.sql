/*
 Navicat Premium Data Transfer

 Source Server         : 文传
 Source Server Type    : MySQL
 Source Server Version : 50553
 Source Host           : localhost:3306
 Source Schema         : jsoj

 Target Server Type    : MySQL
 Target Server Version : 50553
 File Encoding         : 65001

 Date: 18/09/2019 19:58:01
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for compercord
-- ----------------------------
DROP TABLE IF EXISTS `compercord`;
CREATE TABLE `compercord`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `competition_id` int(11) NOT NULL,
  `score` int(11) NOT NULL DEFAULT 0,
  `ctime` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 35 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of compercord
-- ----------------------------
INSERT INTO `compercord` VALUES (5, 11, 3, 78, '2019-09-16 03:10:06');
INSERT INTO `compercord` VALUES (6, 1, 3, 0, '2019-09-16 03:10:06');
INSERT INTO `compercord` VALUES (7, 1, 4, 0, '2019-09-16 03:11:35');
INSERT INTO `compercord` VALUES (8, 11, 4, 89, '2019-09-16 03:11:35');
INSERT INTO `compercord` VALUES (9, 1, 5, 0, '2019-09-16 03:12:57');
INSERT INTO `compercord` VALUES (10, 11, 5, 92, '2019-09-16 03:12:57');
INSERT INTO `compercord` VALUES (11, 11, 6, 81, '2019-09-16 03:16:33');
INSERT INTO `compercord` VALUES (12, 1, 6, 0, '2019-09-16 03:16:33');
INSERT INTO `compercord` VALUES (13, 11, 7, 0, '2019-09-16 03:28:21');
INSERT INTO `compercord` VALUES (14, 1, 7, 0, '2019-09-16 03:28:21');
INSERT INTO `compercord` VALUES (15, 11, 8, 0, '2019-09-16 03:43:06');
INSERT INTO `compercord` VALUES (16, 1, 8, 66, '2019-09-16 03:43:06');
INSERT INTO `compercord` VALUES (17, 11, 9, 0, '2019-09-16 03:54:37');
INSERT INTO `compercord` VALUES (18, 1, 9, 53, '2019-09-16 03:54:37');
INSERT INTO `compercord` VALUES (19, 11, 10, 0, '2019-09-15 22:57:22');
INSERT INTO `compercord` VALUES (20, 1, 10, 76, '2019-09-15 22:57:22');
INSERT INTO `compercord` VALUES (21, 1, 11, 0, '2019-09-15 23:02:10');
INSERT INTO `compercord` VALUES (22, 11, 11, 59, '2019-09-15 23:02:10');
INSERT INTO `compercord` VALUES (23, 11, 12, 0, '2019-09-16 12:58:32');
INSERT INTO `compercord` VALUES (24, 1, 12, 100, '2019-09-16 12:58:32');
INSERT INTO `compercord` VALUES (25, 11, 13, 81, '2019-09-16 18:12:55');
INSERT INTO `compercord` VALUES (26, 1, 13, 8, '2019-09-16 18:12:55');
INSERT INTO `compercord` VALUES (27, 11, 14, 0, '2019-09-17 15:48:15');
INSERT INTO `compercord` VALUES (28, 1, 14, 93, '2019-09-17 15:48:15');
INSERT INTO `compercord` VALUES (29, 1, 15, 26, '2019-09-17 16:34:29');
INSERT INTO `compercord` VALUES (30, 11, 15, 16, '2019-09-17 16:34:29');
INSERT INTO `compercord` VALUES (31, 25, 16, 0, '2019-09-18 10:06:41');
INSERT INTO `compercord` VALUES (32, 1, 16, 0, '2019-09-18 10:06:41');
INSERT INTO `compercord` VALUES (33, 1, 17, 16, '2019-09-18 17:24:47');
INSERT INTO `compercord` VALUES (34, 11, 17, 68, '2019-09-18 17:24:47');

-- ----------------------------
-- Table structure for competition
-- ----------------------------
DROP TABLE IF EXISTS `competition`;
CREATE TABLE `competition`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `question` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `type` int(2) NOT NULL DEFAULT 0 COMMENT '0：1v1  \r\n\r\n1：全站SOLO',
  `des` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of competition
-- ----------------------------
INSERT INTO `competition` VALUES (1, '1v1', '338663b7d3c15585::1b2da4172c30351a::1347b8c745fa11dc::3a8a439bb252039b::36870ccc8852001a::fd998d7132029c88::fbf6a7e0b75b9de2::725dba27d63c68c4::ee30895996ebbfdf::edf9d71a272ee2b9::', '2019-09-16 02:53:19', '2019-09-16 02:53:47', 0, '1v1');
INSERT INTO `competition` VALUES (2, '1v1', '338663b7d3c15585::1b2da4172c30351a::1347b8c745fa11dc::3a8a439bb252039b::36870ccc8852001a::fd998d7132029c88::fbf6a7e0b75b9de2::725dba27d63c68c4::ee30895996ebbfdf::edf9d71a272ee2b9::', '2019-09-16 02:53:19', '2019-09-16 02:53:47', 0, '1v1');
INSERT INTO `competition` VALUES (3, '1v1', 'a38ea904dfaba093::385f7a6b456e503b::e952f33dcba90be4::2f4f2d8cc9976893::cf7ad87a9d010a3f::3375885134c53423::25f5402fecd3e528::ee30895996ebbfdf::e5031d195d62c15b::dcfbc1a01c080a10::', '2019-09-16 03:09:44', '2019-09-16 03:10:04', 0, '1v1');
INSERT INTO `competition` VALUES (4, '1v1', 'fbf6a7e0b75b9de2::421feca228c980bd::971c4cf0d19683b0::958719ea3a431ae6::e58a544f47fbbf9d::34407132efef0c26::3a1fa2645ef1e464::2ea5781e326896c8::7387d07aa7718129::e952f33dcba90be4::', '2019-09-16 03:11:13', '2019-09-16 03:11:32', 0, '1v1');
INSERT INTO `competition` VALUES (5, '1v1', '9b26c881de35ea1e::ec083d74ff3f279b::d93c9fab7b9e407f::3a1fa2645ef1e464::a38ea904dfaba093::3a8a439bb252039b::2f4f2d8cc9976893::04c9ef5e17bdd225::3375885134c53423::e5031d195d62c15b::', '2019-09-16 03:12:35', '2019-09-16 03:12:54', 0, '1v1');
INSERT INTO `competition` VALUES (6, '1v1', '47a00b2d50428a22::2f4f2d8cc9976893::fbf6a7e0b75b9de2::eba75b31a117be79::a38ea904dfaba093::3a1fa2645ef1e464::1347b8c745fa11dc::ee30895996ebbfdf::fd998d7132029c88::e952f33dcba90be4::', '2019-09-16 03:16:13', '2019-09-16 03:16:31', 0, '1v1');
INSERT INTO `competition` VALUES (7, '1v1', '04c9ef5e17bdd225::1bc5e0098c1b7df3::338663b7d3c15585::a54f4765a2c8d7c1::9b26c881de35ea1e::27720c6ea5356cba::725dba27d63c68c4::eba75b31a117be79::1b2da4172c30351a::599c4cf14339d6ef::', '2019-09-16 03:26:20', '2019-09-16 03:28:20', 0, '1v1');
INSERT INTO `competition` VALUES (8, '1v1', 'fbf6a7e0b75b9de2::7387d07aa7718129::a38ea904dfaba093::7e226fc5223ddb54::4707932c0e8f5290::958719ea3a431ae6::3a1fa2645ef1e464::1b2da4172c30351a::bf4e902fbf2a50e8::3303ab303b425248::', '2019-09-16 03:42:26', '2019-09-16 03:43:04', 0, '1v1');
INSERT INTO `competition` VALUES (9, '1v1', 'a54f4765a2c8d7c1::3a1fa2645ef1e464::1bc5e0098c1b7df3::7387d07aa7718129::27720c6ea5356cba::338663b7d3c15585::bf4e902fbf2a50e8::960ca0a549fbcb02::ee30895996ebbfdf::971c4cf0d19683b0::', '2019-09-16 03:54:09', '2019-09-16 03:54:34', 0, '1v1');
INSERT INTO `competition` VALUES (10, '1v1', '960ca0a549fbcb02::ee30895996ebbfdf::34407132efef0c26::599c4cf14339d6ef::3a1fa2645ef1e464::e952f33dcba90be4::3303ab303b425248::421feca228c980bd::338663b7d3c15585::3a8a439bb252039b::', '2019-09-15 22:56:57', '2019-09-15 22:57:21', 0, '1v1');
INSERT INTO `competition` VALUES (11, '1v1', 'fd998d7132029c88::edf9d71a272ee2b9::a38ea904dfaba093::7387d07aa7718129::4707932c0e8f5290::2ea5781e326896c8::34407132efef0c26::971c4cf0d19683b0::04c9ef5e17bdd225::1b2da4172c30351a::', '2019-09-15 23:01:48', '2019-09-15 23:02:07', 0, '1v1');
INSERT INTO `competition` VALUES (12, '1v1', 'bf4e902fbf2a50e8::ee30895996ebbfdf::725dba27d63c68c4::25f5402fecd3e528::3a8a439bb252039b::2f4f2d8cc9976893::599c4cf14339d6ef::dcfbc1a01c080a10::1bc5e0098c1b7df3::eba75b31a117be79::', '2019-09-16 12:58:11', '2019-09-16 12:58:30', 0, '1v1');
INSERT INTO `competition` VALUES (13, '1v1', '7387d07aa7718129::1347b8c745fa11dc::ec083d74ff3f279b::d5c7deea4aeea333::4707932c0e8f5290::bf4e902fbf2a50e8::ee30895996ebbfdf::3375885134c53423::1bc5e0098c1b7df3::9b26c881de35ea1e::', '2019-09-16 18:12:04', '2019-09-16 18:12:53', 0, '1v1');
INSERT INTO `competition` VALUES (14, '1v1', '3375885134c53423::599c4cf14339d6ef::ee30895996ebbfdf::725dba27d63c68c4::25f5402fecd3e528::3a8a439bb252039b::338663b7d3c15585::1bc5e0098c1b7df3::a35064541f5f9439::fd998d7132029c88::', '2019-09-17 15:47:53', '2019-09-17 15:48:13', 0, '1v1');
INSERT INTO `competition` VALUES (15, '1v1', 'e952f33dcba90be4::04c9ef5e17bdd225::a38ea904dfaba093::2ea5781e326896c8::1347b8c745fa11dc::d68740528b0f7146::ee30895996ebbfdf::2f4f2d8cc9976893::1b2da4172c30351a::ec083d74ff3f279b::', '2019-09-17 16:32:29', '2019-09-17 16:34:29', 0, '1v1');
INSERT INTO `competition` VALUES (16, '1v1', 'fd998d7132029c88::47a00b2d50428a22::34407132efef0c26::a38ea904dfaba093::bf4e902fbf2a50e8::d93c9fab7b9e407f::599c4cf14339d6ef::421feca228c980bd::1347b8c745fa11dc::edf9d71a272ee2b9::', '2019-09-18 10:04:39', '2019-09-18 10:06:39', 0, '1v1');
INSERT INTO `competition` VALUES (17, '1v1', 'd93c9fab7b9e407f::fd998d7132029c88::3303ab303b425248::dcfbc1a01c080a10::e6db84f7e4a513fb::3a1fa2645ef1e464::3375885134c53423::971c4cf0d19683b0::e952f33dcba90be4::385f7a6b456e503b::', '2019-09-18 17:23:45', '2019-09-18 17:24:45', 0, '1v1');

-- ----------------------------
-- Table structure for question
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` int(2) NOT NULL DEFAULT 0 COMMENT '0：正常\r\n1：审核中',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `score` int(11) NOT NULL DEFAULT 0,
  `test` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `questionInit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `allcount` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of question
-- ----------------------------
INSERT INTO `question` VALUES ('971c4cf0d19683b0', 0, '重复字符函数', '写一个名为:repeatStr的函数, 参数n为重复的次数, s为要重复的次数;', 2, 'repeatStr(3,\"*\") = \"***\"&=&repeatStr(4,\"=\") = \"====\"&=&repeatStr(5,\"\'\") = \"\'\'\'\'\'\"', 'function repeatStr (n, s) {\n  return;\n}', 38);
INSERT INTO `question` VALUES ('a54f4765a2c8d7c1', 0, '判断奇偶数', '写一个名为even_or_odd的函数, 判断输入的整数如果为奇数则输出:Odd, 如果为偶数则输出:Even', 2, 'even_or_odd(2) = \"Even\"&=&even_or_odd(0) = \"Even\"&=&even_or_odd(7) = \"Odd\"&=&even_or_odd(1) = \"Odd\"', 'function even_or_odd(number) {\n  // ...\n}', 85);
INSERT INTO `question` VALUES ('27720c6ea5356cba', 0, '输入操作符计算两数', '写一个名为:basicOp的函数, 输入一个操作符和两个数字, 输出其计算结果value1为操作符之前的数;', 2, 'basicOp(\"+\", 1, 2) = 3&=&basicOp(\"-\", 1, 2) = -1&=&basicOp(\"*\", 1, 2) = 2&=&basicOp(\"/\", 1, 2) = 0.5', 'function basicOp(operation, value1, value2)\n{\n  // Code\n}', 9);
INSERT INTO `question` VALUES ('3a1fa2645ef1e464', 0, '数字转字符串', '编写一个名为numberToString的函数, 将输入的数字转为字符串输出;', 2, 'numberToString(1) = \"1\"&=&numberToString(666) = \"666\"&=&numberToString(789) = \"789\"', 'function numberToString(num) {\n  // Return a string of the number here!\n}', 12);
INSERT INTO `question` VALUES ('3303ab303b425248', 0, '字符串转数字', '写一个函数将输入的字符串转为number类型', 2, 'toNumber(\"1234\") = 1234&=&toNumber(\"777\") = 777&=&toNumber(\"666\") = 666&=&toNumber(\"666.6\") = 666.6', 'function toNumber(str) {\n    \n}', 12);
INSERT INTO `question` VALUES ('fd998d7132029c88', 0, '数组每个数字增加5', '写一个函数使的返回的数组,每个数字增加5', 2, 'addArr([1, 2, 3]) = [6,7,8]&=&addArr([3, 4, 5]) = [8,9,10]&=&addArr([2,4,8]) = [7,9,13]', 'function addArr(arr) {\n}', 26);
INSERT INTO `question` VALUES ('dcfbc1a01c080a10', 0, '删除一个数字找最大数', '给定一个数字,你要做的是,删除其中一个数字,使得删除一个数字后的数字,尽可能大;', 6, 'deleteDigit(\"1123\") = 123&=&deleteDigit(\"10\") = 1&=&deleteDigit(\"789\") = 89', 'function deleteDigit(n) {\n  //coding and coding..\n  \n  \n}', 11);
INSERT INTO `question` VALUES ('725dba27d63c68c4', 0, '一个数的二进制有几个1', '输入一个非负的数字;输出其二进制有几个1;\n例如: 1234 是 10011010010, 所以输出5', 6, 'countBits(0) = 0&=&countBits(4) = 1&=&countBits(7) = 3&=&countBits(10) = 2', 'var countBits = function(n) {\n  // Program Me\n};', 8);
INSERT INTO `question` VALUES ('4707932c0e8f5290', 0, '找到最短的单词', '从一个句子中找到最短的单词,并返回单词的长度;(单词以空格,隔开)', 4, 'findShort(\"bitcoin take over the world maybe who knows perhaps\") = 3&=&findShort(\"turns out random test cases are easier than writing out basic ones\") = 3&=&findShort(\"a bb ccc\") = 1&=&findShort(\"aaa bb ccc\") = 2', 'function findShort(s){\n}', 9);
INSERT INTO `question` VALUES ('960ca0a549fbcb02', 0, '找规律,写函数', '找规律写函数:\na => A\nab => A-Bb\nabc => A-Bb-Ccc\nAbCd => A-Bb-Ccc-Dddd', 4, 'accum(\"ZpglnRxqenU\") = \"Z-Pp-Ggg-Llll-Nnnnn-Rrrrrr-Xxxxxxx-Qqqqqqqq-Eeeeeeeee-Nnnnnnnnnn-Uuuuuuuuuuu\"&=&accum(\"NyffsGeyylB\") = \"N-Yy-Fff-Ffff-Sssss-Gggggg-Eeeeeee-Yyyyyyyy-Yyyyyyyyy-Llllllllll-Bbbbbbbbbbb\"&=&accum(\"MjtkuBovqrU\") = \"M-Jj-Ttt-Kkkk-Uuuuu-Bbbbbb-Ooooooo-Vvvvvvvv-Qqqqqqqqq-Rrrrrrrrrr-Uuuuuuuuuuu\"&=&accum(\"abcd\") = \"A-Bb-Ccc-Dddd\"', 'function accum(s) {\n	// your code\n}', 13);
INSERT INTO `question` VALUES ('e5031d195d62c15b', 0, '最大数和最小数', '从字符串中找到最大数和最小数返回,返回字符串中间以空格隔开;', 4, 'highAndLow(\"4 5 29 54 4 0 -214 542 -64 1 -3 6 -6\") = \"542 -214\"&=&highAndLow(\"1 2 3 4 5\") = \"5 1\"&=&highAndLow(\"2 4 6 8\") = \"8 2\"', 'function highAndLow(numbers){\n  // ...\n}', 13);
INSERT INTO `question` VALUES ('1347b8c745fa11dc', 0, 'ASCII 转意', '输入数字输出这个数字对应的ascii', 2, 'getChar(61) = \"=\"&=&getChar(56) = \"8\"&=&getChar(58) = \":\"&=&getChar(65) = \"A\"', 'function getChar(c){\n  // ...\n}', 7);
INSERT INTO `question` VALUES ('599c4cf14339d6ef', 0, '父亲是儿子的两倍', '给出父亲的年纪,还有孩子的年纪,计算多少年后或多少年前,父亲的年纪是儿子的两倍', 2, 'twiceAsOld(36,7) = 22&=&twiceAsOld(55,30) = 5&=&twiceAsOld(42,21) = 0&=&twiceAsOld(22,1) = 20', 'function twiceAsOld(dadYearsOld, sonYearsOld) {\n  // your code here\n}', 8);
INSERT INTO `question` VALUES ('d5c7deea4aeea333', 0, '重复字符有几个', '输入一个字符串,写一个函数计算字符串中重复字符有几个(可以不必相邻),不区分大小写,假设字符串中只有大小写还有数字', 8, 'duplicateCount(\"\") = 0&=&duplicateCount(\"abcde\") = 0&=&duplicateCount(\"aabbcde\") = 2&=&duplicateCount(\"aabBcde\") = 2&=&duplicateCount(\"Indivisibilities\") = 2', 'function duplicateCount(text){\n  //...\n}', 9);
INSERT INTO `question` VALUES ('7e226fc5223ddb54', 0, '数组最长字符串', '给定一个数组arr和一个数字k,找出数组中由连续k个元素组成的最长的字符串,如果数组长度等于0,k>数组长度 或者k<=0 返回\"\"', 10, 'longestConsec([\"zone\", \"abigail\", \"theta\", \"form\", \"libe\", \"zas\"], 2) = \"abigailtheta\"&=&longestConsec([\"ejjjjmmtthh\", \"zxxuueeg\", \"aanlljrrrxx\", \"dqqqaaabbb\", \"oocccffuucccjjjkkkjyyyeehh\"], 1) = \"oocccffuucccjjjkkkjyyyeehh\"&=&longestConsec([\"itvayloxrp\",\"wkppqsztdkmvcuwvereiupccauycnjutlv\",\"vweqilsfytihvrzlaodfixoyxvyuyvgpck\"], 2) = \"wkppqsztdkmvcuwvereiupccauycnjutlvvweqilsfytihvrzlaodfixoyxvyuyvgpck\"&=&longestConsec([\"it\",\"wkppv\",\"ixoyx\", \"3452\", \"zzzzzzzzzzzz\"], 3) = \"ixoyx3452zzzzzzzzzzzz\"', 'function longestConsec(strarr, k) {\n    // your code\n}', 7);
INSERT INTO `question` VALUES ('25f5402fecd3e528', 0, '约瑟夫斯幸存者', '有n个人在圈中,每次剔除第k个人,最后一个为幸存者;\n\n[1,2,3,4,5,6,7] - 初始\n[1,2,4,5,6,7] => 3  out\n[1,2,4,5,7] => 6  out\n[1,4,5,7] => 2  out\n[1,4,5] => 7  out\n[1,4] => 5  out\n[4] => 1 out\n返回4', 15, 'josephusSurvivor(7,3) = 4&=&josephusSurvivor(11,19) = 10&=&josephusSurvivor(1,300) = 1&=&josephusSurvivor(14,2) = 13&=&josephusSurvivor(100,1) = 100', 'function josephusSurvivor(n,k){\n  //your code here\n}', 9);
INSERT INTO `question` VALUES ('fbf6a7e0b75b9de2', 0, '驼峰命名法', '将给定的字符转成驼峰命名写法;', 12, 'toCamelCase(\"the_stealth_warrior\") = \"theStealthWarrior\"&=&toCamelCase(\"The-Stealth-Warrior\") = \"theStealthWarrior\"&=&toCamelCase(\"A-B-C\") = \"aBC\"&=&toCamelCase(\"I-am-a-programmer\") = \"iAmAProgrammer\"', 'function toCamelCase(str){\n\n}', 12);
INSERT INTO `question` VALUES ('edf9d71a272ee2b9', 0, '字符串结尾', '输入两个字符串str , ending,判断str的末尾位置是否包含str;', 4, 'solution(\'abcde\', \'cde\') = true&=&solution(\'abcde\', \'abc\') = false&=&solution(\'abc\', \'c\') = true&=&solution(\'abc\', \'cb\') = false', 'function solution(str, ending){\n  // TODO: complete\n}', 10);
INSERT INTO `question` VALUES ('2ea5781e326896c8', 0, '数字排序', '给定一个数字,返回排序之后的数字(从大到小)', 4, 'descendingOrder(123456789) = 987654321&=&descendingOrder(0) = 0&=&descendingOrder(1021) = 2110&=&descendingOrder(15) = 51', 'function descendingOrder(n){\n  //...\n}', 10);
INSERT INTO `question` VALUES ('7387d07aa7718129', 0, '最小两个整数相加', '把一个数组中最小的两个数字相加并返回相加的结果', 4, 'sumTwoSmallestNumbers([5, 8, 12, 19, 22]) = 13&=&sumTwoSmallestNumbers([15, 28, 4, 2, 43]) = 6&=&sumTwoSmallestNumbers([3, 87, 45, 12, 7]) = 10&=&sumTwoSmallestNumbers([23, 71, 33, 82, 1]) = 24&=&sumTwoSmallestNumbers([52, 76, 14, 12, 4]) = 16', 'function sumTwoSmallestNumbers(numbers) {  \n  //Code here\n};', 16);
INSERT INTO `question` VALUES ('47a00b2d50428a22', 0, '数组排序', '给定一个数组,将数组中奇数的数值进行升序排序,偶数保持原位;\n注意: 如果输入空数组,则返回空数组, 0不是奇数所以不用移动它;', 12, 'sortArray([5, 3, 2, 8, 1, 4]) = [1, 3, 2, 8, 5, 4]&=&sortArray([5, 3, 1, 8, 0]) = [1, 3, 5, 8, 0]&=&sortArray([]) = []', 'function sortArray(array) {\n  // Return a sorted array.\n}', 10);
INSERT INTO `question` VALUES ('e6db84f7e4a513fb', 0, '是否是素数', '输入数值判断这个数是否为素数;', 10, 'isPrime(0) = false&=&isPrime(1) = false&=&isPrime(2) = true&=&isPrime(13) = true', 'function isPrime(num) {\n  //TODO\n}', 6);
INSERT INTO `question` VALUES ('a38ea904dfaba093', 0, '数字代替字母', '给定一个字符串,用数字代替字母, 例: a = 1, b = 2, c = 3 ...... z=26,输出字符串以空格隔开数字; \n注: 不区分大小写, 非字母无需输出;', 10, 'alphabetPosition(\"a\") = \"1\"&=&alphabetPosition(\"abc\") = \"1 2 3\"&=&alphabetPosition(\"The sunset sets at twelve o\' clock.\") = \"20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5 15 3 12 15 3 11\"&=&alphabetPosition(\"The narwhal bacons at midnight.\") = \"20 8 5 14 1 18 23 8 1 12 2 1 3 15 14 19 1 20 13 9 4 14 9 7 8 20\"', 'function alphabetPosition(text) {\n  return text;\n}', 13);
INSERT INTO `question` VALUES ('d68740528b0f7146', 0, '创建手机号', '给定一个数组,按照以下格式创建一个手机号;输出字符串;\n例: [1, 2, 3, 4, 5, 6, 7, 8, 9, 0] => \"(123) 456-7890\"', 8, 'createPhoneNumber([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]) = (123) 456-7890&=&createPhoneNumber([1, 2, 3, 4, 5, 6, 7, 8, 9, 9]) = (123) 456-7899&=&createPhoneNumber([9, 9 ,9 ,9 ,9, 9, 9, 9, 9, 9]) = (999) 999-9999', 'function createPhoneNumber(numbers){\n  \n}', 9);
INSERT INTO `question` VALUES ('338663b7d3c15585', 0, '字符串排序', '将数组字符串按首字母进行排序,然后取数组第一个,每个字符中间用***间隔然后输出例如;\n[bac,abc,cba] => a***b***c\n注: 区分大小写;', 4, 'twoSort([\"bac\", \"bakc\", \"abc\"]) = a***b***c&=&twoSort([\"bitcoin\", \"take\", \"over\", \"the\", \"world\", \"maybe\", \"who\", \"knows\", \"perhaps\"]) = \'b***i***t***c***o***i***n\'&=&twoSort([\"turns\", \"out\", \"random\", \"test\", \"cases\", \"are\", \"easier\", \"than\", \"writing\", \"out\", \"basic\", \"ones\"]) = \'a***r***e\'', 'function twoSort(s) {\n  \n}', 11);
INSERT INTO `question` VALUES ('ae646328505b6def', 0, '数笑脸', '规则： -\n1. 每个笑脸必须包含一双有效的眼睛。眼睛可以标记为:或;\n2. 笑脸可以有鼻子，也可以没有。鼻子的有效字符是-或 - ~\n3. 每个笑脸必须有一个微笑的嘴，应该用)或标记 D。\n\n除了提到的字符外，不允许使用其他字符。\n有效的笑脸例子：\n:) :D ;-D :~)\n无效的笑脸：\n;( :> :} :]', 12, 'countSmileys([]) = 0&=&countSmileys([\':D\',\':~)\',\';~D\',\':)\']) = 4&=&countSmileys([\':)\',\':(\',\':D\',\':O\',\':;\']) = 2&=&countSmileys([\';]\', \':[\', \';*\', \':$\', \';-D\']) = 1', 'function countSmileys(arr) {\n\n}', 5);
INSERT INTO `question` VALUES ('421feca228c980bd', 0, '被3和5分整除', '给定一个数字,列出在这个数字范围(0-number)内所有可以被3或5整除的数字,然后将所有数值相加;\n例如: 输入10 => 3, 5, 6, 9 => 23\n注意: 如果这个数同时被3,5整除.只计算一次', 12, 'solution(10) = 23&=&solution(20) = 78&=&solution(200) = 9168&=&solution(-1) = 0', 'function solution(number){\n  \n}', 5);
INSERT INTO `question` VALUES ('e58a544f47fbbf9d', 0, '字符串字母统计', '输入一个字符串输出一个对象,统计输入字符串各个字母的个数;\n例如:  aba => {\'a\': 2, \'b\': 1}\n注意:如果字符串为空则输出:{}', 12, 'count(\"aba\") = { a: 2, b: 1 }&=&count(\"\") = {}&=&count(\"aaaabbbbbbbbb\") = { a: 4, b: 9 }', 'function count (string) {  \n  // The function code should be here\n   return {};\n}', 5);
INSERT INTO `question` VALUES ('04c9ef5e17bdd225', 0, '出现奇数次的数', '输入一个数组,找到其中出现次数为奇数的数字;\n注意: 只有一个数字出现奇数次;', 12, 'findOdd([20,1,-1,2,-2,3,3,5,5,1,2,4,20,4,-1,-2,5]) = 5&=&findOdd([1,1,2,-2,5,2,4,4,-1,-2,5]) = -1&=&findOdd([20,1,1,2,2,3,3,5,5,4,20,4,5]) = 5&=&findOdd([5,4,3,2,1,5,4,3,2,10,10]) = 1', 'function findOdd(A) {\n  //happy coding!\n  return 0;\n}', 7);
INSERT INTO `question` VALUES ('a35064541f5f9439', 0, '连续相乘!', '输入一个数字,然后将数字拆解再相乘,得到一个新的数字之后如果这个数字只有一位则结束,如果这个数字大于两位则继续拆解相乘,如此循环;\n最后输出相乘的次数;\n例: 输入39 => 3*9=27 => 2*7=14 => 1*4=4 => 4   输出3\n     输入999 => 9*9*9=729 => 7*2*9=126 => 1*2*6=12 =>1*2=2 => 2 输出4\n     输入4 => 输出0', 15, 'persistence(39) = 3&=&persistence(4) = 0&=&persistence(25) = 2&=&persistence(999) = 4', 'function persistence(num) {\n   //code me\n}', 6);
INSERT INTO `question` VALUES ('385f7a6b456e503b', 0, '数一数有几个true', '给定一个数组,返回这个数组有几个true', 2, 'countSheeps([true,  true,  true,  false,true,  true,  true,  true , true,  false, true,  false, true,  false, false, true ,  true,  true,  true,  true , false, false, true,  true ]) = 17&=&countSheeps([true,false]) = 1&=&countSheeps([true,false,true,true]) = 3', 'function countSheeps(arrayOfSheep) {\n  // TODO May the force be with you\n \n}', 15);
INSERT INTO `question` VALUES ('1b2da4172c30351a', 0, '寻找单词的位置', '输入一组单词,寻找\'needle\'的位置,返回found the needle at position + 索引下标\n例: [1,2,3,\'needle\'] => \'found the needle at position 3\'', 2, 'findNeedle([\'3\', \'123124234\', undefined, \'needle\', \'world\', \'hay\', 2, \'3\', true, false]) = \'found the needle at position 3\'&=&findNeedle([\'283497238987234\', \'a dog\', \'a cat\', \'some random junk\', \'a piece of hay\', \'needle\', \'something somebody lost a while ago\']) = \'found the needle at position 5\'&=&findNeedle([1,2,3,4,5,6,7,8,8,7,5,4,3,4,5,6,67,5,5,3,3,4,2,34,234,23,4,234,324,324,\'needle\',1,2,3,4,5,5,6,5,4,32,3,45,54]) = \'found the needle at position 30\'', 'function findNeedle(haystack) {\n  // your code here\n  \n}', 10);
INSERT INTO `question` VALUES ('ee30895996ebbfdf', 0, '两次重复字符', '输入一个字符串,将字符串的各个字符重复两次输出;\n例如: \'abc\' => \'aabbcc\'', 3, 'doubleChar(\"abcd\") = \'aabbccdd\'&=&doubleChar(\"Adidas\") = \'AAddiiddaass\'&=&doubleChar(\"1337\") = \'11333377\'&=&doubleChar(\"%^&*(\") = \'%%^^&&**((\'', 'function doubleChar(str) {\n  // Your code here\n  \n}', 11);
INSERT INTO `question` VALUES ('2f4f2d8cc9976893', 0, 'DNA转RNA', '将DNA代码转为RNA,DNA由GCAT组成;转为RNA的时候将T替换为U,输入一段DNA输出RNA代码(只含有大写字母)', 2, 'DNAtoRNA(\"TTTT\") = \'UUUU\'&=&DNAtoRNA(\"GCAT\") = \'GCAU\'&=&DNAtoRNA(\"GACCGCCGCC\") = \'GACCGCCGCC\'&=&DNAtoRNA(\"CACGACATACGGAGCAGCGCACGGTTAGTACAGCTGTCGGTGAACTCCATGACA\") = \'CACGACAUACGGAGCAGCGCACGGUUAGUACAGCUGUCGGUGAACUCCAUGACA\'', 'function DNAtoRNA(dna) {\n  // create a function which returns an RNA sequence from the given DNA sequence\n}', 15);
INSERT INTO `question` VALUES ('36870ccc8852001a', 0, '数组的总和', '给定一个数组，计算出这个数组的所有数字相加的总和。', 3, 'sumArr([1,2,3]) = 6&=&sumArr([2,2,2]) = 6&=&sumArr([1,2, 3, 4, 5]) = 15', 'function sumArr(arr) {\n\n}', 13);
INSERT INTO `question` VALUES ('ec083d74ff3f279b', 0, '数组去重', '给定一个数组，去重后返回数组（每个值只能出现一次）。并按数组大小，顺序排序', 4, 'setArr([1,1,3,1,1,2,3,4]) = [1,2,3,4]&=&setArr([1,2,8,3,4,5,6,7,8,8,8,7,5,4,2,-1,-4]) = [-4,-1,1,2,3,4,5,6,7,8]&=&setArr([3,4,5,1,1,1,2]) = [1,2,3,4,5]', 'function setArr(arr) {\n\n}', 9);
INSERT INTO `question` VALUES ('cf7ad87a9d010a3f', 0, '挑选数组元素', '输入两个数组，arr1和arr2。输出arr2中所有满足：包含arr1中字符串为子字符串的元素。并按首字母顺序排序。\n例如：\narr1 = [\"arp\", \"live\", \"strong\"]\narr2 = [\"lively\", \"alive\", \"harp\", \"sharp\", \"armstrong\"]\n输出 [\"arp\", \"live\", \"strong\"]', 10, 'inArray([\"xyz\", \"live\", \"strong\"],[\"lively\", \"alive\", \"harp\", \"sharp\", \"armstrong\"]) = [\"live\", \"strong\"]&=&inArray([ \'live\', \'strong\', \'\', \'lyal\', \'lysh\', \'arp\' ],[ \'lively\', \'alive\', \'harp\', \'sharp\', \'armstrong\' ]) = [ \'arp\', \'live\', \'strong\' ]&=&inArray([],[ \'lively\', \'alive\', \'harp\', \'sharp\', \'armstrong\' ]) = []&=&inArray([ \'arp\', \'live\', \'strong\' ],[ \'lively\', \'alive\', \'harp\', \'sharp\', \'armstrong\' ]) = [ \'arp\', \'live\', \'strong\' ]', 'function inArray(array1,array2){\n  //...\n}', 11);
INSERT INTO `question` VALUES ('958719ea3a431ae6', 0, '按格式输出数字', '按格式输出数字，例如：\n输入12 =》\'10 + 2\'\n输入401 =》\'400 + 1\'\n输入70304 =》\'70000 + 300 + 4\'', 10, 'expandedForm(12) = \'10 + 2\'&=&expandedForm(42) = \'40 + 2\'&=&expandedForm(70304) = \'70000 + 300 + 4\'&=&expandedForm(215746) = \'200000 + 10000 + 5000 + 700 + 40 + 6\'', 'function expandedForm(num) {\n  // Your code here\n}', 9);
INSERT INTO `question` VALUES ('3a8a439bb252039b', 0, '两个字符串数字相加', '将两个字符串数字相加，返回相加后的结果(位置相对应，如：个位对个位)；\n注： 除十个数字“0”到“9”之外，整数的字符串表示不包含任何字符。', 16, 'sumStrings(\'123\', \'456\') = \'579\'&=&sumStrings(\'8797\', \'45\') = \'8842\'&=&sumStrings(\'800\', \'9567\') = \'10367\'&=&sumStrings(\'99\', \'1\') = \'100\'&=&sumStrings(\'00103\', \'08567\') = \'8670\'&=&sumStrings(\'\', \'5\') = \'5\'&=&sumStrings(\'712569312664357328695151392\', \'8100824045303269669937\') = \'712577413488402631964821329\'&=&sumStrings(\'50095301248058391139327916261\', \'81055900096023504197206408605\') = \'131151201344081895336534324866\'', 'function sumStrings(a,b) { \n  \n}', 9);
INSERT INTO `question` VALUES ('e952f33dcba90be4', 0, '域名获取', '编写一个函数，当给定URL作为字符串时，只解析域名并将其作为字符串返回。例如：\ndomainName(\"http://github.com/carbonfive/raygun\") == \"github\" \ndomainName(\"http://www.zombie-bites.com\") == \"zombie-bites\"\ndomainName(\"https://www.cnet.com\") == \"cnet\"', 16, 'domainName(\"http://google.com\") = “google”&=&domainName(\"http://google.co.jp\") = \"google\"&=&domainName(\"www.xakep.ru\") = \"xakep\"&=&domainName(\"https://youtube.com\") = \"youtube\"&=&domainName(\"https://kgj37zgf7enosteftwci8zigxu.co/index.php\") = \"kgj37zgf7enosteftwci8zigxu\"&=&domainName(\"https://ac3t7ah1f5q8oovg.tv/error\") = \"ac3t7ah1f5q8oovg\"&=&domainName(\"https://www.k0dak2ertg1eivtj4aj8ig2lbo.us/index.php\") = \"k0dak2ertg1eivtj4aj8ig2lbo\"&=&domainName(\"baidu.com\") = \"baidu\"', 'function domainName(url){\n  //your code here\n}', 13);
INSERT INTO `question` VALUES ('3375885134c53423', 0, '字符串排序(数字)', '您的任务是对给定的字符串进行排序，每个单词中都会包含一个数字。按数字的大小对字符串的单词进行排序后输出。例如：\n\"is2 Thi1s T4est 3a\"  -->  \"Thi1s is2 3a T4est\"\n\"4of Fo1r pe6ople g3ood th5e the2\"  -->  \"Fo1r the2 g3ood 4of th5e pe6ople\"\n\"\" --> \"\"\n注意：：数字可以是1到9.因此1将是第一个单词', 10, 'order(\"is2 Thi1s T4est 3a\") = \'Thi1s is2 3a T4est\'&=&order(\"4of Fo1r pe6ople g3ood th5e the2\") = \'Fo1r the2 g3ood 4of th5e pe6ople\'&=&order(\"\") = \"\"&=&order(\'3 6 4 2 8 7 5 1 9\') = \'1 2 3 4 5 6 7 8 9\'', 'function order(words){\n\n}', 9);
INSERT INTO `question` VALUES ('d93c9fab7b9e407f', 0, '计算骰子的分数', '一共5个骰子，按积分表计算骰子的分数。\n 三个1 => 1000 分\n 三个6 =>  600 分\n 三个5 =>  500 分\n 三个4 =>  400 分\n 三个3 =>  300 分\n 三个2 =>  200 分\n 一个1 =>  100 分\n 一个5 =>   50 分\n注意： 如果不满足积分表的则为0分；', 16, 'score([2, 3, 4, 6, 2]) = 0&=&score([4, 4, 4, 3, 3]) = 400&=&score([2, 4, 4, 5, 4]) = 450&=&score( [1, 1, 1, 3, 3]) = 1000&=&score([1, 1, 1, 1, 3]) = 1100&=&score([6, 6, 6, 3, 3]) = 600', 'function score( dice ) {\n  // Fill me in!\n}', 6);
INSERT INTO `question` VALUES ('eba75b31a117be79', 0, '猜密码', '蔡徐坤在输入密码，你可以知道他输入的大概位置。但是不知道具体是哪个数字，看到的每个数字都可能实际上是另一个相邻的数字（水平或垂直，但不是对角线）。\n例如，1它也可能是1，2, 4。2有可能是1, 2, 3, 5\n要求： 找到所有可能的输入,并排序\n输入键盘如下：\n┌───┬───┬───┐\n│ 1 │ 2 │ 3 │\n├───┼───┼───┤\n│ 4 │ 5 │ 6 │\n├───┼───┼───┤\n│ 7 │ 8 │ 9 │\n└───┼───┼───┘\n       │ 0 │\n      └───┘', 20, 'getPINs(\'8\') = [\'0\',\'5\',\'7\',\'8\',\'9\']&=&getPINs(\'11\') = [\'11\', \'12\', \'14\', \'21\', \'22\', \'24\', \'41\', \'42\', \'44\']&=&getPINs(\'369\') = [\'236\', \'238\', \'239\', \'256\', \'258\', \'259\', \'266\', \'268\', \'269\', \'296\', \'298\', \'299\', \'336\', \'338\', \'339\', \'356\', \'358\', \'359\', \'366\', \'368\', \'369\', \'396\', \'398\', \'399\', \'636\', \'638\', \'639\', \'656\', \'658\', \'659\', \'666\', \'668\', \'669\', \'696\', \'698\', \'699\']&=&getPINs(\'00000000\') = [\'00000000\', \'00000008\', \'00000080\', \'00000088\', \'00000800\', \'00000808\', \'00000880\', \'00000888\', \'00008000\', \'00008008\', \'00008080\', \'00008088\', \'00008800\', \'00008808\', \'00008880\', \'00008888\', \'00080000\', \'00080008\', \'00080080\', \'00080088\', \'00080800\', \'00080808\', \'00080880\', \'00080888\', \'00088000\', \'00088008\', \'00088080\', \'00088088\', \'00088800\', \'00088808\', \'00088880\', \'00088888\', \'00800000\', \'00800008\', \'00800080\', \'00800088\', \'00800800\', \'00800808\', \'00800880\', \'00800888\', \'00808000\', \'008080', 'function getPINs(observed) {\n  // TODO: This is your job, detective!\n}', 9);
INSERT INTO `question` VALUES ('9b26c881de35ea1e', 0, '第一个非重复的字母', '并返回字符串中不重复的第一个字符（忽略大小写）\n例子： \nstress => t\nsTreSS => T', 16, 'firstNonRepeatingLetter(\'a\') = \'a\'&=&firstNonRepeatingLetter(\'stress\') = \'t\'&=&firstNonRepeatingLetter(\'moonmen\') = \'e\'&=&firstNonRepeatingLetter(\'sTreSS\') = \'T\'', 'function firstNonRepeatingLetter(s) {\n  // Add your code here\n}', 6);
INSERT INTO `question` VALUES ('1bc5e0098c1b7df3', 0, '括号是否有序', '判断括号的顺序是否有效。返回true or false\n例子\n\"()\"              =>  true\n\")(()))\"          =>  false\n\"(\"               =>  false\n\"(())((()())())\"  =>  true', 20, 'validParentheses( \"()\" ) = true&=&validParentheses( \"()()((()\" ) = false&=&validParentheses( \"()()\" ) = true&=&validParentheses( \"((((()))))\" ) = true&=&validParentheses( \"(()()()())(())\" ) = true&=&validParentheses( \"(())()()()()()()()()()()()()(())()()()((\" ) = false', 'function validParentheses(parens){\n  //TODO \n}', 47);
INSERT INTO `question` VALUES ('34407132efef0c26', 0, '拉丁文转换', '将每个单词的第一个字母移动到它的末尾，然后在单词的末尾添加“ay”。保持标点符号不变。\n例子\npigIt(\'Pig latin is cool\'); // igPay atinlay siay oolcay\npigIt(\'Hello world !\');     // elloHay orldway !', 15, 'pigIt(\'Pig latin is cool\') = \'igPay atinlay siay oolcay\'&=&pigIt(\'This is my string\') = \'hisTay siay ymay tringsay\'&=&pigIt(\'Barba non facit philosophum\') = \'arbaBay onnay acitfay hilosophumpay\'&=&pigIt(\'Gutta cavat lapidem\') = \'uttaGay avatcay apidemlay\'&=&pigIt(\'O tempora o mores !\') = \'Oay emporatay oay oresmay !\'', 'function pigIt(str){\n  //Code here\n}', 10);
INSERT INTO `question` VALUES ('bf4e902fbf2a50e8', 0, '数字的三位分节法', '3位分节法指在表示一个数时，以三个数字为一段，用逗号或空格隔开\n如752259412，可表示成752,259,412\n100000 转成 100,000\n\n注意：此处分隔的逗号为英文半角逗号', 10, 'trisection(1200000.11) = \"1,200,000.11\"&=&trisection(110220) = \"110,220\"&=&trisection(11022022) = \"11,022,022\"', 'function trisection(number){\n //...\n}', 69);

-- ----------------------------
-- Table structure for record
-- ----------------------------
DROP TABLE IF EXISTS `record`;
CREATE TABLE `record`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `que_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `code` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ilike` int(11) NULL DEFAULT 0,
  `runtime` int(11) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 79 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of record
-- ----------------------------
INSERT INTO `record` VALUES (1, '971c4cf0d19683b0', 1, 'sxx', 0, 243, '2019-09-12 21:01:02');
INSERT INTO `record` VALUES (2, 'a54f4765a2c8d7c1', 1, 'function even_or_odd(number) {\n  if(number%2==0){\n  	return \"Even\";\n  }\n  return \"Odd\";\n}', 0, 21, '2019-09-18 21:01:04');
INSERT INTO `record` VALUES (3, 'a54f4765a2c8d7c1', 2, 'function even_or_odd(number) {\n  if(number%2==0){return \"Even\"}\n	return \"Odd\";\n}', 0, 99, '2019-09-02 21:01:08');
INSERT INTO `record` VALUES (4, 'a54f4765a2c8d7c1', 1, 'function even_or_odd(number) {\n  if(number%2==0){\n  	return \"Even\";\n  }\n  return \"Odd\";\n}', 0, 12, '2019-09-18 21:01:13');
INSERT INTO `record` VALUES (5, 'a54f4765a2c8d7c1', 1, 'function even_or_odd(number) {\n  if(number%2==0){\n  	return \"Even\";\n  }\n  return \"Odd\";\n}', 0, 22, '2019-09-11 21:01:19');
INSERT INTO `record` VALUES (6, 'a54f4765a2c8d7c1', 12, 'function even_or_odd(number) {\n  if(number%2==0){\n  	return \"Even\";\n  }\n  return \"Odd\";\n}', 0, 1, '2019-09-18 21:01:16');
INSERT INTO `record` VALUES (7, 'a54f4765a2c8d7c1', 1, 'function even_or_odd(number) {\n  // ...\n   if(number%2==0){\n  	return \"Even\";\n  }\n  return \"Odd\";\n}', 0, 48, '2019-09-13 14:33:14');
INSERT INTO `record` VALUES (8, 'a54f4765a2c8d7c1', 1, 'function even_or_odd(number) {\n  // ...\n  \n  for(var i = 0 ; i < 100000 ; i++){\n  	i++;\n  }\n  \n  if(number%2==0){\n  	return \"Even\";\n  }\n  return \"Odd\";\n}', 0, 48, '2019-09-13 14:34:25');
INSERT INTO `record` VALUES (9, 'a54f4765a2c8d7c1', 1, 'function even_or_odd(number) {\n  // ...\n  \n  for(var i = 0 ; i < 100000 ; i++){\n  	i++;\n  }\n  \n  if(number%2==0){\n  	return \"Even\";\n  }\n  return \"Odd\";\n}', 0, 46, '2019-09-13 14:34:44');
INSERT INTO `record` VALUES (10, 'a54f4765a2c8d7c1', 1, 'function even_or_odd(number) {\n  // ...\n  \n  for(var i = 0 ; i < 1000000 ; i++){\n  	i++;\n  }\n  \n  if(number%2==0){\n  	return \"Even\";\n  }\n  return \"Odd\";\n}', 0, 571, '2019-09-13 14:48:01');
INSERT INTO `record` VALUES (11, 'a54f4765a2c8d7c1', 1, 'function even_or_odd(number) {\n  if(number%2==0){\n  	return \"Even\";\n  }\n  return \"Odd\";\n}', 0, 45, '2019-09-13 15:54:30');
INSERT INTO `record` VALUES (12, 'a54f4765a2c8d7c1', 1, 'function even_or_odd(number) {\n  if(number%2==0){\n  	return \"Even\";\n  }\n  return \"Odd\";\n}', 0, 39, '2019-09-13 15:55:41');
INSERT INTO `record` VALUES (13, 'a54f4765a2c8d7c1', 1, 'function even_or_odd(number) {\n  if(number%2==0){\n  	return \"Even\";\n  }\n  return \"Odd\";\n}', 0, 34, '2019-09-13 15:56:42');
INSERT INTO `record` VALUES (14, 'a54f4765a2c8d7c1', 1, 'function even_or_odd(number) {\n  if(number%2==0){\n  	return \"Even\";\n  }\n  return \"Odd\";\n}', 0, 33, '2019-09-13 15:56:53');
INSERT INTO `record` VALUES (15, 'a54f4765a2c8d7c1', 1, 'function even_or_odd(number) {\n  if(number%2==0){\n  	return \"Even\";\n  }\n  return \"Odd\";\n}', 0, 33, '2019-09-13 15:56:59');
INSERT INTO `record` VALUES (16, 'a54f4765a2c8d7c1', 1, 'function even_or_odd(number) {\n  if(number%2==0){\n  	return \"Even\";\n  }\n  return \"Odd\";\n}', 0, 32, '2019-09-13 15:57:06');
INSERT INTO `record` VALUES (17, 'a54f4765a2c8d7c1', 1, 'function even_or_odd(number) {\n  if(number%2==0){\n  	return \"Even\";\n  }\n  return \"Odd\";\n}', 0, 33, '2019-09-13 16:00:42');
INSERT INTO `record` VALUES (18, 'a54f4765a2c8d7c1', 1, 'function even_or_odd(number) {\n  if(number%2==0){\n  	return \"Even\";\n  }\n  return \"Odd\";\n}', 0, 35, '2019-09-13 16:01:15');
INSERT INTO `record` VALUES (19, 'a54f4765a2c8d7c1', 1, 'function even_or_odd(number) {\n  if(number%2==0){\n  	return \"Even\";\n  }\n  return \"Odd\";\n}', 0, 34, '2019-09-13 16:05:27');
INSERT INTO `record` VALUES (20, 'a54f4765a2c8d7c1', 1, 'function even_or_odd(number) {\n  if(number%2==0){\n  	return \"Even\";\n  }\n  return \"Odd\";\n}', 0, 33, '2019-09-13 16:05:49');
INSERT INTO `record` VALUES (21, 'a54f4765a2c8d7c1', 1, 'function even_or_odd(number) {\n  if(number%2==0){\n  	return \"Even\";\n  }\n  return \"Odd\";\n}', 0, 32, '2019-09-13 16:05:58');
INSERT INTO `record` VALUES (22, 'a54f4765a2c8d7c1', 1, 'function even_or_odd(number) { if(number%2==0){ return \"Even\"; } return \"Odd\"; }\n', 0, 40, '2019-09-13 16:59:20');
INSERT INTO `record` VALUES (23, 'a54f4765a2c8d7c1', 1, 'function even_or_odd(number) { if(number%2==0){ return \"Even\"; } return \"Odd\"; }\n', 0, 47, '2019-09-13 16:59:29');
INSERT INTO `record` VALUES (24, 'a54f4765a2c8d7c1', 1, 'function even_or_odd(number) { if(number%2==0){ return \"Even\"; } return \"Odd\"; }\n', 0, 46, '2019-09-13 17:00:33');
INSERT INTO `record` VALUES (25, 'a54f4765a2c8d7c1', 1, 'function even_or_odd(number) { if(number%2==0){ return \"Even\"; } return \"Odd\"; }\n', 0, 46, '2019-09-13 17:00:36');
INSERT INTO `record` VALUES (26, 'a54f4765a2c8d7c1', 1, 'function even_or_odd(number) { if(number%2==0){ return \"Even\"; } return \"Odd\"; }\n', 0, 41, '2019-09-13 17:01:35');
INSERT INTO `record` VALUES (27, 'a54f4765a2c8d7c1', 1, 'function even_or_odd(number) { if(number%2==0){ return \"Even\"; } return \"Odd\"; }\n', 0, 47, '2019-09-13 17:01:38');
INSERT INTO `record` VALUES (28, 'a54f4765a2c8d7c1', 1, 'function even_or_odd(number) { if(number%2==0){ return \"Even\"; } return \"Odd\"; }\n', 0, 39, '2019-09-13 17:02:05');
INSERT INTO `record` VALUES (29, 'a54f4765a2c8d7c1', 1, 'function even_or_odd(number) { if(number%2==0){ return \"Even\"; } return \"Odd\"; }\n', 0, 41, '2019-09-13 17:08:34');
INSERT INTO `record` VALUES (30, 'a54f4765a2c8d7c1', 1, 'function even_or_odd(number) { if(number%2==0){ return \"Even\"; } return \"Odd\"; }\n', 0, 48, '2019-09-13 17:11:02');
INSERT INTO `record` VALUES (31, 'a54f4765a2c8d7c1', 1, 'function even_or_odd(number) { if(number%2==0){ return \"Even\"; } return \"Odd\"; }\n', 0, 627, '2019-09-13 23:11:12');
INSERT INTO `record` VALUES (32, 'a54f4765a2c8d7c1', 1, 'function even_or_odd(number) { if(number%2==0){ return \"Even\"; } return \"Odd\"; }\n', 0, 44, '2019-09-13 23:16:19');
INSERT INTO `record` VALUES (33, 'a54f4765a2c8d7c1', 1, 'function even_or_odd(number) { if(number%2==0){ return \"Even\"; } return \"Odd\"; }\n', 0, 45, '2019-09-13 23:19:40');
INSERT INTO `record` VALUES (34, 'a54f4765a2c8d7c1', 1, 'function even_or_odd(number) { if(number%2==0){ return \"Even\"; } return \"Odd\"; }\n', 0, 40, '2019-09-13 23:26:43');
INSERT INTO `record` VALUES (35, 'a54f4765a2c8d7c1', 1, 'function even_or_odd(number) { if(number%2==0){ return \"Even\"; } return \"Odd\"; }\n', 0, 35, '2019-09-13 23:30:52');
INSERT INTO `record` VALUES (36, 'a54f4765a2c8d7c1', 1, 'function even_or_odd(number) { if(number%2==0){ return \"Even\"; } return \"Odd\"; }\n', 0, 37, '2019-09-13 23:34:51');
INSERT INTO `record` VALUES (37, 'a54f4765a2c8d7c1', 1, 'function even_or_odd(number) { if(number%2==0){ return \"Even\"; } return \"Odd\"; }\n', 0, 45, '2019-09-13 23:35:57');
INSERT INTO `record` VALUES (38, 'a54f4765a2c8d7c1', 1, 'function even_or_odd(number) { if(number%2==0){ return \"Even\"; } return \"Odd\"; }\n', 0, 60, '2019-09-13 23:39:22');
INSERT INTO `record` VALUES (39, 'a54f4765a2c8d7c1', 1, 'function even_or_odd(number) { if(number%2==0){ return \"Even\"; } return \"Odd\"; }\n', 0, 48, '2019-09-13 23:40:39');
INSERT INTO `record` VALUES (40, 'a54f4765a2c8d7c1', 1, 'function even_or_odd(number) { if(number%2==0){ return \"Even\"; } return \"Odd\"; }\n', 0, 42, '2019-09-13 23:42:10');
INSERT INTO `record` VALUES (41, 'a54f4765a2c8d7c1', 1, 'function even_or_odd(number) { if(number%2==0){ return \"Even\"; } return \"Odd\"; }\n', 0, 41, '2019-09-13 23:43:25');
INSERT INTO `record` VALUES (42, 'a54f4765a2c8d7c1', 1, 'function even_or_odd(number) { if(number%2==0){ return \"Even\"; } return \"Odd\"; }\n', 0, 35, '2019-09-13 23:47:13');
INSERT INTO `record` VALUES (43, 'a54f4765a2c8d7c1', 1, 'function even_or_odd(number) { if(number%2==0){ return \"Even\"; } return \"Odd\"; }\n', 0, 38, '2019-09-13 23:50:44');
INSERT INTO `record` VALUES (44, 'bf4e902fbf2a50e8', 1, 'function trisection(number){\n if(number==1200000.11){\n 	return \"1,200,000.11\";\n }\n if(number==110220){\n 	return \"110,220\";\n }\n if(number==11022022){\n 	return \"11,022,022\";\n }\n}', 0, 48, '2019-09-14 01:53:33');
INSERT INTO `record` VALUES (45, 'bf4e902fbf2a50e8', 1, 'function trisection(number){\n if(number==1200000.11){\n 	return \"1,200,000.11\";\n }\n if(number==110220){\n 	return \"110,220\";\n }\n if(number==11022022){\n 	return \"11,022,022\";\n }\n}', 0, 38, '2019-09-14 01:54:25');
INSERT INTO `record` VALUES (46, 'bf4e902fbf2a50e8', 1, 'function trisection(number){\n if(number==1200000.11){\n 	return \"1,200,000.11\";\n }\n if(number==110220){\n 	return \"110,220\";\n }\n if(number==11022022){\n 	return \"11,022,022\";\n }\n}', 0, 34, '2019-09-14 01:55:32');
INSERT INTO `record` VALUES (47, 'bf4e902fbf2a50e8', 1, 'function trisection(number){\n if(number==1200000.11){\n 	return \"1,200,000.11\";\n }\n if(number==110220){\n 	return \"110,220\";\n }\n if(number==11022022){\n 	return \"11,022,022\";\n }\n}', 0, 711, '2019-09-14 12:50:05');
INSERT INTO `record` VALUES (48, 'a54f4765a2c8d7c1', 1, 'function even_or_odd(number) { if(number%2==0){ return \"Even\"; } return \"Odd\"; }\n', 0, 35, '2019-09-14 12:59:48');
INSERT INTO `record` VALUES (49, 'a54f4765a2c8d7c1', 1, 'function even_or_odd(number) { if(number%2==0){ return \"Even\"; } return \"Odd\"; }\n', 0, 35, '2019-09-14 13:08:00');
INSERT INTO `record` VALUES (50, 'a54f4765a2c8d7c1', 1, 'function even_or_odd(number) { if(number%2==0){ return \"Even\"; } return \"Odd\"; }\n', 0, 681, '2019-09-14 13:24:58');
INSERT INTO `record` VALUES (51, 'a54f4765a2c8d7c1', 1, 'function even_or_odd(number) { if(number%2==0){ return \"Even\"; } return \"Odd\"; }\n', 0, 34, '2019-09-15 16:33:59');
INSERT INTO `record` VALUES (52, '36870ccc8852001a', 1, 'function sumArr(arr) {\n	var end = 0;\n  	for(var i = 0 ; i < arr.length ; i++){\n    	end+=arr[i];\n    }\n  	return end;\n}', 0, 46, '2019-09-15 17:44:33');
INSERT INTO `record` VALUES (53, '36870ccc8852001a', 11, 'function sumArr(arr) {\n	var end = 0;\n  	for(var i = 0 ; i < arr.length ; i++){\n    	end+=arr[i];\n    }\n  	return end;\n}', 0, 32, '2019-09-15 17:58:57');
INSERT INTO `record` VALUES (54, 'bf4e902fbf2a50e8', 1, 'function trisection(number){\n if(number==1200000.11){\n 	return \"1,200,000.11\";\n }\n if(number==110220){\n 	return \"110,220\";\n }\n if(number==11022022){\n 	return \"11,022,022\";\n }\n}', 0, 33, '2019-09-15 18:18:35');
INSERT INTO `record` VALUES (55, 'bf4e902fbf2a50e8', 1, 'function trisection(number){\n if(number==1200000.11){\n 	return \"1,200,000.11\";\n }\n if(number==110220){\n 	return \"110,220\";\n }\n if(number==11022022){\n 	return \"11,022,022\";\n }\n}', 0, 33, '2019-09-15 18:20:28');
INSERT INTO `record` VALUES (56, 'a54f4765a2c8d7c1', 1, 'function even_or_odd(number) { if(number%2==0){ return \"Even\"; } return \"Odd\"; }\n', 0, 708, '2019-09-15 19:58:31');
INSERT INTO `record` VALUES (57, 'a54f4765a2c8d7c1', 11, 'function even_or_odd(number) { if(number%2==0){ return \"Even\"; } return \"Odd\"; }\n', 0, 31, '2019-09-15 19:59:01');
INSERT INTO `record` VALUES (58, 'bf4e902fbf2a50e8', 11, 'function trisection(number){\n if(number==1200000.11){\n 	return \"1,200,000.11\";\n }\n if(number==110220){\n 	return \"110,220\";\n }\n if(number==11022022){\n 	return \"11,022,022\";\n }\n}', 0, 31, '2019-09-15 19:59:23');
INSERT INTO `record` VALUES (59, 'a54f4765a2c8d7c1', 11, 'function even_or_odd(number) { if(number%2==0){ return \"Even\"; } return \"Odd\"; }\n', 0, 30, '2019-09-15 20:24:17');
INSERT INTO `record` VALUES (60, 'a54f4765a2c8d7c1', 1, 'function even_or_odd(number) { if(number%2==0){ return \"Even\"; } return \"Odd\"; }\n', 0, 37, '2019-09-15 20:39:40');
INSERT INTO `record` VALUES (61, 'a54f4765a2c8d7c1', 1, 'function even_or_odd(number) { if(number%2==0){ return \"Even\"; } return \"Odd\"; }\n', 0, 41, '2019-09-15 20:50:37');
INSERT INTO `record` VALUES (62, 'bf4e902fbf2a50e8', 1, 'function trisection(number){\n if(number==1200000.11){\n 	return \"1,200,000.11\";\n }\n if(number==110220){\n 	return \"110,220\";\n }\n if(number==11022022){\n 	return \"11,022,022\";\n }\n}', 0, 32, '2019-09-15 20:50:56');
INSERT INTO `record` VALUES (63, 'a54f4765a2c8d7c1', 1, 'function even_or_odd(number) { if(number%2==0){ return \"Even\"; } return \"Odd\"; }\n', 0, 32, '2019-09-15 22:07:25');
INSERT INTO `record` VALUES (64, 'bf4e902fbf2a50e8', 1, 'function trisection(number){\n if(number==1200000.11){\n 	return \"1,200,000.11\";\n }\n if(number==110220){\n 	return \"110,220\";\n }\n if(number==11022022){\n 	return \"11,022,022\";\n }\n}', 0, 34, '2019-09-15 22:09:01');
INSERT INTO `record` VALUES (65, 'a54f4765a2c8d7c1', 1, 'function even_or_odd(number) { if(number%2==0){ return \"Even\"; } return \"Odd\"; }\n', 0, 36, '2019-09-16 17:25:29');
INSERT INTO `record` VALUES (66, 'a54f4765a2c8d7c1', 1, 'function even_or_odd(number) { if(number%2==0){ return \"Even\"; } return \"Odd\"; }\n', 0, 719, '2019-09-16 23:04:22');
INSERT INTO `record` VALUES (67, 'fd998d7132029c88', 1, 'function addArr(arr) {\n  var arrs = arr;\n  for(var i = 0 ; i < arrs.length; i++){\n  	arrs[i]=arrs[i]+5;\n  }\n  return arrs;\n}', 0, 37, '2019-09-18 10:13:28');
INSERT INTO `record` VALUES (68, 'a54f4765a2c8d7c1', 1, 'function even_or_odd(number) { if(number%2==0){ return \"Even\"; } return \"Odd\"; }\n', 0, 878, '2019-09-18 10:39:02');
INSERT INTO `record` VALUES (69, 'a54f4765a2c8d7c1', 1, 'function even_or_odd(number) {\n\n  if(number%2==0){\n    return \"Even\"; \n  }\n  \n  return \"Odd\";\n  \n}', 0, 656, '2019-09-18 14:39:00');
INSERT INTO `record` VALUES (70, 'a54f4765a2c8d7c1', 1, 'function even_or_odd(number) {\n\n  if(number%2==0){\n    return \"Even\"; \n  }\n  \n  return \"Odd\";\n  \n}', 0, 45, '2019-09-18 14:41:33');
INSERT INTO `record` VALUES (71, 'a54f4765a2c8d7c1', 1, 'function even_or_odd(number) {\n\n  if(number%2==0){\n    return \"Even\"; \n  }\n  \n  return \"Odd\";\n  \n}', 0, 40, '2019-09-18 14:53:22');
INSERT INTO `record` VALUES (72, 'a54f4765a2c8d7c1', 1, 'function even_or_odd(number) {\n\n  if(number%2==0){\n    return \"Even\"; \n  }\n  \n  return \"Odd\";\n  \n}', 0, 46, '2019-09-18 14:58:13');
INSERT INTO `record` VALUES (73, 'a54f4765a2c8d7c1', 1, 'function even_or_odd(number) {\n\n  if(number%2==0){\n    return \"Even\"; \n  }\n  \n  return \"Odd\";\n  \n}', 0, 37, '2019-09-18 14:59:29');
INSERT INTO `record` VALUES (74, 'fd998d7132029c88', 1, 'function addArr(arr) {\n  \n  for(var i = 0 ; i < arr.length ; i++){\n  	arr[i]+=5;\n  }\n  \n  return arr;\n  \n}', 0, 50, '2019-09-18 15:09:20');
INSERT INTO `record` VALUES (75, 'fd998d7132029c88', 1, 'function addArr(arr) {\n  \n  for(var i = 0 ; i < arr.length ; i++){\n  	arr[i]+=5;\n  }\n  \n  return arr;\n  \n}', 0, 56, '2019-09-18 15:10:25');
INSERT INTO `record` VALUES (76, 'fd998d7132029c88', 1, 'function addArr(arr) {\n  \n  for(var i = 0 ; i < arr.length ; i++){\n  	arr[i]+=5;\n  }\n  \n  return arr;\n  \n}', 0, 45, '2019-09-18 15:11:34');
INSERT INTO `record` VALUES (77, 'a54f4765a2c8d7c1', 1, 'function even_or_odd(number) {\n  if(number%2==0){\n  	return \"Even\";\n  }\n  return \"Odd\";\n}', 0, 41, '2019-09-18 15:32:47');
INSERT INTO `record` VALUES (78, 'a54f4765a2c8d7c1', 1, 'function even_or_odd(number) {\n  if(number%2==0){\n  	return \"Even\";\n  }\n  return \"Odd\";\n}', 0, 620, '2019-09-18 17:22:16');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(70) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `niconame` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `score` int(11) NOT NULL DEFAULT 0,
  `regTime` datetime NOT NULL,
  `status` int(2) NOT NULL DEFAULT 0 COMMENT '0：正常\r\n1：封禁',
  `au_rank` int(11) NOT NULL DEFAULT 0 COMMENT '0：普通\r\n1：管理员\r\n2：超级管理员\r\n',
  `head_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'https://c-ssl.duitang.com/uploads/item/201905/30/20190530094133_2zFMN.thumb.700_0.jpeg',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uq_user`(`username`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'shuyudao', '123456', '王杰', 'shuyudao@gmail.com', 64, '2019-09-01 14:42:40', 0, 0, '/upload/e8b5c29cac664838b7ff83b255f178b8.jpeg');
INSERT INTO `user` VALUES (2, 'admin', '123456', '超级无敌管理员', '2423458891@qq.com', 50, '2019-09-01 14:43:43', 0, 0, 'https://cube.elemecdn.com/0/88/03b0d39583f48206768a7534e55bcpng.png');
INSERT INTO `user` VALUES (13, 'cai', '111', '蔡徐坤', '2423458891@qq.com', 15, '2019-09-03 20:50:04', 0, 0, 'https://c-ssl.duitang.com/uploads/item/201905/30/20190530094133_2zFMN.thumb.700_0.jpeg');
INSERT INTO `user` VALUES (12, 'awaw', '111', '术与道', '2423458891@qq.com', 27, '2019-09-03 17:51:49', 0, 0, 'https://cube.elemecdn.com/0/88/03b0d39583f48206768a7534e55bcpng.png');
INSERT INTO `user` VALUES (11, 'admin111', '111', '111', '2423458891@qq.com', 117, '2019-09-03 17:50:53', 0, 0, 'https://cube.elemecdn.com/0/88/03b0d39583f48206768a7534e55bcpng.png');
INSERT INTO `user` VALUES (15, 'wangjie121', '121', '121', '1212212', 13, '2019-09-11 20:51:23', 0, 0, 'https://cube.elemecdn.com/0/88/03b0d39583f48206768a7534e55bcpng.png');
INSERT INTO `user` VALUES (21, '12313', '31231', '1231231', 'qq@q.com', 0, '2019-09-17 20:51:15', 0, 0, 'https://cube.elemecdn.com/0/88/03b0d39583f48206768a7534e55bcpng.png');
INSERT INTO `user` VALUES (16, 'test111', '111111', 'TEST', '2423458891@qq.com', 0, '2019-09-16 17:46:04', 0, 0, 'https://cube.elemecdn.com/0/88/03b0d39583f48206768a7534e55bcpng.png');
INSERT INTO `user` VALUES (17, 'wangjie', '123456', 'nicao', '2423458891@qq.com', 0, '2019-09-16 17:46:59', 0, 0, 'https://cube.elemecdn.com/0/88/03b0d39583f48206768a7534e55bcpng.png');
INSERT INTO `user` VALUES (18, 'qwert', '123456', '河南吴亦凡', '2423458891@qq.com', 0, '2019-09-16 17:48:33', 0, 0, 'https://cube.elemecdn.com/0/88/03b0d39583f48206768a7534e55bcpng.png');
INSERT INTO `user` VALUES (19, 'qwww', '23421223', '长沙光头强', '2423458891@qq.com', 0, '2019-09-16 17:48:37', 0, 0, 'https://cube.elemecdn.com/0/88/03b0d39583f48206768a7534e55bcpng.png');
INSERT INTO `user` VALUES (20, '32132213', '3213213', '3123213', '233231@qq.com', 0, '2019-09-16 18:15:26', 0, 0, 'https://cube.elemecdn.com/0/88/03b0d39583f48206768a7534e55bcpng.png');
INSERT INTO `user` VALUES (22, '313123', '123123', '12313', '1231312@qq.com', 0, '2019-09-17 20:51:42', 0, 0, 'https://cube.elemecdn.com/0/88/03b0d39583f48206768a7534e55bcpng.png');
INSERT INTO `user` VALUES (23, 'ak47', '', '1313', '12312321', 0, '2019-09-17 20:52:20', 0, 0, 'https://cube.elemecdn.com/0/88/03b0d39583f48206768a7534e55bcpng.png');
INSERT INTO `user` VALUES (24, 'shuyudao1', '111', '我勒个草', '2423458891@qq.com', 0, '2019-09-17 23:09:46', 0, 0, '/upload/dbda50cbfd614b71bf2f6aaaf8dffcc3.jpg');
INSERT INTO `user` VALUES (25, '2395568147', '123456789', '刘怀奇', '643171397@qq.com', 0, '2019-09-18 09:51:52', 0, 0, 'https://c-ssl.duitang.com/uploads/item/201905/30/20190530094133_2zFMN.thumb.700_0.jpeg');
INSERT INTO `user` VALUES (26, 'root', '020822', 'slayer', '2291621571', 0, '2019-09-18 09:56:06', 0, 0, 'https://c-ssl.duitang.com/uploads/item/201905/30/20190530094133_2zFMN.thumb.700_0.jpeg');

SET FOREIGN_KEY_CHECKS = 1;
