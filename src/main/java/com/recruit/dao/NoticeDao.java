package com.recruit.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.recruit.po.Notice;

public interface NoticeDao {
	
	//添加
	boolean addNotice(Notice notice);
	
	//删除
	boolean deleteNotice(int id);
	
	//修改
	Notice findNoticeById(int id);
	boolean updateNotice(Notice notice);
	
	//查询
	List<Notice> findNoticeByTitle(@Param("title") String title);
	List<Notice> displayNoticeTitle();
	List<Notice> findAllNotice();
}
