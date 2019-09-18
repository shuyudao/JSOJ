package com.jsoj.app.jsoj;

import com.jsoj.app.jsoj.competition.CompetitionGlobal;
import com.jsoj.app.jsoj.competition.CompetitionO2o;
import org.springframework.beans.factory.annotation.Autowired;

public class runtest {

    CompetitionGlobal competitionGlobal = CompetitionGlobal.getInstance();

    public int run(){

        CompetitionO2o competitionO2o = competitionGlobal.getCompetitionO2oForWait();

        if (competitionO2o!=null){
            competitionO2o.setId("newID");
            return 1;
        }
        return 0;
    }

    public CompetitionGlobal tt(){
        return competitionGlobal;
    }
}
