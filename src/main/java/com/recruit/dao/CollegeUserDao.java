package com.recruit.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.recruit.po.CollegeUser;

public interface CollegeUserDao {
	//登录
	CollegeUser findCollegeUser(@Param("staffCode") String staffCode,
			@Param("password") String password,@Param("role") int role);
	//添加
	boolean insertCollegeUser(CollegeUser collegeUser);
	
	//修改
	CollegeUser findCollegeUserById(Integer id);
	boolean updateCollegeUser(CollegeUser collegeUser);
	boolean updateCollegeUser_m(CollegeUser collegeUser);
	boolean updateCollegeUserRole(CollegeUser collegeUser);
	boolean updateCollegeUserStatus(CollegeUser collegeUser);
	
	boolean updatePassword_1(CollegeUser collegeUser);
	
	//删除
	boolean deleteCollegeUser(int id);
	
	//查询
	List<CollegeUser> findCollegeUserByName(String staffName);
	CollegeUser findCollegeUserByCode(String staffCode);
	CollegeUser findCollegeUserByEamil(String email);
	CollegeUser findCollegeUserByCname(String collegeName);
	List<CollegeUser> findAllCollegeUser() ;

}
