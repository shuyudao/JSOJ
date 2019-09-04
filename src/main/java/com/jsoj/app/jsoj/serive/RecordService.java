package com.jsoj.app.jsoj.serive;


import com.jsoj.app.jsoj.domain.Record;

import java.util.List;

public interface RecordService {

    void saveRecord(Record record);

    List<Record> getRecordById(int id);

    //根据用户id查询记录总数
    int getRecordCountByUserId(int id);

}
