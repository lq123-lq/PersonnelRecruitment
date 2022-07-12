package com.recruit.service.impl;

import java.util.Date;
import java.util.List;
import java.util.Map;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.recruit.dao.ResumeDao;
import com.recruit.po.Resume;
import com.recruit.service.ResumeService;

@Service
@Transactional
public class ResumeServiceImpl implements ResumeService {
	
	@Autowired
	private ResumeDao resumeDao;
	
	@Override
	public boolean addResume(Resume resume) {
		resume.setResumeStatus(0);
		resume.setInterviewStatus(0);//面试状态：未开始
		resume.setStatus1("cs_1"); //默认可以通过初审
		resume.setCreateTime(new java.sql.Timestamp(new Date().getTime()));
		return resumeDao.addResume(resume);
	}

	@Override
	public Resume findResumeById(Integer id) {
		return resumeDao.findResumeById(id);
	}

	@Override
	public boolean updateResume(Resume resume) {
		return resumeDao.updateResume(resume);
	}

	@Override
	public boolean deleteResume(Integer id) {
		return resumeDao.deleteResume(id);
	}

	@Override
	public List<Map<Object,Object>> viewResumeById(Integer id) {
		return resumeDao.viewResumeById(id);
	}

	@Override
	public boolean sendResume(Resume resume) {
		resume.setResumeStatus(1);
		return resumeDao.updateResumeStatus(resume);
	}

	@Override
	public boolean modifyInterviewStatus(Resume resume) {
		resume.setInterviewStatus(1);
		return resumeDao.updateInterviewStatus(resume);
	}

	@Override
	public boolean modifyStatus_cs0(Resume resume) {
		resume.setStatus1("cs_0");
		return resumeDao.updateStatus(resume);
	}
	
	@Override
	public boolean modifyStatus_cs1(Resume resume) {
		resume.setStatus1("cs_1");
		return resumeDao.updateStatus(resume);
	}

	@Override
	public boolean modifyStatus_jl0(Resume resume) {
		resume.setStatus1("jl_0");
		return resumeDao.updateStatus(resume);
	}

	@Override
	public boolean modifyStatus_jl1(Resume resume) {
		resume.setStatus1("jl_1");
		return resumeDao.updateStatus(resume);
	}

	@Override
	public boolean modifyStatus_ms0(Resume resume) {
		resume.setStatus1("ms_0");
		return resumeDao.updateStatus(resume);
	}

	@Override
	public boolean modifyStatus_ms1(Resume resume) {
		resume.setStatus1("ms_1");
		return resumeDao.updateStatus(resume);
	}

	@Override
	public List<Resume> findResume() {
		return resumeDao.findResume();
	}

	@Override
	public List<Map<Object, Object>> findAllResume() {
		return resumeDao.findAllResume();
	}

	@Override
	public List<Map<Object, Object>> findAllResume_cs() {
		return resumeDao.findAllResume_cs();
	}

	@Override
	public List<Map<Object, Object>> findAllResume_jl() {
		return resumeDao.findAllResume_jl();
	}

	@Override
	public List<Map<Object, Object>> findResumeByUser(Integer id) {
		return resumeDao.findResumeByUser(id);
	}

	@Override
	public List<Map<Object, Object>> findCondition_cs() {
		return resumeDao.findCondition_cs();
	}

	@Override
	public String findUserEmail(Integer id) {
		return resumeDao.findUserEmail(id);
	}

	@Override
	public String findJobName(Integer id) {
		return resumeDao.findJobName(id);
	}

	@Override
	public List<Map<Object,Object>> findApplyUserByJobName(String jobName) {
		return resumeDao.findApplyUserByJobName(jobName);
	}

}
