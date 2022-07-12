package com.recruit.service;

import java.util.List;
import java.util.Map;

import com.recruit.po.Resume;


public interface ResumeService {
	
	//添加
	boolean addResume(Resume resume);
	
	//修改
	Resume findResumeById(Integer id);
	boolean updateResume(Resume resume);
	
	boolean sendResume(Resume resume);  //投递简历
	boolean modifyInterviewStatus(Resume resume);  //发送面试邀请，状态改为1
	boolean modifyStatus_cs0(Resume resume);    //初审不通过，状态改为cs_0
	boolean modifyStatus_cs1(Resume resume);    //初审不通过，状态改为cs_0
	boolean modifyStatus_jl0(Resume resume);    //简历不通过，状态改为jl_0
	boolean modifyStatus_jl1(Resume resume);    //简历通过，状态改为jl_1
	boolean modifyStatus_ms0(Resume resume);    //面试不通过，状态改为ms_0
	boolean modifyStatus_ms1(Resume resume);    //面试通过，状态改为ms_1
	
	//删除
	boolean deleteResume(Integer id);
	
	//查看整体简历
	List<Map<Object,Object>> viewResumeById(Integer id);
	
	List<Map<Object,Object>> findResumeByUser(Integer id);  //查询用户的简历
	
	String findUserEmail(Integer id);
	String findJobName(Integer id);
	
	//查询
	List<Map<Object,Object>> findApplyUserByJobName(String jobName);  //搜索框模糊查询
	
	List<Resume> findResume();
	
	List<Map<Object,Object>> findCondition_cs();   //筛选简历，查找要筛选的字段
	
	List<Map<Object,Object>> findAllResume();
	List<Map<Object,Object>> findAllResume_cs();
	List<Map<Object,Object>> findAllResume_jl();

}
