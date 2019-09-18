package com.jsoj.app.jsoj.dao;

import com.jsoj.app.jsoj.domain.Record;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface RecordDao {

    void saveRecord(Record record);

    //根据用户id查询记录总数
    int getRecordCountByUserId(int id);

    int getQuestionRecordCount(String qid);

    List<Record> getRecordByUserId(int id,int start,int size);

    int getBeatQuestionRecordCount(String que_id, int runtime);
}
