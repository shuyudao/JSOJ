package com.jsoj.app.jsoj.dao;

import com.jsoj.app.jsoj.domain.Record;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface RecordDao {

    void saveRecord(Record record);

    //查询用户下的最近的50条提交记录
    List<Record> getRecordById(int id);

    //根据用户id查询记录总数
    int getRecordCountByUserId(int id);
}
