package com.jsoj.app.jsoj.domain;

import java.io.Serializable;
import java.util.Date;

public class Record implements Serializable {

    private int id;
    private Question question;
    private User user;
    private String code;
    private int ilike;
    private Date ctime;
    private String runtime;

    public Date getCtime() {
        return ctime;
    }

    public void setCtime(Date ctime) {
        this.ctime = ctime;
    }

    public String getRuntime() {
        return runtime;
    }

    public void setRuntime(String runtime) {
        this.runtime = runtime;
    }

    public Record() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Question getQuestion() {
        return question;
    }

    public void setQuestion(Question question) {
        this.question = question;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public int getIlike() {
        return ilike;
    }

    public void setIlike(int ilike) {
        this.ilike = ilike;
    }
}
