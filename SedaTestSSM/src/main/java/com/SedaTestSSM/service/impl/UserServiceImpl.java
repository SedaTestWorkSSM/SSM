package  com.SedaTestSSM.service.impl;  
  
import java.util.List;

import com.SedaTestSSM.proj.User;  
import com.SedaTestSSM.service.IUserService;  
  




import javax.annotation.Resource;  

import org.springframework.stereotype.Service;  
  



import  com.SedaTestSSM.dao.UserMapper;  
  
@Service("userService")  
public class UserServiceImpl implements IUserService {  
      
    @Resource  
    private UserMapper userMapper;  
      
    public User getUserById(int userId) {  
        return this.userMapper.selectByPrimaryKey(userId);  
    }  
 
    public List<User> findAll() {
		// TODO Auto-generated method stub
		return this.userMapper.findAll();
	}

	public User login(String userName, String password) {
		// TODO Auto-generated method stub
		return this.userMapper.login(userName, password);
	}
}  