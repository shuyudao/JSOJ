package com.jsoj.app.jsoj.serive;

import com.jsoj.app.jsoj.domain.Compercord;

import java.util.List;

public interface CompercordService {

    int saveCompercord(Compercord compercord);

    List<Compercord> getCompercord(int id);

}
