package com.recruit.service;

import java.util.List;

import com.recruit.po.Notice;

public interface NoticeService {
	
	//添加
	void addNotice(Notice notice);
	
	//删除
	boolean deleteNotice(int id);
	
	//修改
	Notice findNoticeById(int id);
	boolean updateNotice(Notice notice);
	
	//查询
	public List<Notice> findNoticeByTitle(String title);
	public List<Notice> displayNoticeTitle();
	public List<Notice> findAllNotice();

}
