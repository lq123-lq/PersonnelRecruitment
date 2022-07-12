package com.recruit.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.recruit.po.User;

public interface UserDao {

	//登录
	User findUser(@Param("usercode") String usercode,
			@Param("password") String password, int expiredSeconds);
	
	boolean insertUser(User user);
	User findUserByactivationCode(String activationCode); //激活码
	
	User findUserById(Integer id);
	
	boolean updateUser(User user);
	boolean updateUser_m(User user);
	boolean updateStatus(User user);
	
	boolean updateResumeStatus(Integer id);
	boolean updatePassword(User user);
	
	User selectByCode(String usercode);
	User selectByEmail(String email);

	List<User> findAllUser();
	
	boolean deleteUser(int id);
	
	String findUserEmailTojl(Integer id); //获取用户邮箱，发动邮件

	boolean updateHeader(@Param("id") Integer id,@Param("headerUrl") String headerUrl);
}
