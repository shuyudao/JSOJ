package com.jsoj.app.jsoj.serive.impl;

import com.jsoj.app.jsoj.dao.RecordDao;
import com.jsoj.app.jsoj.domain.Record;
import com.jsoj.app.jsoj.serive.RecordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
    public List<Record> getRecordById(int id) {
        return recordDao.getRecordById(id);
    }

    @Override
    public int getRecordCountByUserId(int id) {
        return recordDao.getRecordCountByUserId(id);
    }
}
