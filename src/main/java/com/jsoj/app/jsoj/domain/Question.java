package com.jsoj.app.jsoj.domain;

import com.fasterxml.jackson.annotation.JsonIgnore;

import java.io.Serializable;

public class Question implements Serializable {

    private String id; //id
    private int status; //状态
    private String title;    //问题名
    private String description; //描述
    private int score;  //分数
    @JsonIgnore
    private String test; //测试用例
    private String questionInit; //问题初始代码
    private Integer allcount; //问题的总提交数

    public Integer getAllcount() {
        return allcount;
    }

    public void setAllcount(Integer allcount) {
        this.allcount = allcount;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getScore() {
        return score;
    }

    public void setScore(int score) {
        this.score = score;
    }

    public String getTest() {
        return test;
    }

    public void setTest(String test) {
        this.test = test;
    }

    public String getQuestionInit() {
        return questionInit;
    }

    public void setQuestionInit(String questionInit) {
        this.questionInit = questionInit;
    }
}
