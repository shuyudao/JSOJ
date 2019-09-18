package com.jsoj.app.jsoj.serive.impl;

import com.jsoj.app.jsoj.dao.RecordDao;
import com.jsoj.app.jsoj.domain.Record;
import com.jsoj.app.jsoj.serive.RecordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.DecimalFormat;
import java.util.List;

@Service
public class RecordServiceImpl implements RecordService {

    @Autowired
    private RecordDao recordDao;

    @Override
    public void saveRecord(Record record) {
        recordDao.saveRecord(record);
    }

    @Override
    public int getRecordCountByUserId(int id) {
        return recordDao.getRecordCountByUserId(id);
    }

    @Override
    public List<Record> getRecordByUserId(int id, int page, int size) {
        return recordDao.getRecordByUserId(id,(page*size),size);
    }

    @Override
    public String getRecordDefeatPercent(String que_id, String runtime) {
        double total = recordDao.getQuestionRecordCount(que_id);
        double beatTotal = recordDao.getBeatQuestionRecordCount(que_id,Integer.valueOf(runtime));

        double end = (beatTotal/total)*100;

        if (end<1){
            return "0.00%";
        }

        DecimalFormat df = new DecimalFormat("#.00");
        String result = df.format(end)+"%";

        return result;

    }

    @Override
    public int getQuestionRecordCount(String qid) {
        return recordDao.getQuestionRecordCount(qid);
    }


}
