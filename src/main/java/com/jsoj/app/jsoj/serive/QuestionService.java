package com.jsoj.app.jsoj.serive;

import com.jsoj.app.jsoj.domain.Question;
import com.jsoj.app.jsoj.domain.User;

public interface QuestionService {

    Question getRandomQuestion();

    Question getQuestion(String id);

    Boolean checkAnswer(String code, String id, User user);

}
