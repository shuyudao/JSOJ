package com.jsoj.app.jsoj.serive.impl;

import com.jsoj.app.jsoj.dao.CompercordDao;
import com.jsoj.app.jsoj.domain.Compercord;
import com.jsoj.app.jsoj.serive.CompercordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CompercordServiceImpl implements CompercordService {

    @Autowired
    private CompercordDao compercordDao;

    @Override
    public int saveCompercord(Compercord compercord) {
        return compercordDao.saveCompercord(compercord);
    }

    @Override
    public List<Compercord> getCompercord(int id) {
        List<Compercord> myrecord = compercordDao.getMyrecord(id);

        return myrecord;
    }


}
