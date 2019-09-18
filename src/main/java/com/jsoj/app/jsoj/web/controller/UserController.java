package com.jsoj.app.jsoj.web.controller;

import com.google.code.kaptcha.Constants;
import com.google.code.kaptcha.Producer;
import com.jsoj.app.jsoj.domain.Question;
import com.jsoj.app.jsoj.domain.User;
import com.jsoj.app.jsoj.serive.QuestionService;
import com.jsoj.app.jsoj.serive.RecordService;
import com.jsoj.app.jsoj.serive.UserService;
import com.jsoj.app.jsoj.util.FileUtils;
import com.jsoj.app.jsoj.util.ServerResponse;
import com.jsoj.app.jsoj.vo.UserRank;
import io.netty.util.internal.StringUtil;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.ResourceUtils;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.imageio.ImageIO;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileNotFoundException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/api")
public class UserController {

    @Autowired
    private UserService userService;

    @Autowired
    private QuestionService questionService;

    @Autowired
    private RecordService recordService;

    @Autowired
    private Producer captchaProducer;


    @GetMapping("/getUserInfo/id/{id}")
    public Object getUserById(@PathVariable int id){
        User user = userService.getUserById(id);
        Map<String,Object> data = new HashMap();
        data.put("record",recordService.getRecordCountByUserId(user.getId()));
        data.put("user",user);
        data.put("rank",userService.getUserRank(user.getId()));

        return ServerResponse.createBySuccess("success",data);

    }

    @GetMapping("/getUserInfo/username/{username}")
    public Object getUserByUsername(@PathVariable String username){

        return ServerResponse.createBySuccess("success",userService.getUserByUserName(username));

    }

    @PostMapping("/auLogin")
    public Object auLogin(@RequestBody User user, HttpSession session){
        String username = user.getUsername();
        String password = user.getPassword();

        if (username==null||password==null){
            return ServerResponse.createByErrorMessage("账号密码不能为空");
        }

        user = userService.getUser(username,password);

        if (user!=null&&user.getUsername()!=null){
            user.setPassword(null);
            session.setAttribute("user",user);
            return ServerResponse.createBySuccess("success");
        }else{
            return ServerResponse.createByErrorMessage("账号或密码错误");
        }

    }

    @PostMapping("/reg")
    public Object reg(@RequestBody User user,String yan, HttpSession session){

        if (StringUtils.isEmpty(user.getUsername())||StringUtils.isEmpty(user.getPassword())||StringUtils.isEmpty(user.getEmail())||StringUtils.isEmpty(user.getNiconame())){
            return ServerResponse.createByErrorMessage("请确保每项都不为空");
        }

        if (!session.getAttribute(Constants.KAPTCHA_SESSION_KEY).equals(yan)){
            return ServerResponse.createByErrorMessage("验证码错误");
        }

        User isHave = userService.getUserByUserName(user.getUsername());

        if (isHave!=null){
            return ServerResponse.createByErrorMessage("用户名已存在");
        }

        userService.regNewUser(user);

        int i = user.getId();
        if (i>0){
            user.setScore(0);
            user.setHeadImg("https://c-ssl.duitang.com/uploads/item/201905/30/20190530094133_2zFMN.thumb.700_0.jpeg");
            session.setAttribute("user",user);
            return ServerResponse.createBySuccess("success");
        }else{
            return ServerResponse.createByErrorMessage("注册失败");
        }

    }


    @GetMapping("/getRankList")
    public Object rankInfo(){
        List<UserRank> userRankList = userService.getUserRankList();
        Map<String,Object> map = new HashMap();
        map.put("rankList",userRankList);
        return ServerResponse.createBySuccess(map);
    }


    @GetMapping("/getIndexInfo")
    public Object getIndexInfo(HttpSession session){
        //随机
        Question randomQuestion = questionService.getRandomQuestion();
        randomQuestion.setDescription(randomQuestion.getDescription().replaceAll("/\n/g","<br>"));

        User user = (User) session.getAttribute("user");
        user.setPassword(null);
        Map<String,Object> data = new HashMap();
        data.put("record",recordService.getRecordCountByUserId(user.getId()));
        data.put("user",user);
        data.put("rank",userService.getUserRank(user.getId()));
        data.put("question",randomQuestion);

        return ServerResponse.createBySuccess(data);
    }

    @GetMapping("/getUser")
    public Object getUser(HttpSession session){
        User user = (User) session.getAttribute("user");
        user.setPassword(null);
        return ServerResponse.createBySuccess(user);

    }


    @GetMapping("/getHeadImg/{id}")
    public ServerResponse getHeadImg(@PathVariable int id) {

        User user = userService.getUserById(id);

        return ServerResponse.createBySuccess(user.getHeadImg());

    }

    @PostMapping("/updateUser")
    public ServerResponse updateUser(@RequestBody User user,HttpSession session){
        userService.updateUserByUser(user);
        session.setAttribute("user",user);
        return ServerResponse.createBySuccess();
    }

    @RequestMapping("/uploadHeadImg")
    public ServerResponse upload(@RequestParam("file") MultipartFile file){
        String contentType = file.getContentType();
        System.out.println(contentType);
        if (!contentType.equals("image/jpeg")&&!contentType.equals("image/png")&&!contentType.equals("image/gif")){
            return ServerResponse.createByErrorMessage("只支持上传图片文件");
        }

        // 要上传的目标文件存放路径
        String localPath = null;
        try {
            localPath = ResourceUtils.getURL("classpath:").getPath()+"static/upload";
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
        // 上传成功或者失败的提示
        String msg = "";
        String url = FileUtils.upload(file, localPath, file.getOriginalFilename());
        System.out.println(url);

        return ServerResponse.createBySuccess("/upload/"+url);
    }

    @GetMapping("/getRegYan")
    public ModelAndView getKaptchaImage(HttpServletRequest request, HttpServletResponse response) throws Exception {
        HttpSession session = request.getSession();
        String code = (String)session.getAttribute(Constants.KAPTCHA_SESSION_KEY);

        response.setDateHeader("Expires", 0);

        response.setHeader("Cache-Control", "no-store, no-cache, must-revalidate");

        response.addHeader("Cache-Control", "post-check=0, pre-check=0");

        // Set standard HTTP/1.0 no-cache header.
        response.setHeader("Pragma", "no-cache");

        // return a jpeg
        response.setContentType("image/jpeg");

        // create the text for the image
        String capText = captchaProducer.createText();

        // store the text in the session
        session.setAttribute(Constants.KAPTCHA_SESSION_KEY, capText);

        // create the image with the text
        BufferedImage bi = captchaProducer.createImage(capText);
        ServletOutputStream out = response.getOutputStream();

        // write the data out
        ImageIO.write(bi, "jpg", out);
        try {
            out.flush();
        } finally {
            out.close();
        }
        return null;
    }

}
