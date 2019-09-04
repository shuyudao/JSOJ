package com.jsoj.app.jsoj.web.controller;

import com.jsoj.app.jsoj.domain.Question;
import com.jsoj.app.jsoj.domain.Record;
import com.jsoj.app.jsoj.domain.User;
import com.jsoj.app.jsoj.serive.QuestionService;
import com.jsoj.app.jsoj.serive.RecordService;
import com.jsoj.app.jsoj.serive.UserService;
import com.jsoj.app.jsoj.vo.UserRank;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class ViewController {

    @Autowired
    private QuestionService questionService;

    @Autowired
    private UserService userService;

    @Autowired
    private RecordService recordService;

    @GetMapping("/code/{id}")
    public ModelAndView codeView(@PathVariable("id") String id, ModelAndView modelAndView){

        Question question = questionService.getQuestion(id);

        modelAndView.addObject("question",question);

        modelAndView.setViewName("code.html");

        return modelAndView;
    }

    @GetMapping("/")
    public ModelAndView indexPage(ModelAndView modelAndView, HttpSession session){

        //随机
        Question randomQuestion = questionService.getRandomQuestion();
        randomQuestion.setDescription(randomQuestion.getDescription().replaceAll("/\n/g","<br>"));

        User user = (User) session.getAttribute("user");

        modelAndView.addObject("record",recordService.getRecordCountByUserId(user.getId()));
        modelAndView.addObject("user",user);
        modelAndView.addObject("rank",userService.getUserRank(user.getId()));
        modelAndView.addObject("question",randomQuestion);
        modelAndView.setViewName("index.html");

        return modelAndView;
    }

    @GetMapping("/login")
    public ModelAndView loginPage(ModelAndView modelAndView){

        modelAndView.setViewName("login.html");

        return modelAndView;
    }

    @GetMapping("/rank")
    public ModelAndView rankPage(ModelAndView modelAndView){

        List<UserRank> userRankList = userService.getUserRankList();
        modelAndView.addObject("rankList",userRankList);
        modelAndView.setViewName("rank.html");
        return modelAndView;

    }

    @GetMapping("/record")
    public ModelAndView recordPage(ModelAndView modelAndView,HttpSession httpSession,int other){
        List<Record> recordList = null;
        if (other>0){
            recordList = recordService.getRecordById(other);
            modelAndView.addObject("other",1);
        }else{
            User user = (User)(httpSession.getAttribute("user"));
            recordList = recordService.getRecordById(user.getId());
        }

        modelAndView.addObject("recordList",recordList);

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

}
