package com.jsoj.app.jsoj;

import com.jsoj.app.jsoj.competition.CompetitionGlobal;
import com.jsoj.app.jsoj.competition.CompetitionO2o;
import com.jsoj.app.jsoj.serive.QuestionService;
import com.jsoj.app.jsoj.serive.RecordService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.util.ResourceUtils;

import java.io.FileNotFoundException;
import java.util.Date;


@RunWith(SpringRunner.class)
@SpringBootTest(classes = JsojApplication.class)
public class JsojApplicationTest {

    @Autowired
    QuestionService questionService;

    @Autowired
    RecordService recordService;

    CompetitionGlobal competitionGlobal = CompetitionGlobal.getInstance();


    @Test
    public void test(){

        try {
            System.out.println(ResourceUtils.getURL("classpath:").getPath());
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }

    }

}
