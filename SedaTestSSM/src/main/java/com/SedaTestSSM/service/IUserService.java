package com.SedaTestSSM.service;  
import java.util.List;

import com.SedaTestSSM.proj.User;  
  
public interface IUserService {  
    public User getUserById(int userId);  
    public List<User> findAll();
    public User login(String userName,String password);
}  