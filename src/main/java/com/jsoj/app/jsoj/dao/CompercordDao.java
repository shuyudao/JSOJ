package com.jsoj.app.jsoj.dao;

import com.jsoj.app.jsoj.domain.Compercord;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CompercordDao {

    int saveCompercord(Compercord compercord);

    List<Compercord> getMyrecord(int id);
}
