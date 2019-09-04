package com.jsoj.app.jsoj.web.controller;

import com.jsoj.app.jsoj.domain.User;
import com.jsoj.app.jsoj.serive.QuestionService;
import com.jsoj.app.jsoj.util.ServerResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;

@RestController
@RequestMapping("/api")
public class QuestionController {

    @Autowired
    private QuestionService questionService;

    @GetMapping("/getRandomQuestion")
    public Object getRandomQue(){
        return ServerResponse.createBySuccess("success",questionService.getRandomQuestion());
    }

    @GetMapping("/getQuestion/{id}")
    public Object getQueById(@PathVariable("id") String id){
        return ServerResponse.createBySuccess("success",questionService.getQuestion(id));
    }

    @PostMapping("/checkAnswer")
    public Object checkAnswer(String id, String code, HttpSession session){

        if (questionService.checkAnswer(code,id,(User)session.getAttribute("user"))){
            return ServerResponse.createBySuccess("success");
        }else{
            return ServerResponse.createByErrorMessage("fail");
        }

    }


}
