package com.jsoj.app.jsoj.dao;

import com.jsoj.app.jsoj.domain.Question;
import org.springframework.stereotype.Repository;

@Repository
public interface QuestionDao {

    Question getRandomQuestion();

    Question getQuestionById(String id);

    void saveQuestion(Question question);
}
