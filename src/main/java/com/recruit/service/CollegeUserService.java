package com.recruit.service;

import java.util.List;
import java.util.Map;


import com.recruit.po.CollegeUser;

public interface CollegeUserService {

CollegeUser login(String staffCode,String password,int role);
	
	//添加
	Map<String, Object> addManager(CollegeUser collegeUser);
	
	//修改
	CollegeUser findCollegeUserById(Integer id);
	boolean modifyCollegeUser(CollegeUser collegeUser);
	boolean modifyCollegeUser_m(CollegeUser collegeUser);
	
	boolean changePassword(CollegeUser collegeUser);
	
	//修改权限
	boolean updateCollegeUserRole(CollegeUser collegeUser);
	boolean modifyCollegeUserStatus_0(CollegeUser collegeUser); //禁用
	boolean modifyCollegeUserStatus_1(CollegeUser collegeUser); //启用
	
	//删除
	boolean deleteCollegeUser(int id);
	
	//查询
	List<CollegeUser> findCollegeUserByName(String staffName);
	CollegeUser findCollegeUserByCode(String staffCode);
	CollegeUser findCollegeUserByCname(String collegeName);
	List<CollegeUser> findAllCollegeUser() ;

}
