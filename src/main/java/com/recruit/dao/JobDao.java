package com.recruit.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.recruit.po.Job;

public interface JobDao {
	
	//添加
	boolean addJob(Job job);
	boolean addRequire(Job job);
	
	//删除
	boolean deleteJob(int id);
	
	//修改
	Job findJobById(int id);
	boolean updateJob(Job job);
	boolean updateRequire(Job job);
	
	//查询
	List<Job> findJobByName(@Param("jobName") String jobName);
	List<Job> findJobByTitle(@Param("title") String title);
	List<Job> displayJobTitle();
	List<Job> findAllJob();
	List<Job> findAllRequire();
	
	List<Job> findJobName();   //查找招聘岗位，用于邮件

}
