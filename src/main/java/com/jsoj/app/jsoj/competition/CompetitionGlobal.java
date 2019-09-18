package com.jsoj.app.jsoj.competition;

import org.springframework.stereotype.Component;

import java.util.Date;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;

//全局竞赛对象
@Component
public class CompetitionGlobal {

    public HashMap<String,CompetitionO2o> competitioningO2oList = new HashMap<String,CompetitionO2o>();//全局进行中的1v1

    public LinkedList<CompetitionO2o> competitionO2oListWait = new LinkedList<>(); //全局等待中的1v1

    /**
     * 检测记录是否存在,防止重复提交刷分
     * @param username  用户名
     * @param id 竞赛ID
     * @param que_id 问题id
     * @return
     */
    public boolean isHaveRecord(String username,String id,String que_id){
        List<String> list = competitioningO2oList.get(id).getRecord().get(username);
        for(String temp:list){
            if (que_id.equals(temp)){
                return true;
            }
        }
        return false;
    }

    public void win(String id){
        competitioningO2oList.get(id).setStatus(2);
    }

    //检查赛程状况
    //如果还在进行，就返回进度
    public HashMap<String, List<String>> checkStatus(String id){
        CompetitionO2o competitionO2o = competitioningO2oList.get(id);
        //结束比赛
        if (new Date().getTime() >= competitionO2o.getEndTime().getTime()) {
            competitionO2o.setStatus(2);
            return null;
        } else if (competitionO2o.getStatus() >= 2) {
            return null;
        }

        return competitionO2o.getRecord();
    }

    //取出等待中的匹配
    public synchronized CompetitionO2o getCompetitionO2oForWait(){
        if (competitionO2oListWait.size()>0){
            return competitionO2oListWait.pop();
        }
        return null;
    }

    //存入提交记录
    public int putRecord(String username,String id,String que_id){
        CompetitionO2o competitionO2o = competitioningO2oList.get(id);
        competitionO2o.getRecord().get(username).add(que_id);
        return competitionO2o.getRecord().get(username).size();
    }

    //存入等待信息
    public void pushCompetitionO2oWait(CompetitionO2o competitionO2o){
        competitionO2oListWait.push(competitionO2o);
    }

    //存入进行信息
    public void pushCompetitionO2oRun(CompetitionO2o competitionO2o){
        competitioningO2oList.put(competitionO2o.getId(),competitionO2o);
    }

    //获取进行信息
    public CompetitionO2o getCompetitionO2oRu(String id){
        CompetitionO2o competitionO2o = competitioningO2oList.get(id);
        return competitionO2o;
    }

    private CompetitionGlobal(){}

    private final static CompetitionGlobal instance = new CompetitionGlobal();

    public static CompetitionGlobal getInstance(){
        return instance;
    }

}
