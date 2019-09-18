package com.jsoj.app.jsoj.dao;

import com.jsoj.app.jsoj.domain.Competition;
import com.jsoj.app.jsoj.vo.Compedetail;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CompetitionDao {

    int saveCompetition(Competition competition);

    List<Compedetail> getCompetition(int id);

}
