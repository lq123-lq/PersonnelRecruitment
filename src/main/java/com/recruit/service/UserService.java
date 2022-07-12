package com.recruit.service;

import java.util.List;
import java.util.Map;

import com.recruit.po.User;

public interface UserService {
	
	User login(String usercode,String password,int expiredSeconds);
	Map<String,Object> register(User user);
	User findUserByactivationCode(String activationCode); //激活码
	boolean updateStatus(User user);
	
	User findUserById(Integer id);
	boolean updateUser(User user);
	boolean updateUser_m(User user);
	
	boolean changePassword(User user);
	boolean updateHeaderUrl(Integer id, String headerUrl);
	
	boolean updateResumeStatus(Integer id);
	
	List<User> findAllUser();
	
	boolean deleteUser(int id);
	
	String findUserEmailTojl(Integer id); //获取用户邮箱，发动邮件
	
	User selectByCode(String usercode);
	 
}
