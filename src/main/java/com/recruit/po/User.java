package com.recruit.po;

import java.sql.Timestamp;

public class User{
	private int id;
	private String usercode;
	private String username;
	private String password;
	private  String salt;           //随机验证码，与密码配合使用
	private String tel;
	private String email;
	private int status;        //0-未激活; 1-已激活;
	private String activationCode;  //激活码
	private String headerUrl;      //头像
	private Timestamp createTime;
	private int role;          //0-普通用户; 1-学院管理员; 2-人事处管理员;3-超级管理员

	private String nation;
	private String sex;
	private int age;
	private String political;
	private String experience;
	private String degree;
	private String major;
	private String school;
	private String address;
	private String unemployed;  //是否待业
	private int resumeStatus;


	public int getResumeStatus() {
		return resumeStatus;
	}

	public void setResumeStatus(int resumeStatus) {
		this.resumeStatus = resumeStatus;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUsercode() {
		return usercode;
	}

	public void setUsercode(String usercode) {
		this.usercode = usercode;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getExperience() {
		return experience;
	}

	public void setExperience(String experience) {
		this.experience = experience;
	}
	
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getSalt() {
		return salt;
	}

	public void setSalt(String salt) {
		this.salt = salt;
	}

	public String getNation() {
		return nation;
	}

	public void setNation(String nation) {
		this.nation = nation;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getPolitical() {
		return political;
	}

	public void setPolitical(String political) {
		this.political = political;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getDegree() {
		return degree;
	}

	public void setDegree(String degree) {
		this.degree = degree;
	}

	public String getMajor() {
		return major;
	}

	public void setMajor(String major) {
		this.major = major;
	}

	public String getSchool() {
		return school;
	}

	public void setSchool(String school) {
		this.school = school;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getUnemployed() {
		return unemployed;
	}

	public void setUnemployed(String unemployed) {
		this.unemployed = unemployed;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public String getActivationCode() {
		return activationCode;
	}

	public void setActivationCode(String activationCode) {
		this.activationCode = activationCode;
	}

	public String getHeaderUrl() {
		return headerUrl;
	}

	public void setHeaderUrl(String headerUrl) {
		this.headerUrl = headerUrl;
	}

	public Timestamp getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Timestamp createTime) {
		this.createTime = createTime;
	}

	public int getRole() {
		return role;
	}

	public void setRole(int role) {
		this.role = role;
	}
	
	@Override
	public String toString() {
		return "User [id=" + id + ", usercode=" + usercode + ", username=" + username + ", password=" + password
				+ ", salt=" + salt + ", tel=" + tel + ", email=" + email + ", status=" + status + ", activationCode="
				+ activationCode + ", headerUrl=" + headerUrl + ", createTime=" + createTime + ", role=" + role
				+ ", nation=" + nation + ", sex=" + sex + ", age=" + age + ", political=" + political + ", experience="
				+ experience + ", degree=" + degree + ", major=" + major + ", school=" + school + ", address=" + address
				+ ", unemployed=" + unemployed + ", resumeStatus=" + resumeStatus + "]";
	}
	
}
