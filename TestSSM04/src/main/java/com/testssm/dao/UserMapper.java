package com.testssm.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.testssm.proj.User;

public interface UserMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);
    
    List<User> findAll();

    User login(@Param("userName") String userName,@Param("password") String password);
 
}