package com.jsoj.app.jsoj.dao;

import com.jsoj.app.jsoj.domain.User;
import com.jsoj.app.jsoj.vo.UserRank;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Caching;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserDao {

    User getUserById(int id);

    User getUserByUserName(String username);

    int regNewUser(User user);

    //更新数据 ->> 清除缓存
    @Caching(evict = {
            @CacheEvict(value = "User", key = "#user.id"),
            @CacheEvict(value = "User", key = "#user.username")
    })
    void updateUser(User user);

    User getUser(String username,String password);

    int getUserRank(int id);

    List<UserRank> getUserRankList();
}
