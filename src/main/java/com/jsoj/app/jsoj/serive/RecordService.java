package com.jsoj.app.jsoj.serive;


import com.jsoj.app.jsoj.domain.Record;

import java.util.List;

public interface RecordService {

    void saveRecord(Record record);

    //根据用户id查询记录总数
    int getRecordCountByUserId(int id);

    //获取指定用户的提交记录
    List<Record> getRecordByUserId(int id,int page,int size);

    //根据运行时间，计算代码击败多少人
    String getRecordDefeatPercent(String que_id,String runtime);

    int getQuestionRecordCount(String qid);

}
