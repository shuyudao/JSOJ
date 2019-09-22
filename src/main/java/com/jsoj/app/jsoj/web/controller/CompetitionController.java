package com.jsoj.app.jsoj.web.controller;

import com.jsoj.app.jsoj.competition.CompetitionGlobal;
import com.jsoj.app.jsoj.competition.CompetitionO2o;
import com.jsoj.app.jsoj.domain.Compercord;
import com.jsoj.app.jsoj.domain.Competition;
import com.jsoj.app.jsoj.domain.Question;
import com.jsoj.app.jsoj.domain.User;
import com.jsoj.app.jsoj.serive.CompercordService;
import com.jsoj.app.jsoj.serive.CompetitionService;
import com.jsoj.app.jsoj.serive.QuestionService;
import com.jsoj.app.jsoj.serive.UserService;
import com.jsoj.app.jsoj.util.ServerResponse;
import com.jsoj.app.jsoj.vo.Compedetail;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.*;
import java.util.concurrent.TimeUnit;

@RestController
@RequestMapping("/api/Competition")
public class CompetitionController {

    @Autowired
    private QuestionService questionService;

    @Autowired
    private UserService userService;

    @Autowired
    private StringRedisTemplate redisTemplate;

    @Autowired
    private CompetitionService competitionService;

    @Autowired
    private CompercordService compercordService;


    CompetitionGlobal competitionGlobal = CompetitionGlobal.getInstance();

    @GetMapping("/MatchO2o")
    public ServerResponse pipei(HttpSession session) throws InterruptedException {
        User user1 = (User)session.getAttribute("user");
        User user = new User();
        BeanUtils.copyProperties(user1,user); //拷贝对象
        user.setPassword(null);

        CompetitionO2o competitionO2o = competitionGlobal.getCompetitionO2oForWait();

        if (competitionO2o!=null){
            competitionO2o.setUserTwo(user);
            competitionO2o.setStatus(1);
            Date now = new Date();
            competitionO2o.setStartTime(now);

            List<Question> randomQuestionMany = questionService.getRandomQuestionMany(10);

            for (Question question:randomQuestionMany){
                question.setDescription(question.getDescription().replaceAll("\\n","<br>"));
            }

            competitionO2o.setQuestions(randomQuestionMany);
            Calendar ca= Calendar.getInstance();
            ca.setTime(now);
            ca.add(Calendar.MINUTE,2);
            competitionO2o.setEndTime(ca.getTime());

            competitionO2o.getRecord().put(user.getUsername(),new ArrayList());
            competitionGlobal.pushCompetitionO2oRun(competitionO2o);
            return ServerResponse.createBySuccess(competitionO2o.getId());
        }else{
            //创建存入 -> 检测变化 -> 返回
            CompetitionO2o competitionO2o1 = new CompetitionO2o();
            competitionO2o1.getRecord().put(user.getUsername(),new ArrayList());
            competitionGlobal.pushCompetitionO2oWait(competitionO2o1);
            competitionO2o1.setUserOne(user);
            int i = 0 ;
            while (true){
                i++;
                if (i>10){
                    competitionGlobal.getCompetitionO2oForWait();
                    return ServerResponse.createBySuccess();
                }
                if (competitionO2o1.getStatus()==1) {
                    return ServerResponse.createBySuccess(competitionO2o1.getId());
                }
                Thread.sleep(2000);
            }

        }

    }

    @GetMapping("/get/{id}")
    public ServerResponse getIn(@PathVariable String id){
        return ServerResponse.createBySuccess(competitionGlobal.getCompetitionO2oRu(id));
    }

    @PostMapping("/checkAnswer")
    public Object checkAnswer(@RequestBody HashMap<String, String> map, HttpSession session){

        String code = map.get("code");
        String id = map.get("id");
        String que_id = map.get("queid");

        User user = (User)(session.getAttribute("user"));
        if (competitionGlobal.isHaveRecord(user.getUsername(),id,que_id)){
            return ServerResponse.createByErrorMessage("涉嫌重复提交刷分");
        }
        String runtime = questionService.checkAnswer(code, que_id, (User) session.getAttribute("user"));
        questionService.incrQUestionAllCount(que_id); //提交+1

        if (runtime!=null){ //runtime!=null
            int count = competitionGlobal.putRecord(user.getUsername(), id, que_id);
            if (count==10){
                competitionGlobal.getCompetitionO2oRu(id).setEndTime(new Date());
                competitionGlobal.win(id);
            }
            return ServerResponse.createBySuccess();

        }else{
            return ServerResponse.createByErrorMessage("未通过");
        }

    }

    @GetMapping("/checkStatus/{id}")
    @Scope("single")
    public ServerResponse checkStatus(@PathVariable String id){

        CompetitionO2o competitionO2o = competitionGlobal.getCompetitionO2oRu(id);

        if (competitionO2o==null){
            return ServerResponse.createByErrorMessage("无数据");
        }

        if (competitionO2o.getStatus()==2){

            competitionO2o.setStatus(3);
        }

        HashMap<String, List<String>> status = competitionGlobal.checkStatus(id);

        if (status==null){

            return checkSync(competitionO2o);

        }

        return ServerResponse.createBySuccess(status);
    }

    @GetMapping("/getComp")
    public ServerResponse getComp(HttpSession session){

        User user = (User)session.getAttribute("user");

        return ServerResponse.createBySuccess(compercordService.getCompercord(user.getId()));

    }

    @GetMapping("/getCompdetail")
    public ServerResponse getCompdetail(int id){
        HashMap<String,Object> map = new HashMap();
        List<Compedetail> competition = competitionService.getCompetition(id);

        String[] questions = competition.get(0).getQuestion().split("::");

        ArrayList arrayList = new ArrayList();

        for (String question:questions){
            HashMap tempMap = new HashMap();
            Question tempQues = questionService.getQuestion(question);
            tempMap.put("id",tempQues.getId());
            tempMap.put("title",tempQues.getTitle());
            arrayList.add(tempMap);
        }

        map.put("detail",competition);
        map.put("question",arrayList);

        return ServerResponse.createBySuccess(map);

    }




    //同步检测删除
    private synchronized ServerResponse checkSync(CompetitionO2o competitionO2o){
        String id = competitionO2o.getId();
        User userOne = competitionO2o.getUserOne();
        User userTwo = competitionO2o.getUserTwo();
        HashMap<String, List<String>> record = competitionO2o.getRecord();
        List<Question> questions = competitionO2o.getQuestions();

        int userOneScore = 0;

        for(String temp:record.get(userOne.getUsername())){
            for (Question question:questions){
                if (temp.equals(question.getId())){
                    userOneScore+=question.getScore();
                }
            }
        }

        int userTwoScore = 0;

        for(String temp:record.get(userTwo.getUsername())){
            for (Question question:questions){
                if (temp.equals(question.getId())){
                    userTwoScore+=question.getScore();
                }
            }
        }

        userOne.setScore(userOneScore);
        userTwo.setScore(userTwoScore);

        HashMap map = new HashMap();
        map.put(userOne.getUsername(),userOne);
        map.put(userTwo.getUsername(),userTwo);

        if (redisTemplate.hasKey(competitionO2o.getId())){ //删除并存入记录
            String qidStr = "";
            List<Question> questionslist = competitionO2o.getQuestions();
            for(Question question:questionslist){
                qidStr+=question.getId()+"::";
            }
            Competition competition = new Competition("1v1", qidStr, competitionO2o.getStartTime(), competitionO2o.getEndTime(), 0, "1v1");
            competitionService.saveCompetition(competition);
            compercordService.saveCompercord(new Compercord(userOne.getId(),competition.getId(),userOneScore,new Date()));
            compercordService.saveCompercord(new Compercord(userTwo.getId(),competition.getId(),userTwoScore,new Date()));

            competitionGlobal.competitioningO2oList.remove(id);//移除比赛信息
        }else{
            redisTemplate.opsForValue().set(competitionO2o.getId(),"has");
            redisTemplate.expire(competitionO2o.getId(),10, TimeUnit.SECONDS);
        }

        return ServerResponse.createBySuccess("比赛结束",map);
    }
}
