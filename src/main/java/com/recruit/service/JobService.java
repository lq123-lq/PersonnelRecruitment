package com.recruit.service;

import java.util.List;

import com.recruit.po.Job;

public interface JobService {
	
	//添加
	void addJob(Job job);   //添加招聘信息（人事处）
	void addRequire(Job job);  //添加用人需求（学院）
	
	//删除
	boolean deleteJob(int id);
	
	//修改
	Job findJobById(int id);
	boolean updateJob(Job job);
	boolean updateRequire(Job job);
	
	//查询
	List<Job> findJobByName(String jobName);
	List<Job> findJobByTitle(String title);
	List<Job> displayJobTitle();
	List<Job> findAllJob() ;
	List<Job> findAllRequire();
	
	List<Job> findJobName();//查找招聘岗位，用于邮件

}
