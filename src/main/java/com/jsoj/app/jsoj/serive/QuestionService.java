package com.jsoj.app.jsoj.serive;

import com.jsoj.app.jsoj.domain.Question;
import com.jsoj.app.jsoj.domain.User;

import java.util.List;

public interface QuestionService {

    Question getRandomQuestion();

    Question getQuestion(String id);

    String checkAnswer(String code, String id, User user);

    List<Question> getQuestion(int page,int size);

    int getQuestionTotal();

    List<Question> searchQuestion(String keyword);

    void saveQuestion(Question question);

    //提交记录数+1
    void incrQUestionAllCount(String id);

    List<Question> getRandomQuestionMany(int size);
}
