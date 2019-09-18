package com.jsoj.app.jsoj.competition;

import com.jsoj.app.jsoj.domain.Question;
import com.jsoj.app.jsoj.domain.User;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.UUID;


public class CompetitionO2o {

    private String id;

    private int status; //0、匹配中  1、进行中  2、竞赛完成 3、可进行删除

    private Date startTime; //开启时间 （状态位1时开始记录）

    private Date limitTime = new Date(); //限制时间  （到达限制时间，结束竞赛，null表示无时长限制）

    private Date endTime; //结束时间

    private User userOne;

    private User userTwo;

    private List<Question> questions; //问题列表  -----随机取10条

    private HashMap<String,List<String>> record = new HashMap<String, List<String>>(); //提交记录（正确的） ，防止重复提交


    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public User getUserOne() {
        return userOne;
    }

    public void setUserOne(User userOne) {
        this.userOne = userOne;
    }

    public User getUserTwo() {
        return userTwo;
    }

    public void setUserTwo(User userTwo) {
        this.userTwo = userTwo;
    }

    public CompetitionO2o() {
        this.id = UUID.randomUUID().toString();
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public Date getStartTime() {
        return startTime;
    }

    public void setStartTime(Date startTime) {
        this.startTime = startTime;
    }

    public Date getLimitTime() {
        return limitTime;
    }

    public void setLimitTime(Date limitTime) {
        this.limitTime = limitTime;
    }

    public List<Question> getQuestions() {
        return questions;
    }

    public void setQuestions(List<Question> questions) {
        this.questions = questions;
    }

    public HashMap<String, List<String>> getRecord() {
        return record;
    }

    public void setRecord(HashMap<String, List<String>> record) {
        this.record = record;
    }
    public Date getEndTime() {
        return endTime;
    }

    public void setEndTime(Date endTime) {
        this.endTime = endTime;
    }
}
