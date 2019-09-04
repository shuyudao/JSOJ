package com.jsoj.app.jsoj;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.jsoj.app.jsoj.dao.QuestionDao;
import com.jsoj.app.jsoj.dao.RecordDao;
import com.jsoj.app.jsoj.domain.Question;
import com.jsoj.app.jsoj.domain.Record;
import com.jsoj.app.jsoj.util.JsTestRun;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.io.*;
import java.net.URL;
import java.net.URLConnection;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.List;
import java.util.Map;


@RunWith(SpringRunner.class)
@SpringBootTest
public class JsojApplicationTests {

    @Autowired
    private JsTestRun jsTestRun;

    @Autowired
    private QuestionDao questionDao;

    @Test
    public void contextLoads() {
        System.out.println(jsTestRun.run("function add(a,b){return a+b}","add(1,2) = 3&=&add(3,2) = 5"));
    }

    @Test
    public void getQues(){
        PrintWriter out = null;
        try {

            ObjectMapper mapper = new ObjectMapper();
            JsonNode rootNode = mapper.readTree("[{\"id\":\"1083630389540528128\",\"name\":\"重复字符函数\",\"score\":2,\"count\":35,\"answered\":false},{\"id\":\"1083635110486491136\",\"name\":\"判断奇偶数\",\"score\":2,\"count\":45,\"answered\":false},{\"id\":\"1083636688517873664\",\"name\":\"输入操作符计算两数\",\"score\":2,\"count\":35,\"answered\":false},{\"id\":\"1083638713641091072\",\"name\":\"数字转字符串\",\"score\":2,\"count\":47,\"answered\":false},{\"id\":\"1085410888716517376\",\"name\":\"字符串转数字\",\"score\":2,\"count\":37,\"answered\":false},{\"id\":\"1085415678376804352\",\"name\":\"数组每个数字增加5\",\"score\":2,\"count\":37,\"answered\":false},{\"id\":\"1085468535113035776\",\"name\":\"删除一个数字找最大数\",\"score\":6,\"count\":24,\"answered\":false},{\"id\":\"1085470310314455040\",\"name\":\"一个数的二进制有几个1\",\"score\":6,\"count\":25,\"answered\":false},{\"id\":\"1087630767991603200\",\"name\":\"找到最短的单词\",\"score\":4,\"count\":28,\"answered\":false},{\"id\":\"1087632393523478528\",\"name\":\"找规律,写函数\",\"score\":4,\"count\":19,\"answered\":false},{\"id\":\"1087637682885476352\",\"name\":\"最大数和最小数\",\"score\":4,\"count\":22,\"answered\":false},{\"id\":\"1087638684502048768\",\"name\":\"ASCII 转意\",\"score\":2,\"count\":25,\"answered\":false},{\"id\":\"1087886260802404352\",\"name\":\"父亲是儿子的两倍\",\"score\":2,\"count\":23,\"answered\":false},{\"id\":\"1087888756769800192\",\"name\":\"重复字符有几个\",\"score\":8,\"count\":25,\"answered\":false},{\"id\":\"1087891458841100288\",\"name\":\"数组最长字符串\",\"score\":10,\"count\":16,\"answered\":false},{\"id\":\"1087893531334787072\",\"name\":\"约瑟夫斯幸存者\",\"score\":15,\"count\":18,\"answered\":false},{\"id\":\"1087896604421636096\",\"name\":\"驼峰命名法\",\"score\":12,\"count\":18,\"answered\":false},{\"id\":\"1087908907208654848\",\"name\":\"字符串结尾\",\"score\":4,\"count\":26,\"answered\":false},{\"id\":\"1087915036982624256\",\"name\":\"数字排序\",\"score\":4,\"count\":21,\"answered\":false},{\"id\":\"1087916766436769792\",\"name\":\"最小两个整数相加\",\"score\":4,\"count\":26,\"answered\":false},{\"id\":\"1090132242792923136\",\"name\":\"数组排序\",\"score\":12,\"count\":13,\"answered\":false},{\"id\":\"1090134979886661632\",\"name\":\"是否是素数\",\"score\":10,\"count\":19,\"answered\":false},{\"id\":\"1090137223101104128\",\"name\":\"数字代替字母\",\"score\":10,\"count\":10,\"answered\":false},{\"id\":\"1090140534403448832\",\"name\":\"创建手机号\",\"score\":8,\"count\":13,\"answered\":false},{\"id\":\"1090149361337188352\",\"name\":\"字符串排序\",\"score\":4,\"count\":14,\"answered\":false},{\"id\":\"1090151945154281472\",\"name\":\"数笑脸\",\"score\":12,\"count\":10,\"answered\":false},{\"id\":\"1090156063612682240\",\"name\":\"被3和5分整除\",\"score\":12,\"count\":19,\"answered\":false},{\"id\":\"1090158005470576640\",\"name\":\"字符串字母统计\",\"score\":12,\"count\":15,\"answered\":false},{\"id\":\"1090161877542977536\",\"name\":\"出现奇数次的数\",\"score\":12,\"count\":12,\"answered\":false},{\"id\":\"1090164742332301312\",\"name\":\"连续相乘!\",\"score\":15,\"count\":20,\"answered\":false},{\"id\":\"1103201901571760128\",\"name\":\"数一数有几个true\",\"score\":2,\"count\":19,\"answered\":false},{\"id\":\"1103205286131818496\",\"name\":\"寻找单词的位置\",\"score\":2,\"count\":17,\"answered\":false},{\"id\":\"1103223687822729216\",\"name\":\"两次重复字符\",\"score\":3,\"count\":14,\"answered\":false},{\"id\":\"1103226657310269440\",\"name\":\"DNA转RNA\",\"score\":2,\"count\":15,\"answered\":false},{\"id\":\"1122675076169555968\",\"name\":\"数组的总和\",\"score\":3,\"count\":15,\"answered\":false},{\"id\":\"1122680634167615488\",\"name\":\"数组去重\",\"score\":4,\"count\":14,\"answered\":false},{\"id\":\"1124736131258191872\",\"name\":\"挑选数组元素\",\"score\":10,\"count\":7,\"answered\":false},{\"id\":\"1124742764826791936\",\"name\":\"按格式输出数字\",\"score\":10,\"count\":10,\"answered\":false},{\"id\":\"1125299192054083584\",\"name\":\"两个字符串数字相加\",\"score\":16,\"count\":12,\"answered\":false},{\"id\":\"1125306620086775808\",\"name\":\"域名获取\",\"score\":16,\"count\":6,\"answered\":false},{\"id\":\"1125309961571332096\",\"name\":\"字符串排序(数字)\",\"score\":10,\"count\":9,\"answered\":false},{\"id\":\"1125597746618363904\",\"name\":\"计算骰子的分数\",\"score\":16,\"count\":10,\"answered\":false},{\"id\":\"1126723101134041088\",\"name\":\"猜密码\",\"score\":20,\"count\":8,\"answered\":false},{\"id\":\"1135839467314376704\",\"name\":\"第一个非重复的字母\",\"score\":16,\"count\":6,\"answered\":false},{\"id\":\"1135842205356027904\",\"name\":\"括号是否有序\",\"score\":20,\"count\":5,\"answered\":false},{\"id\":\"1136200435512053760\",\"name\":\"拉丁文转换\",\"score\":15,\"count\":5,\"answered\":false}]"); // 读取Json

            if (rootNode.isArray()){
                for(JsonNode jsonNode:rootNode){
                    String result = "";
                    BufferedReader in = null;

                    URL realUrl = new URL("http://xcoding.me/api/getQuestion/"+jsonNode.path("id").asText());
                    // 打开和URL之间的连接
                    URLConnection connection = realUrl.openConnection();
                    // 设置通用的请求属性
                    connection.setRequestProperty("accept", "*/*");
                    connection.setRequestProperty("connection", "Keep-Alive");
                    connection.setRequestProperty("user-agent",
                            "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;SV1)");
                    // 建立实际的连接
                    connection.connect();
                    // 获取所有响应头字段
                    Map<String, List<String>> map = connection.getHeaderFields();

                    // 定义 BufferedReader输入流来读取URL的响应
                    in = new BufferedReader(new InputStreamReader(
                            connection.getInputStream()));
                    String line;
                    while ((line = in.readLine()) != null) {
                        result += line;
                    }

                    ObjectMapper mapper2 = new ObjectMapper();
                    JsonNode rootNode2 = mapper.readTree(result);

                    String id = md5_16ToBase64Encrypt(rootNode2.path("id").asText());
                    String title = rootNode2.path("name").asText();
                    String description = rootNode2.path("description").asText();
                    int score = rootNode2.path("score").asInt();
                    String questionInit = rootNode2.path("questionInit").asText();
                    String test = "";

                    if(rootNode2.path("questionTasksList").isArray()){
                        for (JsonNode temp:rootNode2.path("questionTasksList")){
                            test+=temp.path("taskQuestion").asText()+" = "+temp.path("taskAnswer").asText()+"&=&";
                        }
                    }

                    StringBuffer buffer = new StringBuffer(test);
                    test = buffer.replace(buffer.length()-3, buffer.length(), "").toString();

                    Question question = new Question();
                    question.setId(id);
                    question.setDescription(description);
                    question.setQuestionInit(questionInit);
                    question.setScore(score);
                    question.setTest(test);
                    question.setTitle(title);

                    questionDao.saveQuestion(question);

                }
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

    }


    public static String md5_16ToBase64Encrypt(String sourceStr) {
        String result = "";//通过result返回结果值
        try {
            //1.初始化MessageDigest信息摘要对象,并指定为MD5不分大小写都可以
            MessageDigest md = MessageDigest.getInstance("MD5");
            //2.传入需要计算的字符串更新摘要信息，传入的为字节数组byte[],将字符串转换为字节数组使用getBytes()方法完成
            md.update(sourceStr.getBytes());
            //3.计算信息摘要digest()方法,返回值为字节数组
            byte b[] = md.digest();
            int i;//定义整型
            //声明StringBuffer对象
            StringBuffer buf = new StringBuffer("");
            for (int offset = 0; offset < b.length; offset++) {
                i = b[offset];//将首个元素赋值给i
                if (i < 0)
                    i += 256;
                if (i < 16)
                    buf.append("0");//前面补0
                buf.append(Integer.toHexString(i));//转换成16进制编码
            }
            result = buf.toString().substring(8, 24);//转换成字符串,输出16位16进制字符串
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }

        return result;

    }


    @Autowired
    private RecordDao recordDao;

    @Test
    public void test(){

    }

}
