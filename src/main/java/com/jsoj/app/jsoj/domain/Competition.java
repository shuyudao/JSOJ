package com.jsoj.app.jsoj.domain;


import java.util.Date;

public class Competition {
    private int id;
    private String title;
    private String question;
    private Date startTime;
    private Date endTime;
    private int type;
    private String des;

    public Competition(String title, String question, Date startTime, Date endTime, int type, String des) {
        this.title = title;
        this.question = question;
        this.startTime = startTime;
        this.endTime = endTime;
        this.type = type;
        this.des = des;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

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

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

    public String getDes() {
        return des;
    }

    public void setDes(String des) {
        this.des = des;
    }
}
