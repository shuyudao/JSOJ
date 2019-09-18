package com.jsoj.app.jsoj.domain;

import java.io.Serializable;
import java.util.Date;

public class User implements Serializable {

    private int id;
    private String username;
    private String password;
    private String niconame;
    private String email;
    private int score;
    private Date regTime;
    private int status;
    private int auRank;
    private String headImg;

    public String getHeadImg() {
        return headImg;
    }

    public void setHeadImg(String headImg) {
        this.headImg = headImg;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getNiconame() {
        return niconame;
    }

    public void setNiconame(String niconame) {
        this.niconame = niconame;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getScore() {
        return score;
    }

    public void setScore(int score) {
        this.score = score;
    }

    public Date getRegTime() {
        return regTime;
    }

    public void setRegTime(Date regTime) {
        this.regTime = regTime;
    }

    public int getAuRank() {
        return auRank;
    }

    public void setAuRank(int auRank) {
        this.auRank = auRank;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
}
