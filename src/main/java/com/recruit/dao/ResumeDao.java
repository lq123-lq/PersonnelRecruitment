package com.recruit.dao;

import java.util.List;
import java.util.Map;

import com.recruit.po.Resume;

public interface ResumeDao {
	
	//添加
	boolean addResume(Resume resume);
	
	Resume findResumeById(Integer id);
	boolean updateResume(Resume resume);
	
	boolean updateResumeStatus(Resume resume);     //修改状态，是否投递
	boolean updateInterviewStatus(Resume resume);  //修改面试状态
	boolean updateStatus(Resume resume);           //修改整体应聘状态
	
	List<Map<Object,Object>> findCondition_cs();   //筛选简历，查找要筛选的字段
	
	String findUserEmail(Integer id);  //获取用户邮箱
	String findJobName(Integer id);  //获取岗位名
	
	//删除
	boolean deleteResume(int id);
	
	//查询
	List<Map<Object,Object>> viewResumeById(Integer id);  //多表查询，显示全部简历信息,根据简历ID
	List<Map<Object,Object>> findResumeByUser(Integer id);  //多表查询，查询同一用户的不同份简历
	List<Map<Object,Object>> findResumeByJobName(String jobName);  //通过岗位名称查看简历
	
	List<Map<Object,Object>> findApplyUserByJobName(String jobName);  //搜索框模糊查询
	
	List<Resume> findResume();
	
	List<Map<Object,Object>> findAllResume();
	List<Map<Object,Object>> findAllResume_cs();
	List<Map<Object,Object>> findAllResume_jl();

}
