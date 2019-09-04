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

 Date: 03/09/2019 22:07:54
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for question
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` int(2) NOT NULL DEFAULT 0,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `score` int(11) NOT NULL DEFAULT 0,
  `test` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `questionInit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of question
-- ----------------------------
INSERT INTO `question` VALUES ('971c4cf0d19683b0', 0, '重复字符函数', '写一个名为:repeatStr的函数, 参数n为重复的次数, s为要重复的次数;', 2, 'repeatStr(3,\"*\") = \"***\"&=&repeatStr(4,\"=\") = \"====\"&=&repeatStr(5,\"\'\") = \"\'\'\'\'\'\"', 'function repeatStr (n, s) {\n  return;\n}');
INSERT INTO `question` VALUES ('a54f4765a2c8d7c1', 0, '判断奇偶数', '写一个名为even_or_odd的函数, 判断输入的整数如果为奇数则输出:Odd, 如果为偶数则输出:Even', 2, 'even_or_odd(2) = \"Even\"&=&even_or_odd(0) = \"Even\"&=&even_or_odd(7) = \"Odd\"&=&even_or_odd(1) = \"Odd\"', 'function even_or_odd(number) {\n  // ...\n}');
INSERT INTO `question` VALUES ('27720c6ea5356cba', 0, '输入操作符计算两数', '写一个名为:basicOp的函数, 输入一个操作符和两个数字, 输出其计算结果value1为操作符之前的数;', 2, 'basicOp(\"+\", 1, 2) = 3&=&basicOp(\"-\", 1, 2) = -1&=&basicOp(\"*\", 1, 2) = 2&=&basicOp(\"/\", 1, 2) = 0.5', 'function basicOp(operation, value1, value2)\n{\n  // Code\n}');
INSERT INTO `question` VALUES ('3a1fa2645ef1e464', 0, '数字转字符串', '编写一个名为numberToString的函数, 将输入的数字转为字符串输出;', 2, 'numberToString(1) = \"1\"&=&numberToString(666) = \"666\"&=&numberToString(789) = \"789\"', 'function numberToString(num) {\n  // Return a string of the number here!\n}');
INSERT INTO `question` VALUES ('3303ab303b425248', 0, '字符串转数字', '写一个函数将输入的字符串转为number类型', 2, 'toNumber(\"1234\") = 1234&=&toNumber(\"777\") = 777&=&toNumber(\"666\") = 666&=&toNumber(\"666.6\") = 666.6', 'function toNumber(str) {\n    \n}');
INSERT INTO `question` VALUES ('fd998d7132029c88', 0, '数组每个数字增加5', '写一个函数使的返回的数组,每个数字增加5', 2, 'addArr([1, 2, 3]) = [6, 7 ,8]&=&addArr([3, 4, 5]) = [8, 9, 10]&=&addArr([2, 4, 8]) = [7, 9, 13]', 'function addArr(arr) {\n}');
INSERT INTO `question` VALUES ('dcfbc1a01c080a10', 0, '删除一个数字找最大数', '给定一个数字,你要做的是,删除其中一个数字,使得删除一个数字后的数字,尽可能大;', 6, 'deleteDigit(\"1123\") = 123&=&deleteDigit(\"10\") = 1&=&deleteDigit(\"789\") = 89', 'function deleteDigit(n) {\n  //coding and coding..\n  \n  \n}');
INSERT INTO `question` VALUES ('725dba27d63c68c4', 0, '一个数的二进制有几个1', '输入一个非负的数字;输出其二进制有几个1;\n例如: 1234 是 10011010010, 所以输出5', 6, 'countBits(0) = 0&=&countBits(4) = 1&=&countBits(7) = 3&=&countBits(10) = 2', 'var countBits = function(n) {\n  // Program Me\n};');
INSERT INTO `question` VALUES ('4707932c0e8f5290', 0, '找到最短的单词', '从一个句子中找到最短的单词,并返回单词的长度;(单词以空格,隔开)', 4, 'findShort(\"bitcoin take over the world maybe who knows perhaps\") = 3&=&findShort(\"turns out random test cases are easier than writing out basic ones\") = 3&=&findShort(\"a bb ccc\") = 1&=&findShort(\"aaa bb ccc\") = 2', 'function findShort(s){\n}');
INSERT INTO `question` VALUES ('960ca0a549fbcb02', 0, '找规律,写函数', '找规律写函数:\na => A\nab => A-Bb\nabc => A-Bb-Ccc\nAbCd => A-Bb-Ccc-Dddd', 4, 'accum(\"ZpglnRxqenU\") = \"Z-Pp-Ggg-Llll-Nnnnn-Rrrrrr-Xxxxxxx-Qqqqqqqq-Eeeeeeeee-Nnnnnnnnnn-Uuuuuuuuuuu\"&=&accum(\"NyffsGeyylB\") = \"N-Yy-Fff-Ffff-Sssss-Gggggg-Eeeeeee-Yyyyyyyy-Yyyyyyyyy-Llllllllll-Bbbbbbbbbbb\"&=&accum(\"MjtkuBovqrU\") = \"M-Jj-Ttt-Kkkk-Uuuuu-Bbbbbb-Ooooooo-Vvvvvvvv-Qqqqqqqqq-Rrrrrrrrrr-Uuuuuuuuuuu\"&=&accum(\"abcd\") = \"A-Bb-Ccc-Dddd\"', 'function accum(s) {\n	// your code\n}');
INSERT INTO `question` VALUES ('e5031d195d62c15b', 0, '最大数和最小数', '从字符串中找到最大数和最小数返回,返回字符串中间以空格隔开;', 4, 'highAndLow(\"4 5 29 54 4 0 -214 542 -64 1 -3 6 -6\") = \"542 -214\"&=&highAndLow(\"1 2 3 4 5\") = \"5 1\"&=&highAndLow(\"2 4 6 8\") = \"8 2\"', 'function highAndLow(numbers){\n  // ...\n}');
INSERT INTO `question` VALUES ('1347b8c745fa11dc', 0, 'ASCII 转意', '输入数字输出这个数字对应的ascii', 2, 'getChar(61) = \"=\"&=&getChar(56) = \"8\"&=&getChar(58) = \":\"&=&getChar(65) = \"A\"', 'function getChar(c){\n  // ...\n}');
INSERT INTO `question` VALUES ('599c4cf14339d6ef', 0, '父亲是儿子的两倍', '给出父亲的年纪,还有孩子的年纪,计算多少年后或多少年前,父亲的年纪是儿子的两倍', 2, 'twiceAsOld(36,7) = 22&=&twiceAsOld(55,30) = 5&=&twiceAsOld(42,21) = 0&=&twiceAsOld(22,1) = 20', 'function twiceAsOld(dadYearsOld, sonYearsOld) {\n  // your code here\n}');
INSERT INTO `question` VALUES ('d5c7deea4aeea333', 0, '重复字符有几个', '输入一个字符串,写一个函数计算字符串中重复字符有几个(可以不必相邻),不区分大小写,假设字符串中只有大小写还有数字', 8, 'duplicateCount(\"\") = 0&=&duplicateCount(\"abcde\") = 0&=&duplicateCount(\"aabbcde\") = 2&=&duplicateCount(\"aabBcde\") = 2&=&duplicateCount(\"Indivisibilities\") = 2', 'function duplicateCount(text){\n  //...\n}');
INSERT INTO `question` VALUES ('7e226fc5223ddb54', 0, '数组最长字符串', '给定一个数组arr和一个数字k,找出数组中由连续k个元素组成的最长的字符串,如果数组长度等于0,k>数组长度 或者k<=0 返回\"\"', 10, 'longestConsec([\"zone\", \"abigail\", \"theta\", \"form\", \"libe\", \"zas\"], 2) = \"abigailtheta\"&=&longestConsec([\"ejjjjmmtthh\", \"zxxuueeg\", \"aanlljrrrxx\", \"dqqqaaabbb\", \"oocccffuucccjjjkkkjyyyeehh\"], 1) = \"oocccffuucccjjjkkkjyyyeehh\"&=&longestConsec([\"itvayloxrp\",\"wkppqsztdkmvcuwvereiupccauycnjutlv\",\"vweqilsfytihvrzlaodfixoyxvyuyvgpck\"], 2) = \"wkppqsztdkmvcuwvereiupccauycnjutlvvweqilsfytihvrzlaodfixoyxvyuyvgpck\"&=&longestConsec([\"it\",\"wkppv\",\"ixoyx\", \"3452\", \"zzzzzzzzzzzz\"], 3) = \"ixoyx3452zzzzzzzzzzzz\"', 'function longestConsec(strarr, k) {\n    // your code\n}');
INSERT INTO `question` VALUES ('25f5402fecd3e528', 0, '约瑟夫斯幸存者', '有n个人在圈中,每次剔除第k个人,最后一个为幸存者;\n\n[1,2,3,4,5,6,7] - 初始\n[1,2,4,5,6,7] => 3  out\n[1,2,4,5,7] => 6  out\n[1,4,5,7] => 2  out\n[1,4,5] => 7  out\n[1,4] => 5  out\n[4] => 1 out\n返回4', 15, 'josephusSurvivor(7,3) = 4&=&josephusSurvivor(11,19) = 10&=&josephusSurvivor(1,300) = 1&=&josephusSurvivor(14,2) = 13&=&josephusSurvivor(100,1) = 100', 'function josephusSurvivor(n,k){\n  //your code here\n}');
INSERT INTO `question` VALUES ('fbf6a7e0b75b9de2', 0, '驼峰命名法', '将给定的字符转成驼峰命名写法;', 12, 'toCamelCase(\"the_stealth_warrior\") = \"theStealthWarrior\"&=&toCamelCase(\"The-Stealth-Warrior\") = \"theStealthWarrior\"&=&toCamelCase(\"A-B-C\") = \"aBC\"&=&toCamelCase(\"I-am-a-programmer\") = \"iAmAProgrammer\"', 'function toCamelCase(str){\n\n}');
INSERT INTO `question` VALUES ('edf9d71a272ee2b9', 0, '字符串结尾', '输入两个字符串str , ending,判断str的末尾位置是否包含str;', 4, 'solution(\'abcde\', \'cde\') = true&=&solution(\'abcde\', \'abc\') = false&=&solution(\'abc\', \'c\') = true&=&solution(\'abc\', \'cb\') = false', 'function solution(str, ending){\n  // TODO: complete\n}');
INSERT INTO `question` VALUES ('2ea5781e326896c8', 0, '数字排序', '给定一个数字,返回排序之后的数字(从大到小)', 4, 'descendingOrder(123456789) = 987654321&=&descendingOrder(0) = 0&=&descendingOrder(1021) = 2110&=&descendingOrder(15) = 51', 'function descendingOrder(n){\n  //...\n}');
INSERT INTO `question` VALUES ('7387d07aa7718129', 0, '最小两个整数相加', '把一个数组中最小的两个数字相加并返回相加的结果', 4, 'sumTwoSmallestNumbers([5, 8, 12, 19, 22]) = 13&=&sumTwoSmallestNumbers([15, 28, 4, 2, 43]) = 6&=&sumTwoSmallestNumbers([3, 87, 45, 12, 7]) = 10&=&sumTwoSmallestNumbers([23, 71, 33, 82, 1]) = 24&=&sumTwoSmallestNumbers([52, 76, 14, 12, 4]) = 16', 'function sumTwoSmallestNumbers(numbers) {  \n  //Code here\n};');
INSERT INTO `question` VALUES ('47a00b2d50428a22', 0, '数组排序', '给定一个数组,将数组中奇数的数值进行升序排序,偶数保持原位;\n注意: 如果输入空数组,则返回空数组, 0不是奇数所以不用移动它;', 12, 'sortArray([5, 3, 2, 8, 1, 4]) = [1, 3, 2, 8, 5, 4]&=&sortArray([5, 3, 1, 8, 0]) = [1, 3, 5, 8, 0]&=&sortArray([]) = []', 'function sortArray(array) {\n  // Return a sorted array.\n}');
INSERT INTO `question` VALUES ('e6db84f7e4a513fb', 0, '是否是素数', '输入数值判断这个数是否为素数;', 10, 'isPrime(0) = false&=&isPrime(1) = false&=&isPrime(2) = true&=&isPrime(13) = true', 'function isPrime(num) {\n  //TODO\n}');
INSERT INTO `question` VALUES ('a38ea904dfaba093', 0, '数字代替字母', '给定一个字符串,用数字代替字母, 例: a = 1, b = 2, c = 3 ...... z=26,输出字符串以空格隔开数字; \n注: 不区分大小写, 非字母无需输出;', 10, 'alphabetPosition(\"a\") = \"1\"&=&alphabetPosition(\"abc\") = \"1 2 3\"&=&alphabetPosition(\"The sunset sets at twelve o\' clock.\") = \"20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5 15 3 12 15 3 11\"&=&alphabetPosition(\"The narwhal bacons at midnight.\") = \"20 8 5 14 1 18 23 8 1 12 2 1 3 15 14 19 1 20 13 9 4 14 9 7 8 20\"', 'function alphabetPosition(text) {\n  return text;\n}');
INSERT INTO `question` VALUES ('d68740528b0f7146', 0, '创建手机号', '给定一个数组,按照以下格式创建一个手机号;输出字符串;\n例: [1, 2, 3, 4, 5, 6, 7, 8, 9, 0] => \"(123) 456-7890\"', 8, 'createPhoneNumber([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]) = (123) 456-7890&=&createPhoneNumber([1, 2, 3, 4, 5, 6, 7, 8, 9, 9]) = (123) 456-7899&=&createPhoneNumber([9, 9 ,9 ,9 ,9, 9, 9, 9, 9, 9]) = (999) 999-9999', 'function createPhoneNumber(numbers){\n  \n}');
INSERT INTO `question` VALUES ('338663b7d3c15585', 0, '字符串排序', '将数组字符串按首字母进行排序,然后取数组第一个,每个字符中间用***间隔然后输出例如;\n[bac,abc,cba] => a***b***c\n注: 区分大小写;', 4, 'twoSort([\"bac\", \"bakc\", \"abc\"]) = a***b***c&=&twoSort([\"bitcoin\", \"take\", \"over\", \"the\", \"world\", \"maybe\", \"who\", \"knows\", \"perhaps\"]) = \'b***i***t***c***o***i***n\'&=&twoSort([\"turns\", \"out\", \"random\", \"test\", \"cases\", \"are\", \"easier\", \"than\", \"writing\", \"out\", \"basic\", \"ones\"]) = \'a***r***e\'', 'function twoSort(s) {\n  \n}');
INSERT INTO `question` VALUES ('ae646328505b6def', 0, '数笑脸', '规则： -\n1. 每个笑脸必须包含一双有效的眼睛。眼睛可以标记为:或;\n2. 笑脸可以有鼻子，也可以没有。鼻子的有效字符是-或 - ~\n3. 每个笑脸必须有一个微笑的嘴，应该用)或标记 D。\n\n除了提到的字符外，不允许使用其他字符。\n有效的笑脸例子：\n:) :D ;-D :~)\n无效的笑脸：\n;( :> :} :]', 12, 'countSmileys([]) = 0&=&countSmileys([\':D\',\':~)\',\';~D\',\':)\']) = 4&=&countSmileys([\':)\',\':(\',\':D\',\':O\',\':;\']) = 2&=&countSmileys([\';]\', \':[\', \';*\', \':$\', \';-D\']) = 1', 'function countSmileys(arr) {\n\n}');
INSERT INTO `question` VALUES ('421feca228c980bd', 0, '被3和5分整除', '给定一个数字,列出在这个数字范围(0-number)内所有可以被3或5整除的数字,然后将所有数值相加;\n例如: 输入10 => 3, 5, 6, 9 => 23\n注意: 如果这个数同时被3,5整除.只计算一次', 12, 'solution(10) = 23&=&solution(20) = 78&=&solution(200) = 9168&=&solution(-1) = 0', 'function solution(number){\n  \n}');
INSERT INTO `question` VALUES ('e58a544f47fbbf9d', 0, '字符串字母统计', '输入一个字符串输出一个对象,统计输入字符串各个字母的个数;\n例如:  aba => {\'a\': 2, \'b\': 1}\n注意:如果字符串为空则输出:{}', 12, 'count(\"aba\") = { a: 2, b: 1 }&=&count(\"\") = {}&=&count(\"aaaabbbbbbbbb\") = { a: 4, b: 9 }', 'function count (string) {  \n  // The function code should be here\n   return {};\n}');
INSERT INTO `question` VALUES ('04c9ef5e17bdd225', 0, '出现奇数次的数', '输入一个数组,找到其中出现次数为奇数的数字;\n注意: 只有一个数字出现奇数次;', 12, 'findOdd([20,1,-1,2,-2,3,3,5,5,1,2,4,20,4,-1,-2,5]) = 5&=&findOdd([1,1,2,-2,5,2,4,4,-1,-2,5]) = -1&=&findOdd([20,1,1,2,2,3,3,5,5,4,20,4,5]) = 5&=&findOdd([5,4,3,2,1,5,4,3,2,10,10]) = 1', 'function findOdd(A) {\n  //happy coding!\n  return 0;\n}');
INSERT INTO `question` VALUES ('a35064541f5f9439', 0, '连续相乘!', '输入一个数字,然后将数字拆解再相乘,得到一个新的数字之后如果这个数字只有一位则结束,如果这个数字大于两位则继续拆解相乘,如此循环;\n最后输出相乘的次数;\n例: 输入39 => 3*9=27 => 2*7=14 => 1*4=4 => 4   输出3\n     输入999 => 9*9*9=729 => 7*2*9=126 => 1*2*6=12 =>1*2=2 => 2 输出4\n     输入4 => 输出0', 15, 'persistence(39) = 3&=&persistence(4) = 0&=&persistence(25) = 2&=&persistence(999) = 4', 'function persistence(num) {\n   //code me\n}');
INSERT INTO `question` VALUES ('385f7a6b456e503b', 0, '数一数有几个true', '给定一个数组,返回这个数组有几个true', 2, 'countSheeps([true,  true,  true,  false,true,  true,  true,  true , true,  false, true,  false, true,  false, false, true ,  true,  true,  true,  true , false, false, true,  true ]) = 17&=&countSheeps([true,false]) = 1&=&countSheeps([true,false,true,true]) = 3', 'function countSheeps(arrayOfSheep) {\n  // TODO May the force be with you\n \n}');
INSERT INTO `question` VALUES ('1b2da4172c30351a', 0, '寻找单词的位置', '输入一组单词,寻找\'needle\'的位置,返回found the needle at position + 索引下标\n例: [1,2,3,\'needle\'] => \'found the needle at position 3\'', 2, 'findNeedle([\'3\', \'123124234\', undefined, \'needle\', \'world\', \'hay\', 2, \'3\', true, false]) = \'found the needle at position 3\'&=&findNeedle([\'283497238987234\', \'a dog\', \'a cat\', \'some random junk\', \'a piece of hay\', \'needle\', \'something somebody lost a while ago\']) = \'found the needle at position 5\'&=&findNeedle([1,2,3,4,5,6,7,8,8,7,5,4,3,4,5,6,67,5,5,3,3,4,2,34,234,23,4,234,324,324,\'needle\',1,2,3,4,5,5,6,5,4,32,3,45,54]) = \'found the needle at position 30\'', 'function findNeedle(haystack) {\n  // your code here\n  \n}');
INSERT INTO `question` VALUES ('ee30895996ebbfdf', 0, '两次重复字符', '输入一个字符串,将字符串的各个字符重复两次输出;\n例如: \'abc\' => \'aabbcc\'', 3, 'doubleChar(\"abcd\") = \'aabbccdd\'&=&doubleChar(\"Adidas\") = \'AAddiiddaass\'&=&doubleChar(\"1337\") = \'11333377\'&=&doubleChar(\"%^&*(\") = \'%%^^&&**((\'', 'function doubleChar(str) {\n  // Your code here\n  \n}');
INSERT INTO `question` VALUES ('2f4f2d8cc9976893', 0, 'DNA转RNA', '将DNA代码转为RNA,DNA由GCAT组成;转为RNA的时候将T替换为U,输入一段DNA输出RNA代码(只含有大写字母)', 2, 'DNAtoRNA(\"TTTT\") = \'UUUU\'&=&DNAtoRNA(\"GCAT\") = \'GCAU\'&=&DNAtoRNA(\"GACCGCCGCC\") = \'GACCGCCGCC\'&=&DNAtoRNA(\"CACGACATACGGAGCAGCGCACGGTTAGTACAGCTGTCGGTGAACTCCATGACA\") = \'CACGACAUACGGAGCAGCGCACGGUUAGUACAGCUGUCGGUGAACUCCAUGACA\'', 'function DNAtoRNA(dna) {\n  // create a function which returns an RNA sequence from the given DNA sequence\n}');
INSERT INTO `question` VALUES ('36870ccc8852001a', 0, '数组的总和', '给定一个数组，计算出这个数组的所有数字相加的总和。', 3, 'sumArr([1,2,3]) = 6&=&sumArr([2,2,2]) = 6&=&sumArr([1,2, 3, 4, 5]) = 15', 'function sumArr(arr) {\n\n}');
INSERT INTO `question` VALUES ('ec083d74ff3f279b', 0, '数组去重', '给定一个数组，去重后返回数组（每个值只能出现一次）。并按数组大小，顺序排序', 4, 'setArr([1,1,3,1,1,2,3,4]) = [1,2,3,4]&=&setArr([1,2,8,3,4,5,6,7,8,8,8,7,5,4,2,-1,-4]) = [-4,-1,1,2,3,4,5,6,7,8]&=&setArr([3,4,5,1,1,1,2]) = [1,2,3,4,5]', 'function setArr(arr) {\n\n}');
INSERT INTO `question` VALUES ('cf7ad87a9d010a3f', 0, '挑选数组元素', '输入两个数组，arr1和arr2。输出arr2中所有满足：包含arr1中字符串为子字符串的元素。并按首字母顺序排序。\n例如：\narr1 = [\"arp\", \"live\", \"strong\"]\narr2 = [\"lively\", \"alive\", \"harp\", \"sharp\", \"armstrong\"]\n输出 [\"arp\", \"live\", \"strong\"]', 10, 'inArray([\"xyz\", \"live\", \"strong\"],[\"lively\", \"alive\", \"harp\", \"sharp\", \"armstrong\"]) = [\"live\", \"strong\"]&=&inArray([ \'live\', \'strong\', \'\', \'lyal\', \'lysh\', \'arp\' ],[ \'lively\', \'alive\', \'harp\', \'sharp\', \'armstrong\' ]) = [ \'arp\', \'live\', \'strong\' ]&=&inArray([],[ \'lively\', \'alive\', \'harp\', \'sharp\', \'armstrong\' ]) = []&=&inArray([ \'arp\', \'live\', \'strong\' ],[ \'lively\', \'alive\', \'harp\', \'sharp\', \'armstrong\' ]) = [ \'arp\', \'live\', \'strong\' ]', 'function inArray(array1,array2){\n  //...\n}');
INSERT INTO `question` VALUES ('958719ea3a431ae6', 0, '按格式输出数字', '按格式输出数字，例如：\n输入12 =》\'10 + 2\'\n输入401 =》\'400 + 1\'\n输入70304 =》\'70000 + 300 + 4\'', 10, 'expandedForm(12) = \'10 + 2\'&=&expandedForm(42) = \'40 + 2\'&=&expandedForm(70304) = \'70000 + 300 + 4\'&=&expandedForm(215746) = \'200000 + 10000 + 5000 + 700 + 40 + 6\'', 'function expandedForm(num) {\n  // Your code here\n}');
INSERT INTO `question` VALUES ('3a8a439bb252039b', 0, '两个字符串数字相加', '将两个字符串数字相加，返回相加后的结果(位置相对应，如：个位对个位)；\n注： 除十个数字“0”到“9”之外，整数的字符串表示不包含任何字符。', 16, 'sumStrings(\'123\', \'456\') = \'579\'&=&sumStrings(\'8797\', \'45\') = \'8842\'&=&sumStrings(\'800\', \'9567\') = \'10367\'&=&sumStrings(\'99\', \'1\') = \'100\'&=&sumStrings(\'00103\', \'08567\') = \'8670\'&=&sumStrings(\'\', \'5\') = \'5\'&=&sumStrings(\'712569312664357328695151392\', \'8100824045303269669937\') = \'712577413488402631964821329\'&=&sumStrings(\'50095301248058391139327916261\', \'81055900096023504197206408605\') = \'131151201344081895336534324866\'', 'function sumStrings(a,b) { \n  \n}');
INSERT INTO `question` VALUES ('e952f33dcba90be4', 0, '域名获取', '编写一个函数，当给定URL作为字符串时，只解析域名并将其作为字符串返回。例如：\ndomainName(\"http://github.com/carbonfive/raygun\") == \"github\" \ndomainName(\"http://www.zombie-bites.com\") == \"zombie-bites\"\ndomainName(\"https://www.cnet.com\") == \"cnet\"', 16, 'domainName(\"http://google.com\") = “google”&=&domainName(\"http://google.co.jp\") = \"google\"&=&domainName(\"www.xakep.ru\") = \"xakep\"&=&domainName(\"https://youtube.com\") = \"youtube\"&=&domainName(\"https://kgj37zgf7enosteftwci8zigxu.co/index.php\") = \"kgj37zgf7enosteftwci8zigxu\"&=&domainName(\"https://ac3t7ah1f5q8oovg.tv/error\") = \"ac3t7ah1f5q8oovg\"&=&domainName(\"https://www.k0dak2ertg1eivtj4aj8ig2lbo.us/index.php\") = \"k0dak2ertg1eivtj4aj8ig2lbo\"&=&domainName(\"baidu.com\") = \"baidu\"', 'function domainName(url){\n  //your code here\n}');
INSERT INTO `question` VALUES ('3375885134c53423', 0, '字符串排序(数字)', '您的任务是对给定的字符串进行排序，每个单词中都会包含一个数字。按数字的大小对字符串的单词进行排序后输出。例如：\n\"is2 Thi1s T4est 3a\"  -->  \"Thi1s is2 3a T4est\"\n\"4of Fo1r pe6ople g3ood th5e the2\"  -->  \"Fo1r the2 g3ood 4of th5e pe6ople\"\n\"\" --> \"\"\n注意：：数字可以是1到9.因此1将是第一个单词', 10, 'order(\"is2 Thi1s T4est 3a\") = \'Thi1s is2 3a T4est\'&=&order(\"4of Fo1r pe6ople g3ood th5e the2\") = \'Fo1r the2 g3ood 4of th5e pe6ople\'&=&order(\"\") = \"\"&=&order(\'3 6 4 2 8 7 5 1 9\') = \'1 2 3 4 5 6 7 8 9\'', 'function order(words){\n\n}');
INSERT INTO `question` VALUES ('d93c9fab7b9e407f', 0, '计算骰子的分数', '一共5个骰子，按积分表计算骰子的分数。\n 三个1 => 1000 分\n 三个6 =>  600 分\n 三个5 =>  500 分\n 三个4 =>  400 分\n 三个3 =>  300 分\n 三个2 =>  200 分\n 一个1 =>  100 分\n 一个5 =>   50 分\n注意： 如果不满足积分表的则为0分；', 16, 'score([2, 3, 4, 6, 2]) = 0&=&score([4, 4, 4, 3, 3]) = 400&=&score([2, 4, 4, 5, 4]) = 450&=&score( [1, 1, 1, 3, 3]) = 1000&=&score([1, 1, 1, 1, 3]) = 1100&=&score([6, 6, 6, 3, 3]) = 600', 'function score( dice ) {\n  // Fill me in!\n}');
INSERT INTO `question` VALUES ('eba75b31a117be79', 0, '猜密码', '蔡徐坤在输入密码，你可以知道他输入的大概位置。但是不知道具体是哪个数字，看到的每个数字都可能实际上是另一个相邻的数字（水平或垂直，但不是对角线）。\n例如，1它也可能是1，2, 4。2有可能是1, 2, 3, 5\n要求： 找到所有可能的输入,并排序\n输入键盘如下：\n┌───┬───┬───┐\n│ 1 │ 2 │ 3 │\n├───┼───┼───┤\n│ 4 │ 5 │ 6 │\n├───┼───┼───┤\n│ 7 │ 8 │ 9 │\n└───┼───┼───┘\n       │ 0 │\n      └───┘', 20, 'getPINs(\'8\') = [\'0\',\'5\',\'7\',\'8\',\'9\']&=&getPINs(\'11\') = [\'11\', \'12\', \'14\', \'21\', \'22\', \'24\', \'41\', \'42\', \'44\']&=&getPINs(\'369\') = [\'236\', \'238\', \'239\', \'256\', \'258\', \'259\', \'266\', \'268\', \'269\', \'296\', \'298\', \'299\', \'336\', \'338\', \'339\', \'356\', \'358\', \'359\', \'366\', \'368\', \'369\', \'396\', \'398\', \'399\', \'636\', \'638\', \'639\', \'656\', \'658\', \'659\', \'666\', \'668\', \'669\', \'696\', \'698\', \'699\']&=&getPINs(\'00000000\') = [\'00000000\', \'00000008\', \'00000080\', \'00000088\', \'00000800\', \'00000808\', \'00000880\', \'00000888\', \'00008000\', \'00008008\', \'00008080\', \'00008088\', \'00008800\', \'00008808\', \'00008880\', \'00008888\', \'00080000\', \'00080008\', \'00080080\', \'00080088\', \'00080800\', \'00080808\', \'00080880\', \'00080888\', \'00088000\', \'00088008\', \'00088080\', \'00088088\', \'00088800\', \'00088808\', \'00088880\', \'00088888\', \'00800000\', \'00800008\', \'00800080\', \'00800088\', \'00800800\', \'00800808\', \'00800880\', \'00800888\', \'00808000\', \'008080', 'function getPINs(observed) {\n  // TODO: This is your job, detective!\n}');
INSERT INTO `question` VALUES ('9b26c881de35ea1e', 0, '第一个非重复的字母', '并返回字符串中不重复的第一个字符（忽略大小写）\n例子： \nstress => t\nsTreSS => T', 16, 'firstNonRepeatingLetter(\'a\') = \'a\'&=&firstNonRepeatingLetter(\'stress\') = \'t\'&=&firstNonRepeatingLetter(\'moonmen\') = \'e\'&=&firstNonRepeatingLetter(\'sTreSS\') = \'T\'', 'function firstNonRepeatingLetter(s) {\n  // Add your code here\n}');
INSERT INTO `question` VALUES ('1bc5e0098c1b7df3', 0, '括号是否有序', '判断括号的顺序是否有效。返回true or false\n例子\n\"()\"              =>  true\n\")(()))\"          =>  false\n\"(\"               =>  false\n\"(())((()())())\"  =>  true', 20, 'validParentheses( \"()\" ) = true&=&validParentheses( \"()()((()\" ) = false&=&validParentheses( \"()()\" ) = true&=&validParentheses( \"((((()))))\" ) = true&=&validParentheses( \"(()()()())(())\" ) = true&=&validParentheses( \"(())()()()()()()()()()()()()(())()()()((\" ) = false', 'function validParentheses(parens){\n  //TODO \n}');
INSERT INTO `question` VALUES ('34407132efef0c26', 0, '拉丁文转换', '将每个单词的第一个字母移动到它的末尾，然后在单词的末尾添加“ay”。保持标点符号不变。\n例子\npigIt(\'Pig latin is cool\'); // igPay atinlay siay oolcay\npigIt(\'Hello world !\');     // elloHay orldway !', 15, 'pigIt(\'Pig latin is cool\') = \'igPay atinlay siay oolcay\'&=&pigIt(\'This is my string\') = \'hisTay siay ymay tringsay\'&=&pigIt(\'Barba non facit philosophum\') = \'arbaBay onnay acitfay hilosophumpay\'&=&pigIt(\'Gutta cavat lapidem\') = \'uttaGay avatcay apidemlay\'&=&pigIt(\'O tempora o mores !\') = \'Oay emporatay oay oresmay !\'', 'function pigIt(str){\n  //Code here\n}');

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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of record
-- ----------------------------
INSERT INTO `record` VALUES (1, '971c4cf0d19683b0', 2, 'sxx', 0);
INSERT INTO `record` VALUES (2, 'a54f4765a2c8d7c1', 2, 'function even_or_odd(number) {\n  if(number%2==0){\n  	return \"Even\";\n  }\n  return \"Odd\";\n}', 0);
INSERT INTO `record` VALUES (3, 'a54f4765a2c8d7c1', 2, 'function even_or_odd(number) {\n  if(number%2==0){return \"Even\"}\n	return \"Odd\";\n}', 0);
INSERT INTO `record` VALUES (4, 'a54f4765a2c8d7c1', 1, 'function even_or_odd(number) {\n  if(number%2==0){\n  	return \"Even\";\n  }\n  return \"Odd\";\n}', 0);
INSERT INTO `record` VALUES (5, 'a54f4765a2c8d7c1', 1, 'function even_or_odd(number) {\n  if(number%2==0){\n  	return \"Even\";\n  }\n  return \"Odd\";\n}', 0);
INSERT INTO `record` VALUES (6, 'a54f4765a2c8d7c1', 12, 'function even_or_odd(number) {\n  if(number%2==0){\n  	return \"Even\";\n  }\n  return \"Odd\";\n}', 0);

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
  `status` int(2) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uq_user`(`username`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'shuyudao', '123456', '王杰', 'shuyudao@gmail.com', 4, '2019-09-01 14:42:40', 0);
INSERT INTO `user` VALUES (2, 'admin', '123456', '超级无敌管理员', '2423458891@qq.com', 24, '2019-09-01 14:43:43', 0);
INSERT INTO `user` VALUES (13, 'cai', '111', '蔡徐坤', '2423458891@qq.com', 0, '2019-09-03 20:50:04', 0);
INSERT INTO `user` VALUES (12, 'awaw', '111', '术与道', '2423458891@qq.com', 0, '2019-09-03 17:51:49', 0);
INSERT INTO `user` VALUES (11, 'admin111', '111', '111', '2423458891@qq.com', 0, '2019-09-03 17:50:53', 0);

SET FOREIGN_KEY_CHECKS = 1;
