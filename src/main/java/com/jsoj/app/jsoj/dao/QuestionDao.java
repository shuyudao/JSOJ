package com.jsoj.app.jsoj.dao;

import com.jsoj.app.jsoj.domain.Question;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface QuestionDao {

    Question getRandomQuestion();

    Question getQuestionById(String id);

    void saveQuestion(Question question);

    List<Question> getQuestion(int start,int size);

    int getQuestionTotal();

    List<Question> searchQuestion(String keyword);

    void incrQUestionAllCount(String id);

    List<Question> getRandomQuestionMany(int size);
}
