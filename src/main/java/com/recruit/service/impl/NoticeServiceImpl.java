package com.recruit.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.recruit.dao.NoticeDao;
import com.recruit.po.Notice;
import com.recruit.service.NoticeService;

@Service
@Transactional
public class NoticeServiceImpl implements NoticeService {
	
	@Autowired
	private NoticeDao noticeDao;

	@Override
	public void addNotice(Notice notice) {
		notice.setStatus(1);
		notice.setCreateTime(new java.sql.Timestamp(new Date().getTime()));
		noticeDao.addNotice(notice);
	}

	@Override
	public boolean deleteNotice(int id) {
		return noticeDao.deleteNotice(id);
	}

	@Override
	public Notice findNoticeById(int id) {
		return noticeDao.findNoticeById(id);
	}

	@Override
	public boolean updateNotice(Notice notice) {
		notice.setCreateTime(new java.sql.Timestamp(new Date().getTime()));
		return noticeDao.updateNotice(notice);
	}

	@Override
	public List<Notice> findNoticeByTitle(String noticeTitle) {
		List<Notice> findNoticeByTitle = noticeDao.findNoticeByTitle(noticeTitle);
		return findNoticeByTitle;
	}

	@Override
	public List<Notice> displayNoticeTitle() {
		return noticeDao.displayNoticeTitle();
	}
	
	@Override
	public List<Notice> findAllNotice() {
		List<Notice> findAllNotice = noticeDao.findAllNotice();
		return findAllNotice;
	}

}
