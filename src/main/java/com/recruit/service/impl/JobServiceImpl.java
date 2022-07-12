package com.recruit.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.recruit.dao.JobDao;
import com.recruit.po.Job;
import com.recruit.service.JobService;

@Service
@Transactional
public class JobServiceImpl implements JobService {
	
	@Autowired
	private JobDao jobDao;

	@Override
	public void addJob(Job job) {
		job.setStatus(1);
		job.setCreateTime(new java.sql.Timestamp(new Date().getTime()));
		jobDao.addJob(job);
	}

	@Override
	public void addRequire(Job job) {
		job.setStatus(2);
		job.setCreateTime(new java.sql.Timestamp(new Date().getTime()));
		jobDao.addRequire(job);
	}
	
	@Override
	public boolean deleteJob(int id) {
		return jobDao.deleteJob(id);
	}

	@Override
	public Job findJobById(int id) {
		return jobDao.findJobById(id);
	}

	@Override
	public boolean updateJob(Job job) {
		job.setCreateTime(new java.sql.Timestamp(new Date().getTime()));
		return jobDao.updateJob(job);
	}

	@Override
	public boolean updateRequire(Job job) {
		job.setCreateTime(new java.sql.Timestamp(new Date().getTime()));
		return jobDao.updateRequire(job);
	}
	
	@Override
	public List<Job> findJobByName(String jobName) {
		List<Job> findJobByName = jobDao.findJobByName(jobName);
		return findJobByName;
	}

	@Override
	public List<Job> findJobByTitle(String title) {
		List<Job> findJobByTitle = jobDao.findJobByTitle(title);
		return findJobByTitle;
	}

	@Override
	public List<Job> displayJobTitle() {
		return jobDao.displayJobTitle();
	}
	
	@Override
	public List<Job> findAllJob() {
		List<Job> jobs = jobDao.findAllJob();
		return jobs;
	}

	@Override
	public List<Job> findJobName() {
		List<Job> jobs = jobDao.findJobName();
		return jobs;
	}

	@Override
	public List<Job> findAllRequire() {
		List<Job> jobs = jobDao.findAllRequire();
		return jobs;
	}

}
