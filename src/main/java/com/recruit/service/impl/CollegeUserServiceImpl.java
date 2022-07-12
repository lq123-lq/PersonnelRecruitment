package com.recruit.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.recruit.dao.CollegeUserDao;
import com.recruit.po.CollegeUser;
import com.recruit.service.CollegeUserService;
import com.recruit.util.RecruitUtil;

@Service
@Transactional
public class CollegeUserServiceImpl implements CollegeUserService {
	
	@Autowired
	private CollegeUserDao collegeUserDao;

	@Override
	public CollegeUser login(String staffCode, String password, int role) {
		Map<String,Object> map = new HashMap<String, Object>();

        CollegeUser collegeUser = collegeUserDao.findCollegeUserByCode(staffCode);
        if(collegeUser == null){
        	map.put("msg","该账号不存在！");
        }

        if(collegeUser.getStatus() == 0){
        	map.put("msg","该账号为禁用状态，请联系系统管理员！");
        }

        password = RecruitUtil.md5(password + collegeUser.getSalt());
 
        collegeUser = collegeUserDao.findCollegeUser(staffCode, password, role);
		return collegeUser;
	}
	
	@Override
	public Map<String ,Object> addManager(CollegeUser collegeUser) {
		Map<String,Object> map = new HashMap<>();
		if (collegeUser == null){
			throw new IllegalArgumentException("参数不能为空！");
		}
		if (StringUtils.isBlank(collegeUser.getStaffCode())){
			map.put("staffCodeMsg","账号不能为空！");
		}
		if(StringUtils.isBlank(collegeUser.getPassword())){
			map.put("passwordMsg","密码不能为空！");
			return map;
		}
		
		CollegeUser u = collegeUserDao.findCollegeUserByCode(collegeUser.getStaffCode());
		if(u != null){
			map.put("staffCodeMsg","该账号已存在！");
			return map;
		}
		
        collegeUser.setSalt(RecruitUtil.generateUUID().substring(0,5));
        collegeUser.setPassword(RecruitUtil.md5(collegeUser.getPassword()+collegeUser.getSalt()));
        collegeUser.setStatus(1);//账号启用状态
		collegeUserDao.insertCollegeUser(collegeUser);
		
		return map ;
	}

	@Override
	public CollegeUser findCollegeUserById(Integer id) {
		return collegeUserDao.findCollegeUserById(id);
	}

	@Override
	public boolean modifyCollegeUser(CollegeUser collegeUser) {
		return collegeUserDao.updateCollegeUser(collegeUser);
	}
	
	@Override
	public boolean modifyCollegeUser_m(CollegeUser collegeUser) {
		return collegeUserDao.updateCollegeUser_m(collegeUser);
	}

	@Override
	public boolean updateCollegeUserRole(CollegeUser collegeUser) {
		// TODO Auto-generated method stub
		return collegeUserDao.updateCollegeUserRole(collegeUser);
	}
	
	@Override
	public boolean modifyCollegeUserStatus_0(CollegeUser collegeUser) {
		collegeUser.setStatus(0);
		return collegeUserDao.updateCollegeUserStatus(collegeUser);
	}
	@Override
	public boolean modifyCollegeUserStatus_1(CollegeUser collegeUser) {
		collegeUser.setStatus(1);
		return collegeUserDao.updateCollegeUserStatus(collegeUser);
	}

	@Override
	public boolean deleteCollegeUser(int id) {
		// TODO Auto-generated method stub
		return collegeUserDao.deleteCollegeUser(id);
	}

	@Override
	public CollegeUser findCollegeUserByCode(String staffCode) {
		return collegeUserDao.findCollegeUserByCode(staffCode);
	}

	@Override
	public CollegeUser findCollegeUserByCname(String collegeName) {
		return collegeUserDao.findCollegeUserByCname(collegeName);
	}

	@Override
	public List<CollegeUser> findAllCollegeUser() {
		List<CollegeUser> findAllCollegeUser = collegeUserDao.findAllCollegeUser();
		return findAllCollegeUser;
	}

	@Override
	public boolean changePassword(CollegeUser collegeUser) {
		collegeUser.setSalt(RecruitUtil.generateUUID().substring(0,5));
        collegeUser.setPassword(RecruitUtil.md5(collegeUser.getPassword()+collegeUser.getSalt()));
		return collegeUserDao.updatePassword_1(collegeUser);
	}

	@Override
	public List<CollegeUser> findCollegeUserByName(String staffName) {
		return collegeUserDao.findCollegeUserByName(staffName);
	}

	

}
