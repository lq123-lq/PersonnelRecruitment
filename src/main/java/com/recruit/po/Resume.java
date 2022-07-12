package com.recruit.po;

import java.sql.Timestamp;

public class Resume {
	private int id;
	private int userId;
	private String married;
	private String bred;
	private String hobby;//Text
	private int jobId;
	private String collegeName;
	private String jobName;
	private String professionQualify;//Text 职业资格
	private String jobTitle;//Text    职称
	private String eduBackground;//Text 教育背景
	private String experiences;//Text   工作/实习经历
	private String scientificResearch;//Text  科研情况
	private String awards;//Text    获奖情况
	private String skillCertificate;//Text  技能证书
	private int resumeStatus;//投递状态
	private int interviewStatus;//面试状态
	private String status1;//应聘整体进度
	private Timestamp createTime;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getMarried() {
		return married;
	}
	public void setMarried(String married) {
		this.married = married;
	}
	public String getBred() {
		return bred;
	}
	public void setBred(String bred) {
		this.bred = bred;
	}
	public String getHobby() {
		return hobby;
	}
	public void setHobby(String hobby) {
		this.hobby = hobby;
	}
	public int getJobId() {
		return jobId;
	}
	public void setJobId(int jobId) {
		this.jobId = jobId;
	}
	public String getCollegeName() {
		return collegeName;
	}
	public void setCollegeName(String collegeName) {
		this.collegeName = collegeName;
	}
	public String getJobName() {
		return jobName;
	}
	public void setJobName(String jobName) {
		this.jobName = jobName;
	}
	public String getProfessionQualify() {
		return professionQualify;
	}
	public void setProfessionQualify(String professionQualify) {
		this.professionQualify = professionQualify;
	}
	public String getJobTitle() {
		return jobTitle;
	}
	public void setJobTitle(String jobTitle) {
		this.jobTitle = jobTitle;
	}
	public String getEduBackground() {
		return eduBackground;
	}
	public void setEduBackground(String eduBackground) {
		this.eduBackground = eduBackground;
	}
	public String getExperiences() {
		return experiences;
	}
	public void setExperiences(String experiences) {
		this.experiences = experiences;
	}
	public String getScientificResearch() {
		return scientificResearch;
	}
	public void setScientificResearch(String scientificResearch) {
		this.scientificResearch = scientificResearch;
	}
	public String getAwards() {
		return awards;
	}
	public void setAwards(String awards) {
		this.awards = awards;
	}
	public String getSkillCertificate() {
		return skillCertificate;
	}
	public void setSkillCertificate(String skillCertificate) {
		this.skillCertificate = skillCertificate;
	}
	public int getResumeStatus() {
		return resumeStatus;
	}
	public void setResumeStatus(int resumeStatus) {
		this.resumeStatus = resumeStatus;
	}
	public int getInterviewStatus() {
		return interviewStatus;
	}
	public void setInterviewStatus(int interviewStatus) {
		this.interviewStatus = interviewStatus;
	}
	public String getStatus1() {
		return status1;
	}
	public void setStatus1(String status1) {
		this.status1 = status1;
	}
	public Timestamp getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Timestamp createTime) {
		this.createTime = createTime;
	}
	@Override
	public String toString() {
		return "Resume [id=" + id + ", userId=" + userId + ", married=" + married + ", bred=" + bred + ", hobby="
				+ hobby + ", jobId=" + jobId + ", collegeName=" + collegeName + ", jobName=" + jobName
				+ ", professionQualify=" + professionQualify + ", jobTitle=" + jobTitle + ", eduBackground="
				+ eduBackground + ", experiences=" + experiences + ", scientificResearch=" + scientificResearch
				+ ", awards=" + awards + ", skillCertificate=" + skillCertificate + ", resumeStatus=" + resumeStatus
				+ ", interviewStatus=" + interviewStatus + ", status1=" + status1 + ", createTime=" + createTime + "]";
	}
	

}
