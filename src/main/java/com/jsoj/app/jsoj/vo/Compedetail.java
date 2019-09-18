package com.jsoj.app.jsoj.vo;

import java.util.Date;

public class Compedetail {

    private String question;
    private Date startTime;
    private Date endTime;
    private int userId;
    private int score;
    private String niconame;

    public String getQuestion() {
        return question;
    }

    public void setQuestion(String question) {
        this.question = question;
    }

    public Date getStartTime() {
        return startTime;
    }

    public void setStartTime(Date startTime) {
        this.startTime = startTime;
    }

    public Date getEndTime() {
        return endTime;
    }

    public void setEndTime(Date endTime) {
        this.endTime = endTime;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getScore() {
        return score;
    }

    public void setScore(int score) {
        this.score = score;
    }

    public String getNiconame() {
        return niconame;
    }

    public void setNiconame(String niconame) {
        this.niconame = niconame;
    }
}
