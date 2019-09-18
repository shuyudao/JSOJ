package com.jsoj.app.jsoj.vo;

import java.util.Date;

public class ComperInfo {
    private int id;
    private int userId;
    private int competitionId;
    private int score;
    private Date ctime;
    private String head_img;
    private String niconame;

    public String getNiconame() {
        return niconame;
    }

    public void setNiconame(String niconame) {
        this.niconame = niconame;
    }

    public String getHead_img() {
        return head_img;
    }

    public void setHead_img(String head_img) {
        this.head_img = head_img;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getCompetitionId() {
        return competitionId;
    }

    public void setCompetitionId(int competitionId) {
        this.competitionId = competitionId;
    }

    public int getScore() {
        return score;
    }

    public void setScore(int score) {
        this.score = score;
    }

    public Date getCtime() {
        return ctime;
    }

    public void setCtime(Date ctime) {
        this.ctime = ctime;
    }
}
