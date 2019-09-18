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

import java.util.List;


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
    public String checkAnswer(String code, String id, User user) {

        Question question = questionDao.getQuestionById(id); //获取当前问题

        String test = question.getTest(); //获取测试用例

        long startTime=System.currentTimeMillis();

        String runtime = null;

        if (jsTestRun.run(code,test)){

            long endTime=System.currentTimeMillis();

            runtime = (endTime-startTime)+""; //代码运行时间 ms

            //更新分数
            user.setScore(user.getScore()+question.getScore());
            userDao.updateUser(user);

            //保存代码提交记录
            Record record = new Record();
            record.setCode(code);
            record.setUser(user);
            record.setRuntime(runtime);
            record.setQuestion(question);

            recordDao.saveRecord(record);

            return runtime;
        }

        return runtime;
    }

    @Override
    public List<Question> getQuestion(int page, int size) {

        int start = page*size;

        return questionDao.getQuestion(start,size);
    }

    @Override
    public int getQuestionTotal() {
        return questionDao.getQuestionTotal();
    }

    @Override
    public List<Question> searchQuestion(String keyword) {
        return questionDao.searchQuestion(keyword);
    }

    @Override
    public void saveQuestion(Question question) {
        questionDao.saveQuestion(question);
    }

    @Override
    public void incrQUestionAllCount(String id) {
        questionDao.incrQUestionAllCount(id);
    }

    @Override
    public List<Question> getRandomQuestionMany(int size) {
        return questionDao.getRandomQuestionMany(size);
    }
}
