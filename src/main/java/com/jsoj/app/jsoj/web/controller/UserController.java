package com.jsoj.app.jsoj.web.controller;

import com.jsoj.app.jsoj.domain.User;
import com.jsoj.app.jsoj.serive.UserService;
import com.jsoj.app.jsoj.util.ServerResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpSession;

@RestController
@RequestMapping("/api")
public class UserController {

    @Autowired
    private UserService userService;

    @GetMapping("/getUserInfo/id/{id}")
    public Object getUserById(@PathVariable int id){

        return ServerResponse.createBySuccess("success",userService.getUserById(id));

    }

    @GetMapping("/getUserInfo/username/{username}")
    public Object getUserByUsername(@PathVariable String username){

        return ServerResponse.createBySuccess("success",userService.getUserByUserName(username));

    }

    @PostMapping("/auLogin")
    public ModelAndView auLogin(String username, String password, HttpSession session, ModelAndView modelAndView){

        User user = userService.getUser(username,password);

        if (user!=null&&user.getUsername()!=null){
            session.setAttribute("user",user);
            modelAndView.setViewName("redirect:/");
        }else{
            modelAndView.setViewName("redirect:/login");
        }

        return modelAndView;

    }

    @PostMapping("/reg")
    public ModelAndView reg(ModelAndView modelAndView, RedirectAttributes redirectAttributes, User user, HttpSession session){

        User isHave = userService.getUserByUserName(user.getUsername());

        if (isHave!=null){
            redirectAttributes.addFlashAttribute("msg","用户名已存在");
            modelAndView.setViewName("redirect:/reg");
            return modelAndView;
        }

        userService.regNewUser(user);

        int i = user.getId();
        System.out.println(">>>"+i);
        if (i>0){
            user.setScore(0);
            session.setAttribute("user",user);
            modelAndView.setViewName("redirect:/");
        }else{
            modelAndView.setViewName("redirect:/reg");
        }

        return modelAndView;
    }


}
