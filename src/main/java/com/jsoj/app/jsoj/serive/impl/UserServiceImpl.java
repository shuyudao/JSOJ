package com.jsoj.app.jsoj.serive.impl;

import com.jsoj.app.jsoj.dao.RecordDao;
import com.jsoj.app.jsoj.dao.UserDao;
import com.jsoj.app.jsoj.domain.Record;
import com.jsoj.app.jsoj.domain.User;
import com.jsoj.app.jsoj.serive.UserService;
import com.jsoj.app.jsoj.vo.UserRank;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheConfig;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.cache.annotation.Caching;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@CacheConfig(cacheNames = "UserCache")
@Transactional
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;

    @Autowired
    private RecordDao recordDao;

    @Override
    @Cacheable(value = "User",key = "#id")
    public User getUserById(int id) {
        User user = userDao.getUserById(id);
        user.setPassword(null);
        return user;
    }

    @Override
    @Cacheable(value = "User",key = "#username")
    public User getUserByUserName(String username) {
        return userDao.getUserByUserName(username);
    }

    @Override
    public int regNewUser(User user) {
        return userDao.regNewUser(user);
    }

    @Override
    public User getUser(String username, String password) {
        return userDao.getUser(username,password);
    }

    @Override
    public int getUserRank(int id) {
        return userDao.getUserRank(id);
    }

    @Override
    public List<UserRank> getUserRankList() {
        List<UserRank> userList = userDao.getUserRankList();

        for(UserRank user:userList){
            user.setRecordCount(recordDao.getRecordCountByUserId(user.getId()));
        }

        return userList;


    }

    @Override
    @Caching(evict = {
            @CacheEvict(value = "User", key = "#user.id"),
            @CacheEvict(value = "User", key = "#user.username")
    })
    public void updateUserByUser(User user) {
        userDao.updateUserByUser(user);
    }


}
