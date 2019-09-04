package com.jsoj.app.jsoj.serive.impl;

import com.jsoj.app.jsoj.dao.QuestionDao;
import com.jsoj.app.jsoj.dao.RecordDao;
import com.jsoj.app.jsoj.dao.UserDao;
import com.jsoj.app.jsoj.domain.Question;
import com.jsoj.app.jsoj.domain.Record;
import com.jsoj.app.jsoj.domain.User;
import com.jsoj.app.jsoj.serive.QuestionService;
import com.jsoj.app.jsoj.util.JsTestRun;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheConfig;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;


@Service
@CacheConfig(cacheNames = "QuestionCache")
public class QuestionServiceImpl implements QuestionService {

    @Autowired
    private QuestionDao questionDao;

    @Autowired
    private UserDao userDao;

    @Autowired
    private RecordDao recordDao;

    @Autowired
    private JsTestRun jsTestRun;


    @Override
    public Question getRandomQuestion() {
        Question randomQuestion = questionDao.getRandomQuestion();

        return randomQuestion;
    }


    @Override
    @Cacheable(value = "Question",key = "#id")
    public Question getQuestion(String id) {
        return questionDao.getQuestionById(id);
    }

    @Override
    public Boolean checkAnswer(String code, String id, User user) {

        Question question = questionDao.getQuestionById(id); //获取当前问题

        String test = question.getTest(); //获取测试用例

        if (jsTestRun.run(code,test)){
            //更新分数
            user.setScore(user.getScore()+question.getScore());
            userDao.updateUser(user);

            //保存代码提交记录
            Record record = new Record();
            record.setCode(code);
            record.setUser(user);
            record.setQuestion(question);

            recordDao.saveRecord(record);

            return true;
        }

        return false;
    }
}
