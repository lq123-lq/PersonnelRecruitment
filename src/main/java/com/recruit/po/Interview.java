package com.recruit.po;

import java.sql.Date;

public class Interview {
	private int interviewId;
	private String interviewTitle;
	private String interviewInfo;
	private Date interviewTime;
	private String interviewAddr;
	private String staffName;
	private String sTel;
	public int getInterviewId() {
		return interviewId;
	}
	public void setInterviewId(int interviewId) {
		this.interviewId = interviewId;
	}
	public String getInterviewTitle() {
		return interviewTitle;
	}
	public void setInterviewTitle(String interviewTitle) {
		this.interviewTitle = interviewTitle;
	}
//	public Text getInterviewInfo() {
//		return interviewInfo;
//	}
//	public void setInterviewInfo(Text interviewInfo) {
//		this.interviewInfo = interviewInfo;
//	}
	public Date getInterviewTime() {
		return interviewTime;
	}
	public String getInterviewInfo() {
		return interviewInfo;
	}
	public void setInterviewInfo(String interviewInfo) {
		this.interviewInfo = interviewInfo;
	}
	public void setInterviewTime(Date interviewTime) {
		this.interviewTime = interviewTime;
	}
	public String getInterviewAddr() {
		return interviewAddr;
	}
	public void setInterviewAddr(String interviewAddr) {
		this.interviewAddr = interviewAddr;
	}
	public String getStaffName() {
		return staffName;
	}
	public void setStaffName(String staffName) {
		this.staffName = staffName;
	}
	public String getsTel() {
		return sTel;
	}
	public void setsTel(String sTel) {
		this.sTel = sTel;
	}
	@Override
	public String toString() {
		return "Interview [interviewId=" + interviewId + ", interviewTitle=" + interviewTitle + ", interviewInfo="
				+ interviewInfo + ", interviewTime=" + interviewTime + ", interviewAddr=" + interviewAddr
				+ ", staffName=" + staffName + ", sTel=" + sTel + "]";
	}
	

}
