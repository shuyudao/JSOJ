package com.jsoj.app.jsoj.serive;

import com.jsoj.app.jsoj.domain.User;
import com.jsoj.app.jsoj.vo.UserRank;

import java.util.List;

public interface UserService {

    User getUserById(int id);

    User getUserByUserName(String username);

    int regNewUser(User user);

    User getUser(String username,String password);

    int getUserRank(int id);

    List<UserRank> getUserRankList();
}
