package com.jsoj.app.jsoj.serive.impl;

import com.jsoj.app.jsoj.dao.CompetitionDao;
import com.jsoj.app.jsoj.domain.Competition;
import com.jsoj.app.jsoj.serive.CompetitionService;
import com.jsoj.app.jsoj.vo.Compedetail;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class CompetitionServiceImpl implements CompetitionService {

    @Autowired
    private CompetitionDao competitionDao;


    @Override
    public int saveCompetition(Competition competition) {
        return competitionDao.saveCompetition(competition);
    }

    @Override
    public List<Compedetail> getCompetition(int id) {
        return competitionDao.getCompetition(id);
    }


}
