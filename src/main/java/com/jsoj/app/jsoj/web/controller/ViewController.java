package com.jsoj.app.jsoj.web.controller;

import com.jsoj.app.jsoj.domain.Question;
import com.jsoj.app.jsoj.serive.QuestionService;
import com.jsoj.app.jsoj.serive.RecordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;


@Controller
public class ViewController {

    @Autowired
    private QuestionService questionService;

    @Autowired
    private RecordService recordService;
    private ModelAndView modelAndView;
    private HttpSession session;

    @GetMapping("/code/{id}")
    public ModelAndView codeView(@PathVariable("id") String id, ModelAndView modelAndView){

        Question question = questionService.getQuestion(id);

        modelAndView.addObject("question",question);

        modelAndView.setViewName("code.html");

        return modelAndView;
    }

    @GetMapping("/")
    public ModelAndView indexPage(ModelAndView modelAndView, HttpSession session){

        modelAndView.setViewName("vuet.html");

        return modelAndView;
    }


    @GetMapping("/login")
    public ModelAndView loginPage(ModelAndView modelAndView){

        modelAndView.setViewName("login.html");

        return modelAndView;
    }

    @GetMapping("/rank")
    public ModelAndView rankPage(ModelAndView modelAndView){

        modelAndView.setViewName("rank.html");
        return modelAndView;

    }


    @GetMapping("/record")
    public ModelAndView recordPage(ModelAndView modelAndView){

        modelAndView.setViewName("record.html");
        return modelAndView;

    }

    @GetMapping("/logout")
    public ModelAndView logout(ModelAndView modelAndView,HttpSession session){

        session.removeAttribute("user");

        modelAndView.setViewName("/login");

        return modelAndView;

    }


    @GetMapping("/reg")
    public ModelAndView regPage(ModelAndView modelAndView){

        modelAndView.setViewName("reg.html");
        return modelAndView;

    }

    @GetMapping("/question")
    public ModelAndView questionPage(ModelAndView modelAndView){

        modelAndView.setViewName("question.html");
        return modelAndView;

    }

    @GetMapping("/code")
    public ModelAndView codePage(ModelAndView modelAndView){

        modelAndView.setViewName("code.html");
        return modelAndView;

    }

    @GetMapping("/companies")
    public ModelAndView companiesPage(ModelAndView modelAndView){
        modelAndView.setViewName("companies.html");
        return modelAndView;
    }

    @GetMapping("/companiesCode/{id}")
    public ModelAndView companiesCodePage(ModelAndView modelAndView){
        modelAndView.setViewName("companiesCode.html");
        return modelAndView;
    }

    @GetMapping("/user")
    public ModelAndView userPage(ModelAndView modelAndView){
        modelAndView.setViewName("user.html");
        return modelAndView;
    }

    @GetMapping("/user/{id}")
    public ModelAndView ouserPage(ModelAndView modelAndView){
        modelAndView.setViewName("Ouser.html");
        return modelAndView;
    }

}
