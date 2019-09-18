package com.jsoj.app.jsoj.web.controller;

import com.jsoj.app.jsoj.domain.User;
import com.jsoj.app.jsoj.serive.RecordService;
import com.jsoj.app.jsoj.util.ServerResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpSession;

@RestController
@RequestMapping("/api")
public class RecordController {

    @Autowired
    private RecordService recordService;

    @GetMapping("/getRecord")
    public Object getRecord(Integer page, Integer size, HttpSession session){
        if (page==null||size==null){
            return ServerResponse.createByErrorMessage("字段不能为空");
        }
        User user = (User) session.getAttribute("user");

        return ServerResponse.createBySuccess(recordService.getRecordByUserId(user.getId(),page,size));

    }

    @GetMapping("/getRecordById")
    public Object getRecordById(Integer page, Integer size,Integer id){

        if (page==null||size==null||id==null){
            return ServerResponse.createByErrorMessage("字段不能为空");
        }

        return ServerResponse.createBySuccess(recordService.getRecordByUserId(id,page,size));

    }

    @GetMapping("/getRecordTotal")
    public Object getRecordTotal(Integer id, HttpSession session){
        if (id==null){
            User user = (User) session.getAttribute("user");
            id = user.getId();
        }
        return ServerResponse.createBySuccess(recordService.getRecordCountByUserId(id));
    }
}
