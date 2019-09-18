package com.jsoj.app.jsoj.domain;

import java.util.Date;

public class Compercord {
    private int id;
    private int userId;
    private int competitionId;
    private int score;
    private Date ctime;

    public Compercord(int userId, int competitionId, int score, Date ctime) {
        this.userId = userId;
        this.competitionId = competitionId;
        this.score = score;
        this.ctime = ctime;
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
