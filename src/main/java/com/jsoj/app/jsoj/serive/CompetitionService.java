package com.jsoj.app.jsoj.serive;

import com.jsoj.app.jsoj.domain.Competition;
import com.jsoj.app.jsoj.vo.Compedetail;

import java.util.List;

public interface CompetitionService {

    int saveCompetition(Competition competition);

    List<Compedetail> getCompetition(int id);

}
