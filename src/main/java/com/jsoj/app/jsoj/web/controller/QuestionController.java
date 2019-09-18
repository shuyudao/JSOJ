package com.jsoj.app.jsoj.web.controller;

import com.jsoj.app.jsoj.domain.Question;
import com.jsoj.app.jsoj.domain.User;
import com.jsoj.app.jsoj.serive.QuestionService;
import com.jsoj.app.jsoj.serive.RecordService;
import com.jsoj.app.jsoj.util.ServerResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.util.DigestUtils;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.TimeUnit;

@RestController
@RequestMapping("/api")
public class QuestionController {

    @Autowired
    private QuestionService questionService;

    @Autowired
    private StringRedisTemplate redisTemplate;

    @Autowired
    private RecordService recordService;

    @GetMapping("/getRandomQuestion")
    public ServerResponse getRandomQue(){
        return ServerResponse.createBySuccess("success",questionService.getRandomQuestion());
    }

    @GetMapping("/getQuestion/{id}")
    public ServerResponse getQueById(@PathVariable("id") String id){

        Question question = questionService.getQuestion(id);
        question.setDescription(question.getDescription().replaceAll("\\n","<br>"));
        return ServerResponse.createBySuccess("success",question);

    }


    @PostMapping("/checkAnswer")
    public ServerResponse checkAnswer(@RequestBody HashMap<String, String> map, HttpSession session){

        String code = map.get("code");
        String id = map.get("id");

        //防止重复提交刷分
        User user = (User)(session.getAttribute("user"));
        String token = DigestUtils.md5DigestAsHex((id+user.getId()).getBytes()); //计算用户问题所属token
        if (redisTemplate.hasKey(token)){ //检查redis是否存在
            return ServerResponse.createByErrorMessage("12小时内禁止重复提交本题");
        }

        String runtime = questionService.checkAnswer(code, id, (User) session.getAttribute("user"));
        questionService.incrQUestionAllCount(id); //提交+1
        if (runtime!=null){

            redisTemplate.opsForValue().set(token,"has");
            //提交重复时间
            redisTemplate.expire(token,50, TimeUnit.SECONDS);
            //战胜人数百分比
            String recordDefeatPercent = recordService.getRecordDefeatPercent(id, runtime);

            return ServerResponse.createBySuccess(runtime+"::"+recordDefeatPercent);

        }else{
            return ServerResponse.createByErrorMessage("未通过");
        }

    }

    @GetMapping("/getQuestionList")
    public ServerResponse getQurstionList(Integer page,Integer size){

        if (page==null||size==null){
            return ServerResponse.createByErrorMessage("字段不能为空");
        }

        List<Question> questionList = questionService.getQuestion(page, size);

        for (Question question:questionList){
            if (question.getAllcount()!=0){
                double rightPercent = (double)recordService.getQuestionRecordCount(question.getId())/(double)question.getAllcount();
                System.out.println(recordService.getQuestionRecordCount(question.getId())+"-->"+question.getAllcount());
                int end = (int)(rightPercent*10000.00);
                question.setAllcount(end);
            }else{
                question.setAllcount(0);
            }
        }

        return ServerResponse.createBySuccess(questionList);

    }

    @GetMapping("/getQuestionTotal")
    public ServerResponse getQuestionTotal(){
        return ServerResponse.createBySuccess(questionService.getQuestionTotal());
    }

    @GetMapping("/searchQue")
    public ServerResponse searchQue(String keyword){
        return ServerResponse.createBySuccess(questionService.searchQuestion(keyword));
    }

    @PostMapping("/commitQue")
    public ServerResponse commitQuestion(@RequestBody HashMap<String, String> map){
        String id = DigestUtils.md5DigestAsHex((System.currentTimeMillis()+"").getBytes()).substring(16,32);

        Question question = new Question();
        question.setId(id);
        question.setDescription(map.get("description"));
        question.setTitle(map.get("title"));
        question.setScore(Integer.valueOf(map.get("score")));
        question.setQuestionInit(map.get("questionInit"));
        question.setTest(map.get("test"));

        questionService.saveQuestion(question);
        return ServerResponse.createBySuccess();
    }


}
