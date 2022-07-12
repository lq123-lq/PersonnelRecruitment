package com.recruit.service.impl;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.mail.MessagingException;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.servlet.ModelAndView;

import com.recruit.dao.UserDao;
import com.recruit.po.User;
import com.recruit.service.UserService;
import com.recruit.util.MailUtil;
import com.recruit.util.RecruitUtil;

@Service
@Transactional
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserDao userDao;

	@Override
	public Map<String,Object> register(User user) {
		Map<String,Object> map = new HashMap<>();
		
		//验证账号
		User u = userDao.selectByCode(user.getUsercode());
		if(u != null){
			map.put("usercodeMsg","该账号已存在！");
			return map;
		}
		//验证邮箱
		u = userDao.selectByEmail(user.getEmail());
		if(u != null){
			map.put("emailMsg","该邮箱已被注册！");
			return map;
		}
		//向user表插入一条数据
		user.setSalt(RecruitUtil.generateUUID().substring(0,5));
		user.setPassword(RecruitUtil.md5(user.getPassword()+user.getSalt()));
		user.setHeaderUrl(String.format("http://images.nowcoder.com/head/%dt.png",new Random().nextInt(1000)));
		user.setStatus(0);//状态未激活
		user.setActivationCode(RecruitUtil.md5(RecruitUtil.generateUUID().substring(0,6)));
		user.setRole(0);//默认普通用户
		user.setResumeStatus(0);
		user.setCreateTime(new java.sql.Timestamp(new Date().getTime()));
		userDao.insertUser(user);
		
		try {
			MailUtil.sendMail(user.getEmail(),user.getActivationCode());
		} catch (MessagingException e) {
			e.printStackTrace();
		}

		return map;
	}
	
	public static void jihuo(User u) {
		try {
			MailUtil.sendMail(u.getEmail(),u.getActivationCode());
		} catch (MessagingException e) {
			e.printStackTrace();
		}
	}
	
	@Override
	public User login(String usercode, String password, int expiredSeconds) {
		ModelAndView mv = new ModelAndView();
        //空值处理
        if(StringUtils.isBlank(usercode)){
        	mv.addObject("usercodeMsg","账号不能为空！");
        }
        if(StringUtils.isBlank(password)){
        	mv.addObject("passwordMsg","密码不能为空！");
        }

        //验证账号
        User user = userDao.selectByCode(usercode);
        if(user == null){
        	mv.addObject("usercodeMsg","该账号不存在！");
        }

        //验证状态
        if(user.getStatus() == 0){
        	mv.addObject("usercodeMsg","该账号未激活！");
        }

        //验证密码
        password = RecruitUtil.md5(password + user.getSalt());
        if(!user.getPassword().equals(password)){
        	mv.addObject("passwordMsg","密码不正确！");
        }
 
        user = userDao.findUser(usercode, password, expiredSeconds);
		return user;
	}
	
	@Override
	public User findUserByactivationCode(String activationCode) {
		return userDao.findUserByactivationCode(activationCode);
	}
	
	@Override
	public User findUserById(Integer id) {
		return userDao.findUserById(id);
	}

	@Override
	public List<User> findAllUser() {
		return userDao.findAllUser();
	}

	@Override
	public boolean updateUser(User user) {
		return userDao.updateUser(user);
	}

	@Override
	public boolean updateUser_m(User user) {
		return userDao.updateUser_m(user);
	}

	@Override
	public boolean updateStatus(User user) {
		return userDao.updateStatus(user);
	}

	@Override
	public boolean deleteUser(int id) {
		return userDao.deleteUser(id);
	}

	@Override
	public boolean changePassword(User user) {
		user.setSalt(RecruitUtil.generateUUID().substring(0,5));
		user.setPassword(RecruitUtil.md5(user.getPassword() + user.getSalt()));
		return userDao.updatePassword(user);
	}

	@Override
	public String findUserEmailTojl(Integer id) {
		return userDao.findUserEmailTojl(id);
	}

	@Override
	public boolean updateResumeStatus(Integer id) {
		return userDao.updateResumeStatus(id);
	}

	@Override
	public boolean updateHeaderUrl(Integer id, String headerUrl) {
		return userDao.updateHeader(id, headerUrl);
	}

	@Override
	public User selectByCode(String usercode) {
		return userDao.selectByCode(usercode);
	}


}
